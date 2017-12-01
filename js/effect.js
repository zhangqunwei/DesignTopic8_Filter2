

function changeHref(name)
{
    //document.getElementById('vi').src ="project_html/" + name + ".html";
    document.getElementById("vi").src = "https://zhangqunwei.github.io/DesignTopic8_Filter2/project_html/" + name + ".html";

}

function flasher(){
    var swap = new Array(3);
    swap[0]="yellow";
    swap[1]="red";
    swap[2]="blue";
    swap[3]="green";
    swap[4]="skyblue";
    swap[5]="salmon";
    swap[6]="purple";
    swap[7]="pink";

    var i =Math.floor(Math.random() * 6) + 1;

    document.flash.button1.style.backgroundColor=swap[i];
    document.flash.button1.style.color="yellow";

    Stop=setTimeout("flasher()",50);

}

function stopFlash(){
    clearTimeout(Stop)
}











