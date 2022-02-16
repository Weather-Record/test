<0216>
1. 지역 select 관련 script 분리
2. weathermember 테이블에 address 컬럼 추가 및 회원가입 폼에도 추가 -> address varchar(100)
   -> member_num 컬럼은 삭제하고 member_id 컬럼을 primary key로 사용해도 좋을 것 같습니다.
3. 회원가입 처리는 수행되나 페이지 이동이 안 되고 있음 -> 수정 필요
* todo list -> 회원가입시 패스워드 해시 처리, 완료되면 조회 시에도 해시된 값과 비교할 수 있도록 수정 필요


<0216>
1. log out 기능 추가. log out 시, 메인으로 전환됨 

<0213>
1. 지역별로 실시간 날씨 데이터 조회 -> 실시간 날씨 조회 메뉴
2. (1) 기능을 사용하기 위해 DB에 엑셀 파일 업로드 필요
- DB에 locgrid 테이블 생성
create table locgrid(
	id int primary key auto_increment,
	region_1 varchar(60),
	region_2 varchar(60),
	grid_x int,
	grid_y int
);
- 카카오톡으로 공유한 기상청 엑셀 파일을 관리자 페이지의 'LocGrid 업로드' 에서 업로드 -> 이를 위해서는 webapp 폴더 하단에 excel 폴더가 존재해야 함
3. 로그인 성공 시 signin 과 signup 버튼이 invisible 되고 logout 버튼만 visible
* todo list -> weathermember 테이블에 지역 컬럼 추가, 회원가입 페이지에서도 지역란 추가, 로그아웃 기능

<0212>
1. Login 기능 완성 -> Login 성공시, alert로 "Welcome nickname!" 알림 후, 메인 화면으로 전환.
2. Sign In은 현재 PostMapping으로 되어있지만, js 파일에서 get으로 받는 코드를 comment 해놓음. (얼마나 다른지 궁금한 분들은 슬쩍 보시길...)

<0210>
1. signup 수정 -> 중복검사 버튼 추가, 회원가입과 리다이렉트는 수행되나 수정할 부분 있음
2. 회원가입, 로그인 폼 생성
3. 레이아웃-> tiles/basic.jsp -> 해당 레이아웃을 사용하려면 controller에서 리턴해주는 뷰의 이름 뒤에 .page 를 붙이면 레이아웃이 들어감 
