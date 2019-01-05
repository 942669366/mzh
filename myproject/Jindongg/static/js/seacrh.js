$(document).ready(function(){

    function jQuery3451402(searhes){
        var content = searhes["s"];
        console.log(content);
        for(var i=0;i<content.length;i++){
            var href="https://search.jd.com/Search?keyword="+content[i]+"&enc=utf-8&wq=bb&pvid=07554f2e6c484b79926372fc64f5d6e4";
            $("#afterSearch").append("<a href="+href+">"+content[i]+"</a>");
        }
        var txt = $("#search").val();
        var hrefs = "https://search.jd.com/Search?keyword="+txt+"&enc=utf-8&wq=bb&pvid=07554f2e6c484b79926372fc64f5d6e4"
        console.log(hrefs);
        $("#baidu").attr("href",hrefs);
    }

    $("#search").keyup(function(){
        var txt = $(this).val();
        $("#afterSearch a").remove();
        var url = "https://dd-search.jd.com/?terminal=pc&newjson=1&ver=2&zip=1&key="+txt+"&pvid=936186267e4f41d88cd860400ab0d41e&t=1536827501909&curr_url=www.jd.com%2F&callback=jQuery3451402";
        $("#baidu").attr("href",url);
        $.ajax({
            type:"get",
            url:url,
            dataType:"jsonp"
        });
    })
})
