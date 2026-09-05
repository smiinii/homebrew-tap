# Homebrew tap for Oh My Luke

이 저장소는 [Oh My Luke](https://github.com/smiinii/oh-my-luke)의 공식 Homebrew tap입니다.

## 설치

```bash
brew install smiinii/tap/oh-my-luke
omluke --version
omluke --help
```

완전히 지정한 이름으로 설치하므로 Homebrew는 tap 전체가 아니라 이 Formula만 신뢰합니다. OML용 Java는 패키지에 포함되어 있어 Java나 Node.js를 따로 설치하지 않습니다. 실제 AI 작업에는 Codex CLI 설치와 사용자 로그인이 별도로 필요합니다.

## 업데이트

```bash
brew update
brew upgrade oh-my-luke
```

## 제거

```bash
brew uninstall oh-my-luke
```

제거해도 각 프로젝트의 `.oml` 실행 기록, OML이 수정한 프로젝트 파일, Codex CLI와 로그인 정보는 지우지 않습니다.

## 현재 지원 범위

- macOS 15 Apple Silicon
- Ubuntu 24.04 x64
- 현재 버전: `0.1.0-rc.1` 공개 시험판

Windows, Intel Mac과 다른 Linux 배포판은 아직 검증하지 않았습니다. macOS 패키지는 Apple Developer ID 서명·공증 전이며 Homebrew 설치가 서명·공증을 대신하지 않습니다. 자세한 사용법과 제한은 [OML README](https://github.com/smiinii/oh-my-luke#readme)를 확인하세요.
