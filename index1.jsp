<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>抢座2.0</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    
    </head>

    <body>


        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="ç½ç«æ¨¡æ¿">ç½ç«æ¨¡æ¿</a></div>

        <div class="register-container container">
            <div class="row">
                <div class="iphone span5">
                    <img src="assets/img/timg.jpg" alt="">
                </div>
                <div class="register span6">
                    <form action="" method="post" onsubmit="return myfunction()">
                        <h2> 抢座脚本 <span class="red"><strong>信息填写</strong></span></h2>
                        <label for="Username">学号</label>
                        <input type="text" id="Username" name="Username" placeholder="输入学号..."  maxlength=12 onkeyup="if(!/^\d+$/.test(this.value)) {this.value=this.value.replace(/[^\d]+/g,'');}" / />
                        <label for="password">密码</label>
                        <input type="password" id="password" name="password" placeholder="输入登录密码...">
                        <label for="library">自习室</label>
                         <select id="library" name="library">
                         <option value="secondN">二楼北</option>
                         <option value="secondS">二楼南</option>
                         <option value="thirdN">三楼北</option>
                         <option value="thirdS">三楼南</option>
                         </select>
                        <label for="seat_id">座位号</label>
                        <input type="text" id="seat_id" name="seat_id" placeholder="请输入你想要的座位号..." maxlength=3 />
                        <label for="data">日期</label>
                         <input type="radio" id="date" name="date" value="today" checked="checked">今天
                         <input type="radio" id="date" name="date" value="tomorrow">明天<br>
                         <label for="strat">开始时间</label>
                        <select id="start" name="start">
                         <option value="7">7：00</option>
                         <option value="8">8：00</option>
                         <option value="9">9：00</option>
                         <option value="10">10：00</option>
                         <option value="11">11：00</option>
                         <option value="12">12：00</option>
                         <option value="13">13：00</option>
                         <option value="14">14：00</option>
                         <option value="15">15：00</option>
                         <option value="16">16：00</option>
                         <option value="17">17：00</option>
                         <option value="18">18：00</option>
                         <option value="19">19：00</option>
                         </select>
                         <label for="during">使用时长</label>
                          <select id="during" name="during">
                         <option value="3">3</option>
                         <option value="4">4</option>
                         <option value="5">5</option>
                         <option value="6">6</option>
                         <option value="7">7</option>
                         <option value="8">8</option>
                         <option value="9">9</option>
                         <option value="10">10</option>
                         <option value="11">11</option>
                         <option value="12">12</option>
                         <option value="13">13</option>
                         <option value="14">14</option>
                         <option value="15">15</option>
                         </select>
                        <button type="submit">提交</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript">
          $(document).ready(function(){
          $("input#Username").keyup(function(){
          if ($("input#Username").val().length>=12){
          alert('请输入12位学号')
          } 
          });
         });
        </script>
        <script type="text/javascript">
	    function myfunction(){
		var start=document.getElementById("start").value;
		var during=document.getElementById("during").value;
		var m = Number(start) + Number(during);
		if(start=='19' &&during!='3'){
			alert("时长不可超过3小时");
			//window.location.reload();
            //阻止表单提交
			return false;
		}
		if(m>22){
			alert("预约时间超出规定,最晚预约至22点");
			//window.location.reload();
			return false;
		}
		return true;
	}
		
</script>

    </body>

</html>