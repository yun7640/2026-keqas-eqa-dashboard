# GitHub 배포 체크리스트

2026 KEQAS EQA 대시보드를 GitHub에 배포하기 전 확인사항입니다.

## ✅ 사전 준비 단계

### 1. 환경 설정
- [ ] GitHub 계정 생성 (https://github.com)
- [ ] Git 설치 (https://git-scm.com)
- [ ] GitHub Desktop 또는 Git Bash 설치 (선택)

### 2. 프로젝트 파일 확인
- [ ] `index.html` - 랜딩 페이지 존재
- [ ] `2026_KEQAS_EQA_Dashboard.html` - 메인 대시보드 존재
- [ ] `data/dashboard_data.json` - 데이터 파일 존재
- [ ] `data/dashboard_embed.json` - 임베드 데이터 존재
- [ ] `README.md` - 영문 README 존재
- [ ] `README_KO.md` - 한국어 README 존재

### 3. 문서 확인
- [ ] `QUICKSTART.md` - 빠른 시작 가이드
- [ ] `DEPLOYMENT.md` - 상세 배포 가이드
- [ ] `CONTRIBUTION.md` - 기여 가이드
- [ ] `.gitignore` - Git 무시 파일 설정
- [ ] `.github/workflows/pages.yml` - GitHub Actions 설정

### 4. Windows 배포 도구 (Windows 사용자)
- [ ] `deploy.bat` - 배포 배치 파일 존재
- [ ] PowerShell 관리자 권한 확인

---

## 🚀 배포 단계별 체크리스트

### Step 1️⃣: GitHub 저장소 생성

**GitHub 웹사이트에서:**

- [ ] 로그인 확인
- [ ] 우측 상단 **+** 클릭
- [ ] **New repository** 선택
- [ ] 저장소 이름 입력: `2026-keqas-eqa-dashboard`
- [ ] 설명 입력: `2026 KEQAS EQA Schemes Dashboard`
- [ ] **Public** 선택
- [ ] README.md 추가 해제
- [ ] .gitignore 추가 해제
- [ ] 라이선스 선택 안 함
- [ ] **Create repository** 클릭
- [ ] 저장소 URL 복사: `https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard.git`

### Step 2️⃣: 로컬 Git 초기화

**PowerShell/Command Prompt에서:**

```powershell
cd "g:\내 드라이브\00_KEQAS\schemes"
git init
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

- [ ] 저장소 경로 확인
- [ ] Git 초기화 완료
- [ ] 사용자 정보 설정 완료

### Step 3️⃣: 원격 저장소 연결

```powershell
git remote add origin https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard.git
git branch -m main
```

- [ ] 원격 저장소 URL 정확히 입력
- [ ] 브랜치명이 `main`으로 변경됨

### Step 4️⃣: 파일 커밋

```powershell
git add .
git commit -m "Initial commit: 2026 KEQAS EQA Dashboard"
```

- [ ] 모든 필수 파일이 추가됨
- [ ] 커밋 메시지 작성 완료
- [ ] `.gitignore`에 의해 불필요한 파일 제외됨

### Step 5️⃣: GitHub에 푸시

```powershell
git push -u origin main
```

- [ ] GitHub 인증 완료
- [ ] 파일 업로드 성공
- [ ] 에러 메시지 없음
- [ ] GitHub 웹사이트에서 파일 확인

---

## 🌐 GitHub Pages 활성화

**GitHub 웹사이트에서:**

- [ ] 저장소 페이지로 이동
- [ ] **Settings** 탭 클릭
- [ ] 왼쪽 메뉴에서 **Pages** 찾기
- [ ] **Source** 섹션:
  - [ ] "Deploy from a branch" 선택
  - [ ] Branch: `main` 선택
  - [ ] Folder: `/ (root)` 선택
- [ ] **Save** 버튼 클릭
- [ ] 배포 시작 (자동)
- [ ] **Actions** 탭에서 배포 상태 확인
- [ ] 배포 완료 (약 1-2분)

### GitHub Pages 배포 완료

- [ ] 배포 상태: ✅ Passed
- [ ] 공개 URL 생성: `https://YOUR_USERNAME.github.io/2026-keqas-eqa-dashboard/`
- [ ] 브라우저에서 접속 테스트
- [ ] 대시보드가 정상 로드됨

---

## 🧪 배포 검증

### 웹사이트 접근성 테스트

- [ ] **홈페이지** (index.html) 로드
  - [ ] 제목 "2026 KEQAS EQA Dashboard" 표시
  - [ ] "Dashboard 보기" 버튼 작동
  - [ ] GitHub 링크 작동

- [ ] **메인 대시보드** (2026_KEQAS_EQA_Dashboard.html) 로드
  - [ ] 헤더 표시
  - [ ] KPI 통계 표시
  - [ ] 탭 네비게이션 작동
  - [ ] 트리맵 시각화 표시
  - [ ] 차트 데이터 로드

### 데이터 확인

- [ ] `data/dashboard_data.json` 로드 완료
- [ ] `data/guidebook_pages.json` 로드 완료
- [ ] 통계 값 표시 (프로그램 103개, 기관 2119개 등)
- [ ] 차트 렌더링 정상

### 기능 테스트

- [ ] 탭 전환 작동
- [ ] 트리맵 클릭 가능
- [ ] 검색/필터 기능 작동
- [ ] 반응형 디자인 (모바일 확인)
- [ ] 마우스 호버 효과

### 성능 테스트

- [ ] 페이지 로딩 시간 3초 이내
- [ ] 차트 렌더링 1초 이내
- [ ] 상호작용 반응성 양호

---

## 📱 크로스 브라우저 테스트

### 데스크톱
- [ ] Chrome (최신)
- [ ] Firefox (최신)
- [ ] Safari (macOS 사용자)
- [ ] Edge (Windows)

### 모바일
- [ ] Chrome (Android)
- [ ] Safari (iPhone)
- [ ] 화면 크기 responsive 확인

---

## 🔗 공유 및 마케팅

### URL 준비
- [ ] 짧은 링크 준비 (선택)
- [ ] QR 코드 생성 (선택)

### 문서 및 안내
- [ ] README 파일 읽기 쉬운지 확인
- [ ] 링크 모두 작동하는지 확인
- [ ] 한국어 설명 정확한지 확인

### 공개 및 공유
- [ ] GitHub 저장소 README에 설명 추가
- [ ] 프로필 README에 링크 추가
- [ ] 조직/팀과 공유
- [ ] 필요시 SNS에 공지

---

## 🔄 지속적인 유지보수

### 정기 확인
- [ ] 주간 단위로 배포 상태 확인
- [ ] 데이터 업데이트 필요 시 커밋
- [ ] 피드백 수집 및 반영

### 보안 및 업데이트
- [ ] 정기적으로 의존성 업데이트 확인
- [ ] GitHub Security 알림 모니터링
- [ ] 취약점 분석 도구 실행 (선택)

### 문서 관리
- [ ] CHANGELOG.md 작성 시작 (선택)
- [ ] 버전 관리 설정 (선택)
- [ ] 릴리스 노트 작성 (선택)

---

## 📊 배포 완료 체크리스트

### 최종 확인

- [ ] 모든 파일이 GitHub에 업로드됨
- [ ] GitHub Pages 활성화 완료
- [ ] 웹에서 접속 가능
- [ ] 모든 기능 정상 작동
- [ ] 문서 완성
- [ ] 공유 준비 완료

### 배포 완료 후

- [ ] **배포 URL** 기록: `https://YOUR_USERNAME.github.io/2026-keqas-eqa-dashboard/`
- [ ] **GitHub 저장소** 북마크: `https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard`
- [ ] **문서 링크** 정리
- [ ] **팀과 공유**

---

## 🎉 배포 성공!

축하합니다! 2026 KEQAS EQA 대시보드가 성공적으로 배포되었습니다.

### 다음 단계
1. URL을 팀과 공유
2. 피드백 수집
3. 필요시 데이터 업데이트
4. 고급 기능 추가 (다크모드, 다국어 등)

---

## ❓ 문제 해결

### 문제가 발생했다면

1. **GitHub 관련 오류**
   - `DEPLOYMENT.md`의 "문제 해결" 섹션 참고
   - GitHub Actions 로그 확인

2. **웹사이트 표시 안 됨**
   - 캐시 비우기 (Ctrl+Shift+Del)
   - GitHub Pages 설정 다시 확인
   - 10분 대기 후 재시도

3. **데이터 로드 안 됨**
   - 브라우저 콘솔 확인 (F12)
   - JSON 파일 경로 확인
   - 파일 크기 확인

4. **기타 문제**
   - GitHub Issues 탭에서 질문
   - 커뮤니티 포럼에서 도움 요청

---

## 📞 지원 및 연락처

- 📧 Email: KEQAS 공식 연락처
- 🌐 Website: https://www.keqas.org
- 💬 GitHub Issues: 버그 및 기능 요청
- 🤝 GitHub Discussions: 질문 및 토론

---

**이 체크리스트를 완료하면 모든 배포가 정상적으로 완료됩니다!** ✅

**마지막 확인**: 위 항목들이 모두 체크되었나요? 그렇다면 성공입니다! 🎉
