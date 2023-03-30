$("#deleteBtn").click(() => {
    let check = window.confirm("정말 삭제하겠습니까?")
    
    if(check) {
        alert("삭제가 완료되었습니다")
        $("#frm2").submit()

    }else {
        return false;
    }
    
    
})