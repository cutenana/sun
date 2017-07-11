<?php
require_once(dirname(__FILE__).'/include/config.inc.php');

//初始化参数检测正确性
$cid = empty($cid) ? 2 : intval($cid);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php echo GetHeader(1,$cid); ?>
<link href="templates/default/style/webstyle.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/about.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="templates/default/js/jquery.min.js"></script>
<script type="text/javascript" src="templates/default/js/top.js"></script>
</head>
<body>
<!-- header-->
<?php require_once('header.php'); ?>
<!-- /header-->
<!-- 头部部分 start -->
<div class="potor">
<div class="container">
	<div class="row">

				<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=15 AND delstate='' AND checkinfo=true ORDER BY orderid DESC LIMIT 0,1");
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
	<div class="subTitle"> <span class="catname"><?php echo GetCatName($cid); ?></span> <span class="fr">您当前所在位置：<?php echo GetPosStr($cid); ?></span>
		<div class="cl"></div>
	</div>
</div>

<!-- 内容部分 start -->
<div class="about-content">
<div class="container">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-xs-4">
             <div class="a-content-nav">  
	           <p>关于我们/About Us</p>
	           <ul>
	           <?php $dosql->Execute("SELECT * FROM `#@__infoclass` WHERE parentid=15 AND checkinfo=true ORDER BY orderid DESC LIMIT 0,7");
				while($row = $dosql->GetArray())
				{
					//获取链接地址
					if($row['linkurl']=='' and $cfg_isreurl!='Y')
						$gourl = 'newsshow.php?cid='.$row['parentid'].'&id='.$row['id'];
					else if($cfg_isreurl=='Y')
						$gourl = 'newsshow-'.$row['parentid'].'-'.$row['id'].'-1.html';
					else
						$gourl = $row['linkurl'];
				?>
	            <li><a href="<?php echo $row['linkurl'] ?>"><?php echo $row['classname']; ?></a></li>
	             <?php
				}
				?>
	           </ul>
           </div>
	    </div>
	    <div class="col-lg-8 col-md-8 col-xs-8">
	    <?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=25 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 0,1");
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
               <div class="a-content-img" style="padding-top: 15px;"> 
             <img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>" />
             </div>
           <?php
				}
				?>
	    </div>
	</div>
</div>
</div>
<!-- 内容部分 end -->
<!-- /mainbody-->
<!-- footer-->
<?php require_once('footer.php'); ?>
<!-- /footer-->
</body>
</html>