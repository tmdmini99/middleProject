function deleteValue() {
    let valueArr = new Array()
    let list = $("input[name='chkList']")
    for(let i=0; i<list.length; i++) {
        if(list[i].checked) {
            valueArr.push(list[i].value)
        }
    }
    if(valueArr == 0) {
        alert("삭제하려는 회원을 선택하세요")
    }else {
        let check = confirm("정말 삭제하겠습니까?")
        $.ajax ({
            url : "./memberDelete",
            type : 'POST',
            traditional : true,
    
            data : {
                id : valueArr
            },

            success : function(jdata) {
                alert("회원이 삭제되었습니다")
                location.replace("./memberList")
            }
    
        })
    }
   
}

if($("input:checkbox[id='allRole']").prop("checked", true)) {
    console.log("test2")
}


$(document).ready(() => {


    // const frm = new FormData();

    // frm.append

    
   $("#allRole").change(() => {

    let checkArr = []
    $('input:checkbox[name="roleName"]:checked').each(function(i) {
        checkArr.push($(this).val())
    }) 
        location.href = "./memberList?roleName="+checkArr;
        
        //   $.ajax({
        //     url : "./memberList",
        //     type : 'GET',
        //     traditional : true,
        //     data : {
        //        roleName : checkArr
        //     },
        //     success : function() {

        //     }
        //   })
        
   })

   $("#memberRole").change(() => {
        if($("#memberRole").is(":checked")) {
          

        }
   })

   $("#sellerRole").change(() => {
        if($("#sellerRole").is(":checked")) {
            console.log("seller")
        }
   })

   $("#adminRole").change(() => {
        if($("#adminRole").is(":checked")) {
            console.log("admin")
        }
   })
})

