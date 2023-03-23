

function deleteValue() {
    let url="./delete"
    let valueArr = new Array()
    let list = $("input[name='chkList']")
    for(let i=0; i<list.length; i++) {
        if(list[i].checked) {
            valueArr.push(list[i].value)
        }
    }

    if(valueArr.length == 0) {
        alert("삭제하려는 상품을 선택하세요")
    }else {
        let check = confirm("정말 삭제하시겠습니까?")

        $.ajax( {
            url : url,
            type :  'POST',
            traditional:true,
            data : {
                productNum : valueArr,
                
            },
            success : function(jdata) {
                alert("상품이 삭제되었습니다")
                location.replace("./list")
            }
        })
        
    }

}
