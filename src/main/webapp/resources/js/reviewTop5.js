let xhttp = new XMLHttpRequest();

xhttp.open('GET', '/review/listTop');

xhttp.send();

xhttp.addEventListener('readystatechange', function(){
    if(this.readyState==4 && this.status==200){
        console.log(this.responseText);
        document.getElementById("reviewList").innerHTML=this.responseText.trim();
    }

}); 

