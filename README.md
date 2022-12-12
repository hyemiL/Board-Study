# Board-Study

포트번호 10000
로컬 접속 주소 localhost:10000
기술스택 : 스프링부트(내장 톰캣 이용), 제이쿼리, 오라클(혹은 mysql)
아직 DB 연결 안 했음

처음 뜨는 로그인 화면에서는 아이디, 비밀번호 아무거나 입력하면 boardList.jsp로 이동함.

현재 프로젝트 내에 존재하는 화면(jsp)은 총 세 개.

[로그인]
- login.jsp

[게시판]
- boardList.jsp
- boardWrite.jsp

모든 jsp는 퍼블리셔에게 받은 초안 상태 그대로임 프로젝트에 맞게 메뉴만 게시판으로 수정한 상태!
*head, header, lnb, footer등 공통 부분은 임의로 별도 분리하여 include 했음.

현재 프로젝트 내에 존재하는 컨트롤러는 총 두 개.

[로그인]
- LoginController.java

[게시판]
- BoardController.java

LoginController에는 login.jsp로 연결되도록, 
BoardController에는 각각 boardList.jsp와 boardWrite.jsp로 연결되도록 하는 메소드만 존재.


TODO : 
1. 화면과 화면 연결하기.
  <a>태그든 <button>태그에 click 이벤트를 걸든 해서 boardList의 화면과 boardWrite의 화면을 연결하기.
  boardList에 존재하는 버튼과, 상단/좌측의 메뉴를 통해서도 이동 가능해야 함.
  
2. boardWrite 화면부터 시작.
   글을 작성하고 등록버튼을 누르면 입력값들을 컨트롤러로 보내기. 
   단, 비동기형식(ajax이용)이어야 함.

3. 컨트롤러에서 insert 관련 메소드를 생성하고, 들어온 폼 데이터를 log 찍어서 확인하기.





---


commit msg 쓰는 법

"docs:~~"   : 문서/주석 등등 관련 커밋
"fix: ~~"   : 버그 수정
"add: ~~"   : 파일, 클래스 추가
"feat: ~~"  : 기능 최초 생성
