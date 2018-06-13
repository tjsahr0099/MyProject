테이블 명명 규칙
테이블 T_테이블명
뷰 V_뷰명

T_ALL_SEQ 테이블은 시퀀스 테이블이다.
시퀀스 명은 기능명_SEQ로 만든다.
DAO파일을 생성한 경우 항상 AbstractDAO를 상속 받는다.

SQL파일을 새로 생성할 경우 mapper폴더 안에 기능명으로 폴더를 하나 만들 후 그안에 기능명_SQL.xml 파일을 만든다.

클래스파일, 인터페이스파일은 대문자로 시작 후 카멜 표기법 사용
jsp파일은 소문자로 시작 후 카멜 표기법 사용

webapp/resources/css
webapp/resources/image
webapp/resources/js


2018-06-13 작성
부트스트랩 추가함. 기존 폴더 기준으로 가지 않고 resources바로 밑에 부트스트랩 프레임워크 폴더 전체를 붙여 넣음. js와 css등 여러 폴더가 합쳐져 있어서 이렇게 함.
기존 css제거하고 부트스트랩으로 변경할 예정임.

참고
https://www.w3schools.com/booTsTrap/bootstrap_tables.asp
http://bootstrapk.com/components/#wells


메뉴 부분 수정. 부트스트랩 추가. 메뉴 선택 표시 추가
게시판 리스트 부분 부트스트랩 추가.
게시판 페이징 추가 중...

log4j리믹스 수정
-쿼리 출력, 스프링오류 출력

