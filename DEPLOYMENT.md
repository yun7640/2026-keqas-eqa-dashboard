# GitHub Pages 배포 가이드

이 문서는 2026 KEQAS EQA 대시보드를 GitHub Pages를 통해 공개하는 방법을 설명합니다.

## 선행 요구사항

- GitHub 계정
- Git 설치
- 로컬 컴퓨터에 이 저장소 클론

## 단계별 설정 방법

### 1단계: GitHub 저장소 생성

1. GitHub (https://github.com)에 로그인합니다.
2. **새 저장소 생성** 버튼을 클릭합니다.
3. 저장소 이름을 입력합니다:
   - 추천: `2026-keqas-eqa-dashboard` 또는 `keqas-dashboard`
4. 설명(Description)을 추가합니다:
   ```
   2026년도 신빙도조사사업(KEQAS) 프로그램 현황 대화형 대시보드
   ```
5. **Public**을 선택합니다 (외부 공유용)
6. "Create repository" 버튼을 클릭합니다.

### 2단계: 로컬 저장소 설정

PowerShell을 열고 다음 명령을 실행합니다:

```powershell
# 저장소 경로로 이동
cd "g:\내 드라이브\00_KEQAS\schemes"

# Git 초기화 (처음 한 번만)
git init

# GitHub 저장소를 원격으로 추가 (YOUR_USERNAME과 REPO_NAME 수정)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# main 브랜치로 이름 변경
git branch -m main
```

### 3단계: 파일 커밋 및 푸시

```powershell
# 모든 파일을 스테이징
git add .

# 커밋
git commit -m "Initial commit: 2026 KEQAS EQA Dashboard"

# GitHub에 푸시
git push -u origin main
```

첫 번째 푸시 시 GitHub 인증이 필요합니다. 웹 브라우저에서 인증을 완료합니다.

### 4단계: GitHub Pages 활성화

1. GitHub 저장소 페이지로 이동합니다.
2. **Settings** 탭을 클릭합니다.
3. 왼쪽 사이드바에서 **Pages**를 찾아 클릭합니다.
4. **Build and deployment** 섹션에서:
   - **Source**: "Deploy from a branch"를 선택
   - **Branch**: "main" 또는 "master"를 선택
   - **Folder**: "/ (root)"를 선택
5. **Save** 버튼을 클릭합니다.

몇 분 후 GitHub Pages 배포가 완료되면, 다음 주소에서 대시보드에 접근할 수 있습니다:

```
https://YOUR_USERNAME.github.io/REPO_NAME/
```

### 5단계: 커스텀 도메인 설정 (선택사항)

개인 도메인이 있다면 다음과 같이 설정할 수 있습니다:

1. GitHub Pages 설정에서 "Custom domain" 섹션을 찾습니다.
2. 도메인 이름을 입력합니다 (예: `dashboard.example.com`).
3. DNS 설정에서 CNAME 레코드를 추가합니다:
   ```
   CNAME: YOUR_USERNAME.github.io
   ```

## 이후 업데이트 방법

데이터나 코드를 업데이트한 후 다시 배포하려면:

```powershell
# 변경 사항 확인
git status

# 파일 추가
git add .

# 커밋
git commit -m "Update: 설명을 입력합니다"

# 푸시
git push origin main
```

## 자동 배포 (GitHub Actions)

이 저장소에는 `.github/workflows/pages.yml` 파일이 포함되어 있습니다.
이 파일을 통해 main 브랜치에 푸시할 때마다 자동으로 배포됩니다.

배포 상태는 GitHub 저장소의 **Actions** 탭에서 확인할 수 있습니다.

## 문제 해결

### GitHub Pages가 배포되지 않음

1. **Settings > Pages** 섹션을 확인합니다.
2. **Actions** 탭에서 배포 로그를 확인합니다.
3. 다음이 맞는지 확인하세요:
   - Branch가 "main" 또는 "master"로 설정됨
   - Folder가 "/ (root)"로 설정됨

### HTTPS 오류

GitHub Pages는 자동으로 HTTPS를 지원합니다. 브라우저 주소창에서 `https://`로 접근하세요.

### 파일이 보이지 않음

- `.gitignore` 파일 확인: 필수 파일이 무시되고 있지 않은지 확인
- `git add -A` 또는 `git add -f` 명령으로 강제 추가

## 참고 자료

- [GitHub Pages 공식 문서](https://docs.github.com/en/pages)
- [GitHub에 파일 푸시하기](https://docs.github.com/en/get-started/importing-your-project-to-github/importing-a-repository-with-github-importer)

---

**작성일**: 2026년 2월 24일
