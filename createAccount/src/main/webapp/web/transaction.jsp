<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌 이체 내역</title>
<link rel="stylesheet" type="text/css" href="css/Account.css">
<script type="text/javascript" src="script/transaction.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h2>중앙 은행</h2>
		<h2>${customer.name}님계좌 내역</h2>	
		<h2>금액 ${account.balance}원</h2>
		<table>
			<tr>
				<td colspan="6" style="border: white; text-align: right">
					<a href="AccountServlet?command=transaction_write_form">이체</a>
				</td>
			</tr>
			<tr>
				<th>이체 날짜</th>
				<th>내계좌번호</th>
				<th>받는 사람</th>
				<th>이체 금액</th>
				<th>내통장 메모</th>
			</tr>
			<c:forEach var="transaction" items="${transaction}">
				<tr class="record">
					<td><fmt:formatDate value="${transaction.transaction_date}" type="time" /></td>
					<td>${transaction.sender_account}</td>
					<td>${transaction.receiver_account}</td>
					<td>${transaction.amount}</td>
					<td>${transaction.send_context}</td>
				</tr>
			</c:forEach>
		</table>
			<br><br>
			<input type="submit" value="돌아가기" onclick="location.href='AccountServlet?command=indexAfterLogin';">
			<!-- location.href='AccountServlet?command=transactionFormAction'; -->
	</div>
</body>
</html>