let xhttpp = new XMLHttpRequest();

xhttpp.open('GET', '/qna/listqnaTop');

xhttpp.send();

xhttpp.addEventListener('readystatechange', function(){
    if(this.readyState==4 && this.status==200){
        console.log(this.responseText);
        document.getElementById("qnaList").innerHTML=this.responseText.trim();
    }

}); 

