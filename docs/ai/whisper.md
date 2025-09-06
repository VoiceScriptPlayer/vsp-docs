# Whisper (STT)

!!! info "개요"
    로컬/오프라인 가능, 다국어 인식. 긴 파일은 세그먼트 처리 권장.

## 빠른 시작
- 전략: **로컬 서버(파이썬)** ↔ **C# 클라이언트(파일 전송, SRT 수신)**
- 결과물: `SRT/JSON` (자막 타임코드 유지)

=== "Python (서버 골격)"
```python
# whisper_server.py (개요)
# - /health
# - /transcribe (wav/mp3/mp4 업로드 -> SRT/JSON 응답)
