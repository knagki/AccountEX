/**
 * 
 */
function AccountCheck() {
	var sender_account = document.frm.sender_account.value.trim();
	var receiver_account = document.frm.receiver_account.value.trim();
	var amount = document.frm.amount.value.trim();

	if (sender_account == "") {
		alert("본인 계좌번호를 입력해주세요.");
		history.back();
		return false;
	}
	if (receiver_account == "") {
		alert("받는 계좌번호를 입력해주세요.");
		history.back();
		return false;
	}
	if (amount == "") {
		alert("이체 금액을 입력해주세요.");
		history.back();
		return false;
	}
	if (isNaN(sender_account) || isNaN(receiver_account) || isNaN(amount)) {
		alert("계좌번호와 이체 금액은 숫자만 입력 가능합니다.");
		history.back();
		return false;
	}

	// 모든 유효성 검사를 통과하면 폼을 제출합니다.
	document.frm.submit();
}





function open_win(url) {
	window.open(url, '이체', "width=600, height=600");
}

function goAction() {
	window.opener.location.href = 'AccountServlet?command=transaction';

	window.opener.location.reload();

}

function transfer() {
	// 부모창 새로고침
	window.opener.location.reload();

	// 1초 후에 창을 닫습니다.
	setTimeout(function() {
		window.close();
	}, 1000);
}
