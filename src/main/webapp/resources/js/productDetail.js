
///AJAX를 이용한 상품 하위 옵션 구현


//두번째 하위 옵션 
// change를 이용해 값이 변하면 자식 옵션이 생성되도록 하였음
$("#selectForm1").on("change", function(){
  let opNum = $(this).val();
  let proNum = $("#option").attr("data-productnum");
  let a = $(this);
  console.log(opNum);
  console.log(proNum);
  $.ajax({
      url : "./optionList",
      type : "POST",
      data:{
          productNum : proNum,
          ref : opNum,
          depth : 1
      },
      success : function(data) {
          console.log("성공");
          // 하위 옵션이 계속 생성되지 않도록 a.next().remove() 사용 
          a.next().remove();
          // 부모 div의 아래에 생성 
          a.parent().append(data);
      }
  })
  
});

$("#depth0").on("change", "#depth1",function(){
  let opNum = $(this).val();
  let proNum = $("#option").attr("data-productnum");
  let a = $(this);
  console.log(opNum);
  console.log(proNum);
  $.ajax({
      url : "./optionList",
      type : "POST",
      data:{
          productNum : proNum,
          ref : opNum,
          depth : 2
      },
      success : function(data) {
          console.log("성공");
          a.next().remove();
          a.parent().append(data);
      }
  })
  
});