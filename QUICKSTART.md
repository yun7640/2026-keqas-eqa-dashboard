# GitHub 배포 빠른 시작 가이드 (Quick Start)

이 문서는 2026 KEQAS EQA 대시보드를 GitHub에서 빠르게 공개하기 위한 단계별 가이드입니다.

## 📋 사전 준비

- ✅ GitHub 계정 (https://github.com 에서 무료 가입)
- ✅ Git 설치 (https://git-scm.com 에서 다운로드)
- ✅ 이 프로젝트의 모든 파일

## 🚀 배포 단계 (5분 소요)

### 단계 1️⃣: GitHub 저장소 생성

1. GitHub 로그인
2. 우측 상단 **+** 아이콘 클릭 → **New repository**
3. 아래 내용 입력:

| 항목 | 값 |
|-----|-----|
| Repository name | `2026-keqas-eqa-dashboard` |
| Description | `2026 KEQAS EQA Schemes Dashboard` |
| Visibility | **Public** ✓ |
| Add a README.md | ☐ (체크 제거) |
| Add .gitignore | ☐ (체크 제거) |
| License | None |

4. **Create repository** 클릭

### 단계 2️⃣: 로컬 저장소 설정

PowerShell을 열고 프로젝트 폴더에서 실행:

```powershell
# 저장소 경로로 이동
cd "g:\내 드라이브\00_KEQAS\schemes"

# Git 초기화
git init

# 사용자 설정 (처음 한 번만)
git config user.name "Your Name"
git config user.email "your.email@example.com"

# GitHub 저장소 연결 (YOUR_USERNAME을 실제 사용자명으로 변경)
git remote add origin https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard.git

# 브랜치 이름 변경 (main으로)
git branch -m main
```

### 단계 3️⃣: 파일 업로드

```powershell
# 모든 파일 준비
git add .

# 커밋 생성
git commit -m "Initial commit: 2026 KEQAS EQA Dashboard"

# GitHub에 업로드
git push -u origin main
```

첫 푸시 시 다음 중 하나로 인증합니다:
- **GitHub Desktop** 또는
- **Personal Access Token** (Settings > Developer settings > Personal access tokens)

### 단계 4️⃣: GitHub Pages 활성화

1. GitHub 저장소 페이지에서 **Settings** 클릭
2. 좌측 메뉴에서 **Pages** 클릭
3. **Build and deployment** 섹션:
   - Source: **Deploy from a branch** 선택
   - Branch: **main** 선택
   - Folder: **/ (root)** 선택
4. **Save** 버튼 클릭

### 단계 5️⃣: 배포 완료! 🎉

몇 분 후 아래 주소에서 대시보드를 확인할 수 있습니다:

```
https://YOUR_USERNAME.github.io/2026-keqas-eqa-dashboard/
```

또는 GitHub 저장소의 **Deployments** 섹션에서 "View deployment" 클릭

## 📝 파일 구조

배포 시 다음 파일들이 공개됩니다:

```
/
├── index.html                          # 📄 랜딩 페이지 (첫 진입점)
├── 2026_KEQAS_EQA_Dashboard.html       # 📊 메인 대시보드
├── data/
│   ├── dashboard_data.json             # 📈 대시보드 데이터
│   ├── dashboard_embed.json            # 📊 임베드 데이터
│   └── guidebook_pages.json            # 📚 가이드북 정보
├── scripts/
│   ├── generate_dashboard.py           # 🐍 대시보드 생성 스크립트
│   └── build_dashboard_data.py         # 🐍 데이터 빌드 스크립트
├── README.md                           # 📖 프로젝트 설명
├── DEPLOYMENT.md                       # 🚀 상세 배포 가이드
├── CONTRIBUTION.md                     # 🤝 기여 가이드
├── .gitignore                          # ⚙️ Git 무시 파일 설정
└── .github/workflows/pages.yml         # ⚙️ 자동 배포 설정

* scripts/ 폴더의 Python 파일은 로컬에서만 실행됨
```

## 🔄 이후 업데이트 방법

데이터나 코드를 변경 후 다시 배포:

```powershell
# 1. 변경사항 확인
git status

# 2. 파일 추가
git add .

# 3. 커밋
git commit -m "Update: 설명을 입력하세요"

# 4. 푸시 (자동으로 GitHub Pages 배포됨)
git push origin main
```

## 🌐 URL 공유

대시보드를 다른 사람과 공유하려면:

```
✅ 공유 가능한 URL:
https://YOUR_USERNAME.github.io/2026-keqas-eqa-dashboard/

🔍 GitHub 저장소:
https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard
```

복사하여 이메일, Slack, SNS 등에서 공유하세요!

## ⚠️ 문제 해결

### Q: "fatal: not a git repository" 오류

**A:** 프로젝트 폴더에서 `git init` 을 먼저 실행하세요.

### Q: GitHub Pages가 보이지 않음

**A:** 다음을 확인하세요:
1. Settings > Pages에서 main 브랜치 선택 확인
2. GitHub Actions 탭에서 배포 상태 확인
3. 10분 정도 기다렸는지 확인

### Q: "Permission denied" 오류

**A:** GitHub 인증을 다시 설정하세요:
```powershell
git credential reject https://github.com
```
그 후 다시 `git push` 실행

### Q: 파일이 일부 누락되었음

**A:** `.gitignore` 파일 확인 후 강제 추가:
```powershell
git add -A
git commit -m "Add missing files"
git push
```

## 💡 팁 & 꿀팁

### 1. README 배지 추가
```markdown
![Dashboard](https://img.shields.io/badge/Dashboard-Live-blue)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-black?logo=github)](https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard)
```

### 2. 커스텀 도메인 설정 (선택)
- 도메인 구입 후 DNS CNAME 레코드 추가
- GitHub Pages 설정에서 Custom domain 입력

### 3. 자동 배포 확인
- GitHub 저장소 > Actions 탭에서 배포 로그 확인
- 실패 시 오류 메시지 확인 후 수정

## 📞 추가 도움말

- [GitHub Pages 공식 문서](https://docs.github.com/en/pages)
- [Git 한글 가이드](https://git-scm.com/book/ko/v2)
- [GitHub Actions 가이드](https://docs.github.com/en/actions)

---

**마지막 업데이트**: 2026년 2월 24일

**다음 단계**: 배포 후 친구나 동료와 URL을 공유하세요! 🚀
