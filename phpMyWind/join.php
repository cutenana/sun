<?php require_once(dirname(__FILE__).'/include/config.inc.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php echo GetHeader(1,0,0,'人才招聘'); ?>
<link href="templates/default/style/webstyle.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/join.css"/>
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

				<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=27 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 0,1");
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
	<div class="subTitle"> <span class="catname">人才招聘</span> <span>您当前所在位置：<a href="<?php echo $cfg_webpath; ?>">首页</a> &gt; <a href="join.php">人才招聘</a></span>
		<div class="cl"></div>
	</div>
</div>
<!-- /mainbody-->

<!-- 前言部分 start -->
<div class="preface">
	<div class="container">
		<div class="row">
		<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=27 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 1,1");
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
              <div class="preface-text">
     	<h2><?php echo $row['title']; ?></h2>
     	<p><?php echo $row['content']; ?></p>
     	<span><h3>请输入职位</h3><input type="text" name="text" value="关键字..."/><input type="submit" value="搜索" /></span>
     </div>
	    </div>
	    <?php
				}
				?>
		</div>
	</div>
</div>
<!-- 前言部分 end -->

<!-- 内容部分 start-->
<?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=27 AND delstate='' AND checkinfo=true ORDER BY orderid DESC LIMIT 0,7");
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
<div class="j-content">
	<div class="container">
			<div class="row">
			<div class="col-lg-12 col-md-12 col-xs-12">
              <div class="j-content-text">
		     	    <h2><?php echo $row['title']; ?></h2>
		     		<p>职位描述：</p>
		     		<p><?php echo $row['content']; ?></p>
		     		<p><mark class="bgcolor">发布时间</mark><time datetime="2015-09-15 ">2015-09-15 </time>有效时间：<mark class="bluecolor"><?php echo $row['keywords']; ?></mark></p>
	        </div>
	     </div>     
	</div>
  </div>
</div>
           <?php
				}
				?>
				
<!-- 内容部分 end-->
<!-- footer-->
<?php require_once('footer.php'); ?>
<!-- /footer-->
</body>
</html>