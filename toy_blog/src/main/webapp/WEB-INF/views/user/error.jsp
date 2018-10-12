<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>




	<script type="text/javascript">

		alert("로그인 실패! 이름과 비밀번호를 확인해주세요");

		window.open('', '_self', ''); // 브라우저창 닫기
		/* window.close(); // 브라우저 창 닫기 */
		self.location = '/lxa/user/login';
		</script>

</html>