//const del = document.getElementById("delete");
const frm = document.getElementById("frm");
const update = document.getElementById("update");
//const productEa = document.getElementsByClassName("productEa");
//const totalPrice = document.getElementsByClassName("totalPrice");
const buttonTable = document.getElementsByClassName("buttons");
const list = document.getElementById("list");

//const orderNum = document.getElementsByClassName("orderNum");

let updateCheck;
let updateEA;

list.addEventListener('click', function(e){
    let idx = e.target.parentNode.parentNode.getAttribute('data-all-idx');
    
    if(e.target.classList.contains('update')){
        let update = document.getElementById('update-' + idx);
        let productEa = document.getElementById('productEa-' + idx);
        for(btn of buttonTable){
            btn.innerHTML='';
        }
        let val = productEa.innerText;
        let buttons = document.getElementById('buttons-' + idx);
        productEa.innerHTML = '<input class="productEA" id="updateEA" type="number" name="productEa" data-all-idx="'+ idx +'" step="1" value="' + val + '">';
        buttons.innerHTML='<button type="button" class="btn btn-primary updateCheck" id="updateCheck">Update</button>';
    }
    if(e.target.classList.contains('delete')){
        let del = document.getElementById('delete-' + idx);
        let orderNum = document.getElementById("orderNum-"+idx).innerText;
        let check = window.confirm("정말 삭제 하시겠습니까?");
        
        if(check){
            fetch('./cartDelete', {
            method : 'POST',
            headers : {"Content-type": "application/x-www-form-urlencoded"},
            body : "orderNum=" + orderNum
            }).then((response)=> response.text() )
            .then((res)=> {
            if(res.trim() == 1){
                alert("성공")
                location.reload();
            }else{
                alert("실패")
            }
            }).catch(()=>{
            alert('에러');
            })
        }
    }
    if(e.target.classList.contains('updateCheck')){
        idx = e.target.parentNode.getAttribute('data-all-idx');;
        let ea = document.getElementById("updateEA").value;
        let total = document.getElementById("totalPrice-"+idx).innerText;
        let orderNum = document.getElementById("orderNum-"+idx).innerText;
        //.innerText;
        fetch('./cartUpdate', {
            method : 'POST',
            headers : {"Content-type": "application/x-www-form-urlencoded"},
            body : "orderNum=" + orderNum +"&productEa=" + ea + "&totalPrice=" + total
        }).then((response)=> response.text() )
        .then((res)=> {
            if(res.trim() == 1){
                alert("성공")
                location.reload();
            }else{
                alert("실패")
            }
        }).catch(()=>{
            alert('실패');
        })
    }
    
    
})
list.addEventListener('change', function(e){
    
    if(e.target.classList.contains('productEA')){
        let idx = e.target.getAttribute('data-all-idx');
        let total = document.getElementById('totalPrice-'+idx);
        let price = document.getElementById("price-"+idx).value;
        console.log(price);
        total.innerText = price * document.getElementById('updateEA').value;
    }
})

// del.addEventListener("click", function(){
//     let check = window.confirm("정말 삭제 하시겠습니까?");
//     if(check){
//         frm.setAttribute("action", "./cartDelete");
//         frm.setAttribute("method", "post");
//         frm.submit();
//     }
// })

// update.addEventListener("click", function(){
//     let val = productEa.innerText;
//     productEa.innerHTML = '<input class="productEA" id="updateEA" type="number" name="productEa" step="1" value="' + val + '">';
//     buttons.innerHTML='<button type="button" class="btn btn-primary updateCheck">Update</button>';
//     //update2 = document.getElementById("update2");
//     //updateEA = document.getElementById("updateEA")
// })

// buttons.addEventListener('focusout', function(e){
//     if(e.target.classList.contains('productEA')){
//         totalPrice.innerText = price * this.value;
//     }
// })

// buttons.addEventListener('click', function(e){
    
//     if(e.target.classList.contains('update')){
//         console.log(this.getAttribute('data-all-idx'));
//         let updatebtn = document.getElementById("update-");
//     }

//     if(e.target.classList.contains('updateCheck')){
//         let ea = document.getElementById("productEA").value;
//         let total = totalPrice.innerText;
//         fetch('./cartUpdate', {
//             method : 'POST',
//             headers : {"Content-type": "application/x-www-form-urlencoded"},
//             body : "orderNum=" + orderNum +"&productEa=" + ea + "&totalPrice=" + total
//         }).then((response)=> response.text() )//then(function(response){response.text()})
//         .then((res)=> {
//             if(res.trim() == 1){
//                 alert("성공")
//                 location.reload();
//             }else{
//                 alert("실패")
//             }
//         }).catch(()=>{
//             alert('실패');
//         })
//     }
    
// });





///updateEA.addEventListener

// update2.addEventListener("click", function(){
//     let ea = document.getElementById("updateEA").value;
//     let total = totalPrice.innerText;
//     fetch('./cartList', {
//         method : 'POST',
//         headers : {"Content-type": "application/x-www-form-urlencoded"},
//         body : "productEa=" + ea + "&totalPrice=" + total
//     }).then((response)=> response.text() )//then(function(response){response.text()})
//     .then((res)=> {
//         if(res.trim() == 1){
           
//         }else{
            
//         }
//     }).catch(()=>{
//         alert('실패');
//     })
// })