   <!-- 尾部 start -->
   <div class="footer">
         <div class="container">
		    <div class="row">
		    <?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=17 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 1,1");
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
                        <div class="f-content-image">
							<div class="f-image">
								<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>">
							</div>
							<div class="f-text"><?php echo $row['content']; ?></div>
						</div>
                    </div>
                      <?php
				}
				?>

				 <?php $dosql->Execute("SELECT * FROM `#@__infolist` WHERE classid=17 AND delstate='' AND checkinfo=true ORDER BY orderid ASC LIMIT 0,1");
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
                        <div class="f-content">
							<div class="f-con-image">
								<img src="<?php echo $row['picurl']; ?>" alt="<?php echo $row['title']; ?>">
							</div>
							<div class="f-con-text"><?php echo $row['title']; ?></div>
						</div>
                    </div>

                   <?php
				}
				?>
			</div>
		</div>
   </div>
   <!-- 尾部 end -->