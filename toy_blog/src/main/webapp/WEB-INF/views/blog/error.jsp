<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>




	<script type="text/javascript">

		alert("오류가 발생하였습니다. 이전으로 돌아갑니다.");

		window.open('', '_self', ''); // 브라우저창 닫기
		/* window.close(); // 브라우저 창 닫기 */
		self.location = '/lxa/blog/list';
		</script>

</html>