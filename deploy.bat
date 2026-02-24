@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: ====================================================================
:: 2026 KEQAS EQA Dashboard - GitHub 자동 배포 스크립트
:: ====================================================================

echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                                                              ║
echo ║   2026 KEQAS EQA Dashboard - GitHub 배포 도구              ║
echo ║                                                              ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

:: Git 설치 확인
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git이 설치되어 있지 않습니다.
    echo    https://git-scm.com 에서 설치하세요.
    pause
    exit /b 1
)

echo ✅ Git 설치 확인됨
echo.

:: 메뉴 표시
echo 무엇을 하시겠습니까?
echo.
echo   1) Git 저장소 초기화 (처음 한 번만)
echo   2) GitHub에 업로드 (변경 사항 커밋 및 푸시)
echo   3) GitHub Pages 설정 안내
echo   4) 현재 상태 확인 (git status)
echo   5) 종료
echo.

set /p choice="선택 (1-5): "

if "%choice%"=="1" (
    call :init_repo
) else if "%choice%"=="2" (
    call :push_to_github
) else if "%choice%"=="3" (
    call :show_pages_setup
) else if "%choice%"=="4" (
    call :show_status
) else if "%choice%"=="5" (
    echo 종료합니다.
    exit /b 0
) else (
    echo ❌ 올바른 선택이 아닙니다.
    pause
    exit /b 1
)

pause
goto :eof

:: ====================================================================
:: 함수: Git 저장소 초기화
:: ====================================================================
:init_repo
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║  Step 1: Git 저장소 초기화                                 ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

:: Git 이미 초기화되었는지 확인
if exist .git (
    echo ⚠️  이미 Git 저장소가 초기화되어 있습니다.
    goto :eof
)

:: Git 사용자 정보 입력
echo 처음 Git을 사용하는 경우 다음 정보를 입력해주세요.
echo.
set /p git_name="👤 Git 사용자명 (예: John Doe): "
set /p git_email="📧 Git 이메일 (예: john@example.com): "
set /p github_user="👨‍💻 GitHub 사용자명: "
set /p repo_name="📁 저장소명 (기본값: 2026-keqas-eqa-dashboard): "

if "!repo_name!"=="" set repo_name=2026-keqas-eqa-dashboard

echo.
echo 입력 정보 확인:
echo   - 사용자명: !git_name!
echo   - 이메일: !git_email!
echo   - GitHub 사용자: !github_user!
echo   - 저장소명: !repo_name!
echo.

echo Git 저장소를 초기화합니다...
git init
git config user.name "!git_name!"
git config user.email "!git_email!"

echo.
echo 모든 파일을 추가합니다...
git add .

echo.
echo 첫 번째 커밋을 생성합니다...
git commit -m "Initial commit: 2026 KEQAS EQA Dashboard"

echo.
echo 원격 저장소를 연결합니다...
git remote add origin https://github.com/!github_user!/!repo_name!.git
git branch -m main

echo.
echo ✅ Git 저장소 초기화 완료!
echo.
echo 다음 단계:
echo   1. GitHub에서 저장소 생성: https://github.com/new
echo   2. 저장소명: !repo_name!
echo   3. Public 선택
echo   4. Create repository 클릭
echo   5. 이 스크립트의 "2) GitHub에 업로드" 선택
echo.
goto :eof

:: ====================================================================
:: 함수: GitHub에 업로드
:: ====================================================================
:push_to_github
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║  Step 2: GitHub에 업로드                                   ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

:: .git 폴더 확인
if not exist .git (
    echo ❌ Git 저장소를 먼저 초기화해야 합니다.
    echo    메뉴에서 "1) Git 저장소 초기화" 선택
    goto :eof
)

:: 커밋 메시지 입력
echo.
set /p commit_msg="📝 커밋 메시지 입력 (기본값: Update dashboard): "
if "!commit_msg!"=="" set commit_msg=Update dashboard

echo.
echo 변경 사항 확인:
git status

echo.
echo.
set /p confirm="업로드하시겠습니까? (y/n): "
if /i not "!confirm!"=="y" (
    echo 취소되었습니다.
    goto :eof
)

echo.
echo 파일을 추가합니다...
git add .

echo.
echo 커밋을 생성합니다...
git commit -m "!commit_msg!"

echo.
echo GitHub에 푸시합니다...
echo (GitHub 인증 창이 나타나면 따라주세요)
echo.
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ GitHub 업로드 완료!
    echo.
    echo 다음 단계:
    echo   1. GitHub 저장소로 이동
    echo   2. Settings 클릭
    echo   3. Pages 선택
    echo   4. Branch를 main으로 설정 후 Save
    echo.
) else (
    echo.
    echo ❌ 업로드 중 오류가 발생했습니다.
    echo    원격 저장소가 올바른지 확인하세요: git remote -v
    echo.
)
goto :eof

:: ====================================================================
:: 함수: GitHub Pages 설정 안내
:: ====================================================================
:show_pages_setup
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║  GitHub Pages 활성화 방법                                  ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 📚 설정 단계:
echo.
echo 1. GitHub 저장소 페이지로 이동
echo.
echo 2. "Settings" 탭 클릭 (저장소 페이지 상단)
echo.
echo 3. 좌측 메뉴에서 "Pages" 선택
echo.
echo 4. "Build and deployment" 섹션:
echo    - Source: "Deploy from a branch" 선택
echo    - Branch: "main" 선택
echo    - Folder: "/ (root)" 선택
echo.
echo 5. "Save" 버튼 클릭
echo.
echo 6. 잠시 후 GitHub Pages 활성화됨!
echo.
echo 🎉 배포 완료 후 접근할 수 있는 주소:
echo    https://USERNAME.github.io/2026-keqas-eqa-dashboard/
echo.
echo 📞 문제가 있으면:
echo    - Settings > Pages에서 배포 상태 확인
echo    - Actions 탭에서 배포 로그 확인
echo    - 10분 정도 기다렸는지 확인
echo.
goto :eof

:: ====================================================================
:: 함수: 현재 상태 확인
:: ====================================================================
:show_status
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║  Git 저장소 상태                                           ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

if not exist .git (
    echo ⚠️  Git 저장소가 초기화되지 않았습니다.
    goto :eof
)

echo 📋 상태:
echo.
git status

echo.
echo 📡 원격 저장소:
git remote -v

echo.
echo 🌿 브랜치:
git branch -a

echo.
goto :eof

