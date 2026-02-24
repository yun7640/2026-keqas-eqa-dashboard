# 2026 KEQAS EQA Dashboard

2026년도 신빙도조사사업(KEQAS - Korea External Quality Assessment Service) 프로그램 현황을 시각화한 대화형 대시보드입니다.

## 개요

이 대시보드는 다음 정보를 제공합니다:
- **프로그램 통계**: 전체 신빙도조사 프로그램 현황
- **참여기관 정보**: 병원별, 기관 종별 참여 현황
- **검사항목 분석**: 다빈도 검체검사항목 현황
- **진료통계 매핑**: 건강보험행위 진료통계와 신빙도조사 항목 연동

## 기술 스택

- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Visualization**: Chart.js, 대화형 테이블
- **Data Format**: JSON

## 파일 구조

```
.
├── 2026_KEQAS_EQA_Dashboard.html    # 메인 대시보드 페이지
├── data/
│   ├── dashboard_data.json          # 대시보드 데이터
│   ├── dashboard_embed.json         # 임베드용 데이터
│   ├── guidebook_pages.json         # 가이드북 정보
│   ├── 2024_심평원_진료통계.csv    # 진료통계 데이터
│   └── ...
├── scripts/
│   ├── generate_dashboard.py        # 대시보드 생성 스크립트
│   └── build_dashboard_data.py      # 데이터 빌드 스크립트
└── README.md                        # 이 파일
```

## 사용 방법

### 1. 로컬에서 보기
브라우저에서 `2026_KEQAS_EQA_Dashboard.html` 파일을 직접 열면 됩니다.

### 2. 웹서버로 호스팅
```bash
# Python 3.x
python -m http.server 8000

# 또는 Node.js http-server
npx http-server
```

그 후 브라우저에서 `http://localhost:8000`으로 접속하면 됩니다.

### 3. GitHub Pages로 공개
이 저장소를 GitHub에 푸시한 후, 저장소 설정에서 GitHub Pages를 활성화하면 자동으로 웹에서 접근 가능합니다.

## 데이터 업데이트

`scripts/` 디렉토리의 Python 스크립트를 사용하여 데이터를 업데이트할 수 있습니다.

### 필수 패키지
```bash
pip install pandas openpyxl
```

### 실행 방법
```bash
python scripts/build_dashboard_data.py
python scripts/generate_dashboard.py
```

## 주요 기능

- 📊 **실시간 통계**: 신빙도조사 프로그램 통계 시각화
- 🏥 **기관별 분석**: 병원별 참여 현황 및 검사항목 추이
- 📈 **트렌드 분석**: 다빈도 검사항목 현황
- 🔍 **검색 기능**: 프로그램 및 기관 검색
- 📱 **반응형 디자인**: 모바일/태블릿/데스크톱 모두 지원

## 데이터 출처

- **신빙도조사사업 가이드북**: 2026년도 KEQAS 프로그램 공식 문서
- **진료통계**: 2024년 건강보험심사평가원 진료통계
- **검사항목 정보**: 대한진단검사정도관리협회

## 라이선스

이 프로젝트의 코드는 MIT 라이선스 하에 배포됩니다.
데이터는 관련 기관의 라이선스 정책을 따릅니다.

## 기여

버그 리포트나 개선 사항은 Issues를 통해 제보해주시기 바랍니다.

## 문의

대한진단검사정도관리협회 (KEQAS)
- 웹사이트: https://www.keqas.org/
- 이메일: 공식 문의 채널 참조

---

**Last Updated**: 2026년 2월
