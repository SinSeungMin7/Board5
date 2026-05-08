<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="shortcut icon" href="/img/favicon2.png" type="image/x-icon">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="/css/common.css" rel="stylesheet" />

<style>
  table { width:100%; }
  td {
     padding:5px 10px;
     text-align : center;
     &:nth-of-type(1) {
	     background: black;
	     color : white;
	     border:1px solid white;
	 } 
  }
  
  
   /*-------------------------------------- */
    
  input[type=text], input[type=number] {
     width : 100%;
  }
  input[type=submit], input[type=button] {
     width : 100px;
  }
  
  input[name=userid] {
  	width: 65%;
  }
  
  #table1 {
  	margin-botton: 150px;
  	td {
  		&:nth-of-type(1) {
  			width: 150px;
  			background: black;
	     	color : white;
  		}
  		&:nth-of-type(2) {
  			background: white;
	     	color : black;
  			width: 150px;
  		}
  		&:nth-of-type(3) {
  			background: black;
	    	color : white;
  			width: 150px;
  			border-bottom: 1px solid white;
  		}
  		&:nth-of-type(4) {
  			width: 150px;
  			background: white;
	     	color : black;
  		}
  	}
  
  }
  
  #table1  tr:last-of-type > td {
      background: white;
      border : 1px solid black; 
  }  
  #table1  tr:nth-of-type(3) td:nth-of-type(2) { 
      text-align: left;
  }
  #table1  tr:nth-of-type(4) {
      height: 400px;
      td:nth-of-type(2) {
      	text-align:left;
      	vertical-align: baseline;
      }
  }
  
</style>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<body> 
  <main>
  	  <%@include file="/WEB-INF/include/menus.jsp" %> 
  
    <h2>게시글 내용 보기</h2>
     <table id="table1">
      <tr>
        <td>글 번호</td>
        <td>${board.idx}</td>
        <td>조회수</td>
        <td>${board.hit}</td>
      </tr>
      <tr> 
        <td>작성자</td> 
        <td>${board.writer}</td>
        <td>작성일</td>
        <td>${board.regdate}</td>                
      </tr>
      <tr>
        <td>제목</td>
        <td colspan="3">${board.title }</td>
      </tr>
      <tr>
        <td>내용</td>
        <td colspan="4">${board.content }</td>
      </tr>
      
      <tr>
        <td colspan="4">
        	<a href="/Board/WriteForm?menu_id=${board.menu_id}" class="btn btn-primary">새글쓰기</a> <!-- https://getbootstrap.kr/docs/5.2/components/buttons/ 여기서 들고옴 스타일 -->
        	<a href="/Board/UpdateForm?idx=${board.idx}&menu_id=${board.menu_id}"class="btn btn-outline-warning">수정</a>
        	<a href="/Board/Delete?idx=${board.idx }&menu_id=${board.menu_id}"class="btn btn-outline-danger">삭제</a>
        	<a href="/Board/List?menu_id=${board.menu_id}"class="btn btn-info">목록</a>
        	<a href="/"class="btn btn-success">HOME</a>
        </td>
      </tr>
     </table>    
  
  </main>
</body>
</html>    















