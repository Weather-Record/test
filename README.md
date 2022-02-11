<0212>
1. Login 기능 완성 -> Login 성공시, alert로 "Welcome nickname!" 알림 후, 메인 화면으로 전환.
2. Sign In은 현재 PostMapping으로 되어있지만, js 파일에서 get으로 받는 코드를 comment 해놓음. (얼마나 다른지 궁금한 분들은 슬쩍 보시길...)

# test
<0210>
1. signup 수정 -> 중복검사 버튼 추가, 회원가입과 리다이렉트는 수행되나 수정할 부분 있음
2. 회원가입, 로그인 폼 생성
3. 레이아웃-> tiles/basic.jsp -> 해당 레이아웃을 사용하려면 controller에서 리턴해주는 뷰의 이름 뒤에 .page 를 붙이면 레이아웃이 들어감 
