const optionName = document.getElementById("optionName");
const optionValue = document.getElementById("optionValue");
const optionValue1 = document.getElementById("optionValue1");
const optionValue2 = document.getElementById("optionValue2");

const frm = document.getElementById("frm");
const btn = document.getElementById("btn");




// optionvalue 가져오기 
optionName.addEventListener("blur", function(){
  //중복검사
  let xhttp = new XMLHttpRequest();

  //url, method 뒤에는 경로 
  xhttp.open("POST", "./");

  //header
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  //요청 발생 POST일 경우 parameter 전송
  xhttp.send("optionName="+optionName.value);


  //응답 처리
  // xhttp.addEventListener("readystatechange", function(){
  //     if(this.readyState==4 && this.status==200){
  //         if(this.responseText.trim()=='true'){
  //             checks[0]=true;
  //             idResult.innerHTML="사용가능한 ID";
  //             idResult.classList.add("blueResult");
  //             idResult.classList.remove("redResult");
  //         }else {
  //             checks[0]=false;
  //             idResult.innerHTML="중복된 ID";
  //             idResult.classList.add("redResult");
  //             idResult.classList.remove("blueResult");
  //         }
  //     }
  // });
});


// optionvalue 가져오기 
optionValue.addEventListener("blur", function(){
  //중복검사
  let xhttp = new XMLHttpRequest();

  //url, method 뒤에는 경로 
  xhttp.open("POST", "./");

  //header
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  //요청 발생 POST일 경우 parameter 전송
  xhttp.send("optionName="+optionValue.value);


  //응답 처리
  // xhttp.addEventListener("readystatechange", function(){
  //     if(this.readyState==4 && this.status==200){
  //         if(this.responseText.trim()=='true'){
  //             checks[0]=true;
  //             idResult.innerHTML="사용가능한 ID";
  //             idResult.classList.add("blueResult");
  //             idResult.classList.remove("redResult");
  //         }else {
  //             checks[0]=false;
  //             idResult.innerHTML="중복된 ID";
  //             idResult.classList.add("redResult");
  //             idResult.classList.remove("blueResult");
  //         }
  //     }
  // });
});
//form 전송

btn.addEventListener("click", function(){
  //if(idCheck && pwLengthCheck && pwNullCheck && pwEqualCheck){
  if(optionName.value!=null){
      alert('값이있음');
      console.log(optionName.value)
      console.log(optionValue.value)
      console.log(optionValue1.value)
      console.log(optionValue2.value)
      btn.submit();
  }else {
      alert("확인좀용")
  }
})