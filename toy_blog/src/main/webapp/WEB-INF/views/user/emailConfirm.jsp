<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>




	<script type="text/javascript">
		var userEmail = '${user_email}';

		alert(userEmail + '님 회원가입을 축하합니다. 더 많은 서비스를 이용할수 있습니다.');

		window.open('', '_self', ''); // 브라우저창 닫기
		/* window.close(); // 브라우저 창 닫기 */
		self.location = '/lxa';
		</script>

</html>