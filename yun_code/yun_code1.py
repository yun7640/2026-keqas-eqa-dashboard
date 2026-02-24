import pandas as pd
import os

def extract_2023_diagnostic_master():
    """
    2023 건강보험 행위 목록표에서 제2장 제1절 검체 검사료 항목을 추출하여 엑셀로 저장하는 함수
    """
    # 1. 파일 경로 설정 (사용자의 파일명 기준)
    input_file = '2023_건강보험행위_목록표.xlsx - 제1편 제2부.csv'
    output_file = '2023_진단검사항목_최종추출.xlsx'
    
    if not os.path.exists(input_file):
        print(f"오류: '{input_file}' 파일을 찾을 수 없습니다. 파일명을 확인해 주세요.")
        return

    # 2. 데이터 로드 (UTF-8-SIG는 한글 깨짐 방지용)
    try:
        df = pd.read_csv(input_file, encoding='utf-8-sig')
    except UnicodeDecodeError:
        df = pd.read_csv(input_file, encoding='cp949')

    # 3. 검체검사 섹션 범위 자동 탐색
    # B0001 코드가 시작되는 시점부터 '제2절 병리 검사료'가 시작되기 전까지 추출
    start_row = 991  # B0001 진단검사의학 전문검증료 행
    
    # '제2절' 텍스트를 포함한 행 인덱스 찾기
    next_section_idx = df[df.apply(lambda x: x.astype(str).str.contains('제2절').any(), axis=1)].index
    # 991행 이후에 나타나는 첫 번째 '제2절' 위치를 종료 지점으로 설정
    end_row = next_section_idx[next_section_idx > start_row][0]

    specimen_section = df.iloc[start_row:end_row].copy()

    # 4. 데이터 정제 로직
    cleaned_rows = []
    current_category_no = "" # '나-0', '누-000' 등 분류번호 보관용
    
    for _, row in specimen_section.iterrows():
        # 컬럼 위치 매핑 (Unnamed 0: 분류번호, 1: 행위코드, 3: 행위명, 5: 점수)
        val_cat = str(row['Unnamed: 0']).strip()
        val_code = str(row['Unnamed: 1']).strip()
        val_name = str(row['Unnamed: 3']).strip()
        val_score = str(row['Unnamed: 5']).strip()
        
        # 분류번호 업데이트 (데이터가 있는 경우에만 갱신하여 아래 행들에 적용)
        if val_cat != 'nan' and val_cat != '':
            current_category_no = val_cat
            
        # 유효한 행위코드 조건: 5글자 이상이며 영문/숫자 조합인 경우 (주석 행 제외)
        if len(val_code) >= 5 and val_code[0].isalnum() and val_code != '코 드':
            cleaned_rows.append({
                '분류번호': current_category_no,
                '행위코드': val_code,
                '행위명': val_name.replace('\n', ' ').strip(), # 줄바꿈 제거 및 공백 정리
                '상대가치점수': val_score if val_score != 'nan' else '0'
            })

    # 5. 결과 저장
    result_df = pd.DataFrame(cleaned_rows)
    result_df.to_excel(output_file, index=False)
    
    print("-" * 50)
    print(f"추출이 완료되었습니다.")
    print(f"생성된 파일: {output_file}")
    print(f"추출된 항목 수: {len(result_df)}개")
    print("-" * 50)

if __name__ == "__main__":
    extract_2023_diagnostic_master()