<?php require_once(dirname(__FILE__).'/include/config.inc.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php echo GetHeader(); ?>
<link href="templates/default/style/webstyle.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/index.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="templates/default/js/jquery.min.js"></script>
<script type="text/javascript" src="templates/default/js/slideplay.js"></script>
<script type="text/javascript" src="templates/default/js/srcollimg.js"></script>
<script type="text/javascript" src="templates/default/js/loadimage.js"></script>
<script type="text/javascript" src="templates/default/js/top.js"></script>

</head>
<body>
<!-- header-->
<?php require_once('header.php'); ?>
<!-- /header-->


<!-- 轮播图部分 start -->
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="img/banner1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="img/banner2.jpg" alt="second slide">
        </div>
        <div class="item">
            <img src="img/banner3.jpg" alt="third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
     <img src="img/left-arrow.png" alt=""> 
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">
        <img src="img/right-arrow.png" alt="">
    </a>
  </div>
<!-- 轮播图部分 end -->

<!-- start 解决方案 -->
       <div class="solution">
		<div class="aorise-title">
			<a href="solution.html">解决方案/Solution More</a>
		</div>
		<div class="aorise-wrap"></div>
		<div class="s-content">
			<div class="container">
				<div class="row">

				<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=14 AND delstate='' AND checkinfo=true ORDER BY orderid DESC LIMIT 0,3");
				while($row = $dosql->GetArray())
				{
					//获取链接地址
					if($row['linkurl']=='' and $cfg_isreurl!='Y')
						$gourl = 'newsshow.php?cid='.$row['classid'].'&id='.$row['id'];
					else if($cfg_isreurl=='Y')
						$gourl = 'newsshow-'.$row['classid'].'-'.$row['id'].'-1.html';
					else
						$gourl = $row['linkurl'];
				?>


                    <div class="col-lg-4 col-md-4 col-xs-4" >
                        <div class="s-content-image">
							<div class="s-image">
								<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>" />
							</div>
							<div class="s-image-title"><?php echo $row['title']; ?></div>
						</div>
                    </div>
                    <?php
				}
				?>
                   
				</div>
			</div>		
		</div>
	</div>
   <!-- end 解决方案 -->
     <!-- 关于我们 start -->
   <div class="about">
   <div class="aorise-title">
			<a href="about.html">关于我们/About Us More</a>
		</div>
		<div class="aorise-wrap"></div>
		    <div class="a-content">
	         <div class="container">
	         	<div class="row">
	         	<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=15 AND delstate='' AND checkinfo=true ORDER BY orderid DESC LIMIT 1,4");
				while($row = $dosql->GetArray())
				{
					//获取链接地址
					if($row['linkurl']=='' and $cfg_isreurl!='Y')
						$gourl = 'newsshow.php?cid='.$row['classid'].'&id='.$row['id'];
					else if($cfg_isreurl=='Y')
						$gourl = 'newsshow-'.$row['classid'].'-'.$row['id'].'-1.html';
					else
						$gourl = $row['linkurl'];
				?>

                   <div class="col-lg-3 col-md-3 col-xs-3" >
                        <div class="a-content-image">
							<div class="a-image">
								<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>">
							</div>
							<div class="a-image-title"><?php echo $row['title']; ?></div>
						</div>
                    </div>
                     
                      <?php
				}
				?>

	         	</div>
	         </div>
		    </div>
   </div>
   <!-- 关于我们 end -->
   <!-- 新闻资讯 start -->
   <div class="news">
    <div class="aorise-title">
			<a href="news.html">新闻资讯/NEWS More</a>
		</div>
		<div class="aorise-wrap"></div>
			<div class="n-content">
				<div class="container">
					<div class="row">
						<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=16 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 0,1");
				while($row = $dosql->GetArray())
				{
					//获取链接地址
					if($row['linkurl']=='' and $cfg_isreurl!='Y')
						$gourl = 'newsshow.php?cid='.$row['classid'].'&id='.$row['id'];
					else if($cfg_isreurl=='Y')
						$gourl = 'newsshow-'.$row['classid'].'-'.$row['id'].'-1.html';
					else
						$gourl = $row['linkurl'];
				?>
                       <div class="col-lg-6 col-md-6 col-xs-6" >
                        <div class="n-content-image">
							<div class="n-image">
								<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>">
							</div>
							<div class="n-image-title"><?php echo $row['content']; ?></div>
						</div>
                    </div>
                      <?php
				}
				?>

                    <div class="col-lg-6 col-md-6 col-xs-6" >
							<div class="n-text">
							<ul>
							<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=16 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 1,8");
				while($row = $dosql->GetArray())
				{
					//获取链接地址
					if($row['linkurl']=='' and $cfg_isreurl!='Y')
						$gourl = 'newsshow.php?cid='.$row['classid'].'&id='.$row['id'];
					else if($cfg_isreurl=='Y')
						$gourl = 'newsshow-'.$row['classid'].'-'.$row['id'].'-1.html';
					else
						$gourl = $row['linkurl'];
				?>
								<li><i></i><?php echo $row['title']; ?>
								<time datetime="2017-3-18">2017-3-18</time>
								</li>
								
								    <?php
				}
				?>
							</ul>

		</div>
						</div>
                    </div>
					</div>
				</div>
			</div>

   </div>

   <!-- 新闻资讯 end -->
<?php require_once('footer.php'); ?>
</body>
</html>
