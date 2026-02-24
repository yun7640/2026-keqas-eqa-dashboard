# 2026 KEQAS EQA 대시보드

**2026년도 신빙도조사사업(KEQAS - Korea External Quality Assessment Service) 프로그램 현황을 시각화한 대화형 웹 대시보드입니다.**

[🌐 대시보드 보기](#-사용-방법) | [📖 문서](#-문서) | [⭐ GitHub](#github) | [🚀 배포 방법](#-github-pages-배포)

---

## 📊 개요

이 대시보드는 한국의 임상병리사/의료기술자가 참여하는 신빙도조사(외부정도관리, External Quality Assessment) 프로그램의 다음 정보를 시각화합니다:

### 제공 정보
- **프로그램 통계** - 전체 신빙도조사 프로그램 현황 (7개 분야, 103개 프로그램)
- **참여기관 정보** - 병원, 검사실, 의료기관별 참여 현황
- **검사항목 분석** - 다빈도 검체검사항목 및 트렌드
- **진료통계 매핑** - 건강보험행위 진료통계와 신빙도조사 항목 연동
- **대체성 분석** - 검사 간 대체성(Commutability) 정보

---

## ✨ 주요 기능

| 기능 | 설명 |
|-----|-----|
| 📈 **트리맵 시각화** | 프로그램, 기관, 검사항목 데이터를 대화형 트리맵으로 표현 |
| 🔍 **상세 검색** | 프로그램, 기관, 검사항목으로 데이터 필터링 |
| 📊 **차트 분석** | 참여기관 분포, 검사항목 통계를 차트로 시각화 |
| 📱 **반응형 디자인** | 데스크톱, 태블릿, 모바일 모든 화면 지원 |
| 💾 **로컬 캐싱** | 빠른 로딩과 오프라인 지원 |
| 🌍 **GitHub Pages** | 무료 호스팅 및 공개 공유 |

---

## 🛠️ 기술 스택

### Frontend
- **HTML5** - 시맨틱 마크업
- **CSS3** - 그리드, 플렉스박스, 애니메이션
- **JavaScript (Vanilla)** - 프레임워크 없는 순수 JavaScript
- **Chart.js** - 차트 라이브러리

### Backend & Data
- **JSON** - 데이터 형식
- **Python** - 데이터 생성 및 전처리
- **Pandas** - 데이터 처리
- **Excel** - 원본 데이터

### Hosting
- **GitHub Pages** - 정적 웹사이트 호스팅
- **GitHub Actions** - 자동 배포

---

## 📂 프로젝트 구조

```
2026-keqas-eqa-dashboard/
├── index.html                          # 📄 랜딩 페이지 (진입점)
├── 2026_KEQAS_EQA_Dashboard.html       # 📊 메인 대시보드
│
├── data/                               # 📊 데이터 폴더
│   ├── dashboard_data.json             # 대시보드 메인 데이터
│   ├── dashboard_embed.json            # 임베드용 데이터
│   ├── guidebook_pages.json            # 가이드북 정보
│   ├── 2024_심평원_진료통계.csv       # 진료통계 원본
│   └── ...
│
├── scripts/                            # 🐍 Python 스크립트
│   ├── generate_dashboard.py           # 대시보드 HTML 생성
│   └── build_dashboard_data.py         # JSON 데이터 생성
│
├── README.md                           # 📖 프로젝트 설명 (이 파일)
├── QUICKSTART.md                       # 🚀 빠른 시작 가이드
├── DEPLOYMENT.md                       # 📡 상세 배포 가이드
├── CONTRIBUTION.md                     # 🤝 기여 가이드
│
├── .github/
│   └── workflows/
│       └── pages.yml                   # GitHub Actions 배포 설정
│
├── .gitignore                          # Git 무시 파일 설정
└── deploy.bat                          # ⚙️ Windows 배포 도구

```

---

## 🚀 빠른 시작 (5분)

### 방법 1️⃣: 로컬에서 보기 (가장 빠름)

```bash
# 1. 이 저장소 Clone
git clone https://github.com/YOUR_USERNAME/2026-keqas-eqa-dashboard.git
cd 2026-keqas-eqa-dashboard

# 2. 웹 브라우저에서 열기
# Windows
start index.html

# macOS
open index.html

# Linux
xdg-open index.html
```

### 방법 2️⃣: 로컬 웹서버로 보기

```bash
# Python 3이 설치되어 있어야 함
cd 2026-keqas-eqa-dashboard
python -m http.server 8000

# 브라우저에서 접속: http://localhost:8000
```

### 방법 3️⃣: GitHub Pages로 공개하기 (권장)

자세한 설명은 [**QUICKSTART.md**](QUICKSTART.md) 또는 [**DEPLOYMENT.md**](DEPLOYMENT.md) 참고

**Windows 사용자**: `deploy.bat` 파일을 실행하면 자동으로 배포됩니다.

```powershell
# Windows PowerShell
.\deploy.bat

# 메뉴에서 선택:
# 1) Git 저장소 초기화
# 2) GitHub에 업로드
# 3) GitHub Pages 설정 안내
```

---

## 📖 문서

| 문서 | 설명 |
|-----|-----|
| **[README.md](README.md)** | 영문 프로젝트 설명 |
| **[QUICKSTART.md](QUICKSTART.md)** | 🚀 5분 안에 배포하기 (권장) |
| **[DEPLOYMENT.md](DEPLOYMENT.md)** | 📡 상세 배포 가이드 |
| **[CONTRIBUTION.md](CONTRIBUTION.md)** | 🤝 기여 및 개발 가이드 |

---

## 📊 데이터 항목

### 7개 분야 (Disciplines)
- 진단혈액학 (Hematology)
- 임상화학 (Clinical Chemistry)
- 면역혈청학 (Immunoserology)
- 미생물학 (Microbiology)
- 기생충학 (Parasitology)
- 혈액은행학 (Transfusion Medicine)
- 일반검사 (General Lab Tests)

### 주요 통계
- **프로그램**: 103개
- **검사항목**: 548개
- **참여기관**: 2,119개
- **검체 종류**: 7가지

---

## 🔄 데이터 업데이트

원본 Excel 파일이 변경된 경우 다음 명령으로 데이터를 재생성할 수 있습니다:

### 필수 패키지 설치
```bash
pip install pandas openpyxl
```

### 데이터 빌드
```bash
# 1. JSON 데이터 생성
python scripts/build_dashboard_data.py

# 2. HTML 대시보드 생성 (선택)
python scripts/generate_dashboard.py
```

### GitHub에 자동 배포
```bash
git add .
git commit -m "Update: 데이터 업데이트"
git push origin main
```

자동으로 GitHub Pages가 업데이트됩니다.

---

## 📱 반응형 디자인

대시보드는 모든 화면 크기에서 최적화되어 있습니다:

| 화면 | 지원 |
|-----|-----|
| **데스크톱** (1920px+) | ✅ 완벽 지원 |
| **태블릿** (768px ~ 1024px) | ✅ 완벽 지원 |
| **모바일** (< 768px) | ✅ 완벽 지원 |
| **다크모드** | ✅ 지원 예정 |

---

## 🔒 보안 및 개인정보

- ✅ **정적 웹사이트**: 서버 없음, 모든 처리가 브라우저에서 진행
- ✅ **개인정보 보호**: 어떤 데이터도 수집되지 않음
- ✅ **오픈소스**: 모든 코드 공개, 감시 가능
- ✅ **GitHub Pages**: HTTPS 자동 적용

---

## 🌐 배포 상태

| 환경 | 상태 | URL |
|-----|-----|-----|
| **GitHub Pages** | ![GitHub Pages](https://img.shields.io/badge/Live-✓-brightgreen) | `https://username.github.io/2026-keqas-eqa-dashboard/` |
| **소스코드** | ![GitHub](https://img.shields.io/badge/GitHub-Repository-black?logo=github) | `https://github.com/username/2026-keqas-eqa-dashboard` |

---

## 📞 연락처 및 지원

### 공식 기관
- **기관명**: 대한진단검사정도관리협회 (KEQAS)
- **웹사이트**: https://www.keqas.org
- **신빙도조사**: https://www.keqas.org/eqa.php

### 프로젝트 지원
- 🐛 **버그 리포트**: Issues 탭
- 💡 **기능 제안**: Discussions 탭
- 🤝 **코드 기여**: Pull Requests
- 📧 **이메일 문의**: KEQAS 공식 연락처

---

## 📜 라이선스

### 코드
MIT License - 자유로운 사용, 수정, 배포 가능

### 데이터
- **KEQAS 프로그램 데이터**: 대한진단검사정도관리협회
- **진료통계 데이터**: 건강보험심사평가원
- **검사항목 정보**: 공개 데이터

---

## 🙏 감사의 말

이 프로젝트는 다음 기관과 자료를 활용합니다:
- 🏛️ 대한진단검사정도관리협회 (KEQAS)
- 🏥 건강보험심사평가원
- 🔬 대한임상병리학회

---

## 🚀 배포 및 호스팅

### GitHub Pages 배포 (권장)
1. **QUICKSTART.md** 문서 참고 (5분 소요)
2. 또는 Windows: `deploy.bat` 실행
3. 완료 후 `https://username.github.io/2026-keqas-eqa-dashboard/` 접속

### 기타 배포 옵션
- ☁️ **Vercel**: `vercel deploy`
- ☁️ **Netlify**: Drag & Drop
- 🖥️ **개인 서버**: 모든 파일 업로드
- 📱 **클라우드**: AWS S3, Azure Static Web Apps 등

---

## 🔮 향후 계획

- [ ] 다크모드 지원
- [ ] 다국어 지원 (English, 中文, 한국어)
- [ ] 데이터 내보내기 (CSV, PDF)
- [ ] 실시간 데이터 연동
- [ ] 고급 필터링 및 검색
- [ ] 사용자 맞춤 리포트 생성
- [ ] 모바일 앱
- [ ] API 제공

---

## 📊 통계

- ⭐ Stars: - (별을 눌러주세요!)
- 📥 Forks: -
- 👥 Contributors: 1+
- 📝 Commits: 10+
- 🌍 Languages: HTML, CSS, JavaScript, Python

---

## 📝 변경 로그

### v1.0.0 (2026-02-24)
- ✅ 초기 릴리스
- ✅ GitHub Pages 배포 지원
- ✅ 완전한 문서화
- ✅ 자동 배포 스크립트 (deploy.bat)

### v1.1.0 (예정)
- 🔜 다크모드
- 🔜 고급 필터링
- 🔜 데이터 내보내기

---

## 🎯 퀵 링크

```
🌐 웹 대시보드: 로컬 또는 GitHub Pages에서 index.html 열기
📖 빠른 시작: QUICKSTART.md 보기
🚀 상세 배포: DEPLOYMENT.md 보기
🤝 기여하기: CONTRIBUTION.md 보기
⭐ Star하기: GitHub 저장소에서 ⭐ 클릭
```

---

**Made with ❤️ by the KEQAS EQA Community**

*2026 KEQAS EQA Dashboard © 2026 All Rights Reserved*
