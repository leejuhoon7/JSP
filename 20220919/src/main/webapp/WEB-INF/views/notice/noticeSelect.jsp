<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div align="center">
      
      </div>
      <div>
         <h1>게시글 상세보기</h1>
      </div>
      <div>
         <table border="1">
            <tr>
               <th width="100">작성자</th>
               <td width="100" align="center">${vo.noticeWriter }</td>
               <th width="100">작성일자</th>
               <td width="100"  align="center">${vo.noticeDate }</td>
               <th width="100">조회수</th>
               <td width="100"  align="center">${vo.noticeHit }</td>
            </tr>
            <tr>
               <td>제목</td>
               <td colspan="5">${vo.noticeTitle }</td>
            </tr>
            <tr>
               <td>글내용</td>
               <td colspan="5">
               <textarea  rows="10" cols="80" readonly>${vo.noticeSubject }</textarea>
               </td>
            </tr>
            <tr>
               <td>첨부파일</td>
               <td colspan="5">${vo.noticeAttech }</td>
            </tr>
         </table>
      </div><br>
      <div>
         <!-- vo.noticeWriter와 세션에 담긴 name과 같으면 -->
         <c:if test="${vo.noticeWriter eq name }">
            <button type="button" onclick="subCall('E')">수정</button>&nbsp;&nbsp;
            <button type="button" onclick="subCall('D')">삭제</button>&nbsp;&nbsp;
         </c:if>
         <button type="button" onclick="location.href='noticeSelectList.do'">목록</button>
      </div>
      <div>
         <form id="frm" method="post">
            <input type="hidden" id="id" name="id" value="${vo.noticeId }">
         </form>
      </div>
   </div>
   <script type="text/javascript">
      function subCall(str){
         if(str == 'E') {
            frm.action = "noticeEditForm.do";
         } else {
            frm.action = "noticeDelete.do";
         }
         
         frm.submit();
      }
   </script>
</body>
</html>