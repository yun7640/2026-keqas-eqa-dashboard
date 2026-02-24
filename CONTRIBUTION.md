# 기여 가이드 (CONTRIBUTING)

이 프로젝트에 기여하고 싶으신 분들을 위한 가이드입니다.

## 어떻게 기여할 수 있을까요?

### 1. 버그 리포트

버그를 발견했다면 GitHub Issues에서 리포트해주세요.

**리포트 시 포함할 사항:**
- 버그 설명
- 발생 환경 (브라우저, OS)
- 재현 방법
- 스크린샷 (가능하면)
- 예상 동작 vs 실제 동작

### 2. 기능 제안

새로운 기능이나 개선 사항을 제안하고 싶다면:

1. GitHub Issues에서 Feature Request를 생성합니다.
2. 제안의 목적과 이점을 설명합니다.
3. 구현 방법에 대한 아이디어가 있다면 공유합니다.

### 3. 코드 기여

코드 개선사항을 제공하고 싶다면:

#### 단계 1: 저장소 Fork

```bash
# GitHub 웹사이트에서 "Fork" 버튼 클릭
```

#### 단계 2: Clone과 Branch 생성

```bash
# Fork한 저장소 Clone
git clone https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard.git
cd 2026-keqas-eqa-dashboard

# 새 브랜치 생성
git checkout -b feature/기능-설명
# 또는
git checkout -b fix/버그-설명
```

#### 단계 3: 변경사항 작성

- 코드를 작성합니다.
- 의미 있는 커밋 메시지를 작성합니다.
- 자신의 변경사항을 테스트합니다.

#### 단계 4: Commit과 Push

```bash
git add .
git commit -m "feat: 새로운 기능 설명"
# 또는
git commit -m "fix: 버그 수정 설명"

git push origin feature/기능-설명
```

#### 단계 5: Pull Request 생성

1. GitHub에서 자신의 Fork 저장소로 이동합니다.
2. "Compare & pull request" 버튼을 클릭합니다.
3. PR 제목과 설명을 작성합니다.
4. "Create pull request" 버튼을 클릭합니다.

## 커밋 메시지 규칙

다음 형식을 따라주세요:

```
type(scope): subject

body

footer
```

### Type
- `feat`: 새로운 기능
- `fix`: 버그 수정
- `docs`: 문서 수정
- `style`: 코드 스타일 변경
- `refactor`: 코드 리팩토링
- `perf`: 성능 개선
- `test`: 테스트 추가

### 예시

```
feat(dashboard): 필터링 기능 추가

새로운 필터링 기능을 대시보드에 추가하여 사용자가 
특정 기관이나 검사항목으로 데이터를 필터링할 수 있도록 했습니다.

Closes #123
```

## 코드 스타일

- **JavaScript**: ES6+ 문법 사용
- **Python**: PEP 8 따름
- **들여쓰기**: 2칸 (JavaScript, HTML/CSS) 또는 4칸 (Python)
- **네이밍**: camelCase (JS), snake_case (Python)

## 개발 환경 설정

```bash
# 저장소 Clone
git clone https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard.git
cd 2026-keqas-eqa-dashboard

# Python 환경 설정 (선택사항)
python -m venv venv
.\venv\Scripts\Activate.ps1

# 필수 패키지 설치
pip install pandas openpyxl

# 로컬 웹서버 실행
python -m http.server 8000
```

그 후 브라우저에서 `http://localhost:8000`으로 접속합니다.

## 라이선스

이 저장소에 코드를 제출하면, 
그 코드가 MIT 라이선스 하에 배포될 수 있음에 동의하는 것입니다.

## 질문이 있으신가요?

- GitHub Issues에서 질문을 등록해주세요.
- 또는 프로젝트 관리자에게 연락해주세요.

감사합니다! 🙏

---

**Last Updated**: 2026년 2월
