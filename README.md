# Advanced-iOS (day3)

## 학습 내용

iOS와 Backend 연동

1. Launch Screen: 앱 시작 시 시스템 화면
2. PhotosPicker: 갤러리에서 이미지 선택
3. Task + await: 비동기 이미지 변환
4. @Ovservable: iOS-17 + ViewModel 매크로
5. private(set): 외부 읽기 전용
6. 연산 프로퍼티: isLoggedIn 자동 판별
7. .environment(): ViewModel 앱 전체 공유
8. @Environment(Self.self): 자식 화면에서 꺼내 쓰기
9. Codable + Sendable: 서버 JSON 파싱 + 동시성 안전
10. AF.upload(multipartFormData:): 이미지 + 텍스트 업로드
11. URLEncoding.queryString: URL에 파라미터 붙이기
12. 옵셔널 반환 타입: 서버 응답 특성 대응

## Advancements

1. 마이페이지에 서버 이미지 표시: 기존 `person.circle.fill` 자리에 실제 업로드한 이미지 표시. `AsyncImage` 사용
2. 로그인 실패 알림: 잘못된 비밀번호로 로그인 시 "로그인 실패" 알림 띄우기. ViewModel에 `loginError: String?` 상태 추가 후 LoginView에서 `.alert` 표시
3. 회원가입 입력 검증: 닉네임이 비어있으면 회원가입 버튼 비활성화. `.disabled(nickname.isEmpty)` 사용
4. 다이아 포인트 표시: MainView 툴바의 하드코딩된 "500"을 `userVM.currentUser?.point`로 변경
