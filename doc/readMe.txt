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
