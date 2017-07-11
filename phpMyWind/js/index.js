$(function(){
	// 找到点的位置
   $(".slider-bar li").click(function(){
      // 找到li的属性 attr是获得属性
       var sliderNum=$(this).attr("sliderNum");
       // 给某个点加上样式,去掉其他其他点的样式
       $(this).addClass("actived").siblings().removeClass("actived");  
       // 实现点击某个序号的点就显示相对的图片
        $(".box-nav").fadeOut("500",function(){
        	$(this).css({background:"url(./img/banner"+sliderNum+".jpg)"}).fadeIn("500");
        })
   })
})