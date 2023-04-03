$('.btnP').on("click", function(){
    let val = parseInt($(this).prev().val(),10) + 1;
    $(this).prev().val(val);
    let price = parseInt($(this).parent().parent().prev().html(), 10);
    let totalPrice = val * price;
    $(this).parent().parent().next().html(totalPrice);
    
    let orderNum = parseInt($(this).parent().parent().prev().prev().children(".orderNum").html(), 10);
    $.ajax({
        type:"POST",
        url : "./cartUpdate",
        data:{
            orderNum : orderNum,
            totalPrice : totalPrice,
            productEa : val
        }
    })
})

$('.btnN').on("click", function(){
    let val = parseInt($(this).next().val(),10) - 1;
    $(this).next().val(val);
    let price = parseInt($(this).parent().parent().prev().html(), 10);
    let totalPrice = val * price;
    $(this).parent().parent().next().html(totalPrice);
    
    let orderNum = parseInt($(this).parent().parent().prev().prev().children(".orderNum").html(), 10);
    $.ajax({
        type:"POST",
        url : "./cartUpdate",
        data:{
            orderNum : orderNum,
            totalPrice : totalPrice,
            productEa : val
        }
    })
})

$('.cartDelete').on("click", function(){
    let orderNum = parseInt($(this).parent().prev().prev().prev().prev().children(".orderNum").html(), 10);
    $.ajax({
        type:"POST",
        url : "./cartDelete",
        data:{
            orderNum : orderNum
        }
        ,success : function(){
            location.href="/cart/cartList"
        }
    })
})