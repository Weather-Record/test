<0228> - *** jjy branch 참조 바람 ***
지역별 해당월의 Report 기능 추가됨.
현재 따로 웹페이지에 링크를 안 걸어놓아서 수동으로 링크 조작해야함. (http://localhost:8080/report_weather)

원래는 select* from ... where ... in ... 을 이용하여 도시가 아닌 도(state) 단위 비교 리포트를 만들려 하였으나, 
거듭된 말썽으로 아래처럼 구현함.

![image](https://user-images.githubusercontent.com/11862386/155903929-651d35d8-614e-4b37-8e10-e208863112aa.png)

<0224~26>
0226 - 회원 지역 날씨 로딩 interceptor로 이동
0224 - 회원정보수정

<0222>
1. group_id가 admin일 경우만 관리자 페이지 접근 가능
2. 로그인 성공시 화면에 사용자 설정 지역의 현재 온/습도 출력
* todo 
-> 로그인 시 profile 메뉴 접근 가능 및 profile 페이지 구현 -> 회원 정보 조회 및 수정 가능하도록
-> +α 비밀번호 분실한 경우 비밀번호 재설정 기능 추가(필수x)

<0221>
1. 회원가입시 입력값 공백제거 및 아이디 대문자로 통일 및 패스워드 인코딩(해싱)

<0217>
1. 기간별 날씨 데이터 조회
-> 현재 데이터 오는 것까지 확인됨. 요청받은 기간에 대해서 출력할 구간 결정 필요
-> 구간 결정 완료시 해당 데이터를 chart.js 라이브러리를 통해 line-chart 출력


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
