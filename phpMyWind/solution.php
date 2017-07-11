<?php
require_once(dirname(__FILE__).'/include/config.inc.php');

//初始化参数检测正确性
$cid = empty($cid) ? 5 : intval($cid);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php echo GetHeader(1,$cid); ?>
<link href="templates/default/style/webstyle.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/solution.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="templates/default/js/jquery.min.js"></script>
<script type="text/javascript" src="templates/default/js/loadimage.js"></script>
<script type="text/javascript" src="templates/default/js/top.js"></script>
<script type="text/javascript">
$(function(){
    $(".product_list li img").LoadImage({width:220,height:150});
});
</script>
</head>
<body>
<!-- header-->
<?php require_once('header.php'); ?>
<!-- /header-->
<!-- 头部部分 start -->
<div class="potor">
<div class="container">
	<div class="row">
	<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=18 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 0,1");
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
      <div class="col-lg-12 col-md-12 col-xs-12">
             <div class="potor-img">
			<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>" />
		   </div>
	    </div>
         <?php
				}
				?>
	</div>
</div>
</div>
<!-- 头部部分 end -->

<!-- mainbody-->
<div class="subBody">
	<div class="subTitle"> <span class="catname">解决方案</span> <span class="fr">您当前所在位置：首页>解决方案</span>
		<div class="cl"></div>
	</div>
	</div>	
<!--mainbody-->

<!-- 内容部分 start-->
<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=18 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 1,3");
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
<div class="content">
<div class="container">
	<div class="row">
      <div class="col-lg-12 col-md-12 col-xs-12">
             <div class="content-img">
        		<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>" />
        	 </div>
             <div class="content-text">
        		<h3><a href="<?php echo $row['linkurl']; ?>"><?php echo $row['title']; ?></a></h3>
        		时间：<time datatime="2017-1-2">2017-1-2</time>
        		<p><?php echo $row['description']; ?></p>
        	</div>
	    </div>

	    </div>
	</div>
</div>
	          <?php
				}
				?>
<!-- 内容部分 end -->

<!-- footer-->
<?php require_once('footer.php'); ?>
<!-- /footer-->
</body>
</html>