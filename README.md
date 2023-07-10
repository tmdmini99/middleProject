# Link Mall(전자기기 쇼핑몰)

## 목차

- [프로젝트 개요](#프로젝트-개요)
- [팀 역할 분배](#팀-역할-분배)
- [사용 기술 및 도구](#사용-기술-및-도구)
- [기능구현](#기능구현)
  - 기능?
- [배포](#배포)
- [ISSUE](#ISSUE)

## 프로젝트 개요

<p align="center">
  <br>
    <img src="/src/main/webapp/resources/js/img/logo/logo.png">
  <br>
</p>

> **프로젝트:** 쇼핑몰 ( 전자기기 )
>
> **기획 및 제작:** 이승엽, 김희진, 전승민
>
> **분류:** 팀 프로젝트 
>
> **제작 기간:** 2023.03.06 ~ 04.14
>
> **배포일:** 미정
>
> **사용 언어:** JAVA, JAVASCRIPT, JSP, OracleDB,
> 
> **프레임 워크:** Spring Framework

## 팀 역할 분배
> **팀장:** 이승엽
> 
> 

> **팀원:** 김희진
>
> 
> **팀원:** 전승민
> 회원 : 회원가입(이메일 인증 API), 회원 수정(비밀번호 변경),ID 찾기,로그 아웃, 로그인(카카오 API)
> 상품 선택 : 상품 추가 버튼 클릭 시 첫번째 옵션선택 옵션선택 완료시 다음 옵션 선택 최종 옵션 선택시 수량 나옴
> 상품 옵션 추가 : 옵션 추가시 최대 2개의 하위옵션을 가짐 마지막 옵션에서 수량과 가격 추가


## 사용 기술 및 도구

|**Category**|**Detail**|
|:--:|:--:|
|**FrontEnd**| `HTML5`, `JavaScript`, `JQuery`, `CSS`, `BootStrap`|
|**BackEnd**| `Java(JDK 1.8)`, `Servlet`, `Spring`, `Mybatis` |
|**OS**| `Windows 10`, `Windows 11` |
|**Libray & API**| `KAKAO LOGIN API, EMAIL API` |
|**IDE**| `STS3`, `VisualStudio Code`, `DBeaver` |
|**Server**| `TOMCART 9.0.71` |
|**Document**| `Google Drive`, `ERDCloud`, `Notion` |
|**CI**| `Github` |
|**DB**| `Docker`, `Oracle` |

## 기능구현
### 1 MEMBER
#### 1-1 로그인
<img src="src/main/webapp/resources/imgs/MiddleLogin.png">
- 로그인 성공 시 로그인 성공이라는 문구가 출력된후 메인 홈페이지로 돌아감
<img src="src/main/webapp/resources/imgs/LoginSuccess.png">
-성공
<img src="src/main/webapp/resources/imgs/LoginFail.png">
-실패
#### 1-2 ID 찾기
<img src="src/main/webapp/resources/imgs/IdFind.png">
-D찾기를 클릭 시 email을 입력 → 이메일이 일치하는 아이디가 있으면 아이디 리스트 전부 출력
#### 1-3 임시 비밀번호 생성
<img src="src/main/webapp/resources/imgs/TemporaryPw.png">
-ID와 이메일 입력 시  db에서 id 와 이메일을 비 교하여 있을경우 비밀번호 변경 후 
-비밀번호 출력
<img src="src/main/webapp/resources/imgs/Untitled.png">

#### 2-1 회원가입
<img src="src/main/webapp/resources/imgs/.png">


## 배포
**미정**

## ISSUE
