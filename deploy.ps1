# deploy.ps1

# 현재 폴더가 vsp-docs 인지 확인
if (-not (Test-Path ".\mkdocs.yml")) {
    Write-Host "⚠️ 현재 위치가 vsp-docs 폴더가 아닙니다. cd 명령으로 vsp-docs 폴더로 이동하세요."
    exit 1
}

# 커밋 메시지 입력 받기 (기본값: update docs)
param(
    [string]$msg = "update docs"
)

# Git 커밋 & 푸시
git add .
git commit -m "$msg"
git push origin main

# MkDocs 배포
python -m mkdocs gh-deploy --force

Write-Host "✅ 배포 완료! 사이트를 확인하세요: https://VoiceScriptPlayer.github.io/vsp-docs/"
