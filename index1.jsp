<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>����2.0</title>
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


        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="�0�4�0�5�0�7�0�4�0�0�0�5�0�3���0�3�0�3�0�9�0�7">�0�4�0�5�0�7�0�4�0�0�0�5�0�3���0�3�0�3�0�9�0�7</a></div>

        <div class="register-container container">
            <div class="row">
                <div class="iphone span5">
                    <img src="assets/img/timg.jpg" alt="">
                </div>
                <div class="register span6">
                    <form action="" method="post" onsubmit="return myfunction()">
                        <h2> �����ű� <span class="red"><strong>��Ϣ��д</strong></span></h2>
                        <label for="Username">ѧ��</label>
                        <input type="text" id="Username" name="Username" placeholder="����ѧ��..."  maxlength=12 onkeyup="if(!/^\d+$/.test(this.value)) {this.value=this.value.replace(/[^\d]+/g,'');}" / />
                        <label for="password">����</label>
                        <input type="password" id="password" name="password" placeholder="�����¼����...">
                        <label for="library">��ϰ��</label>
                         <select id="library" name="library">
                         <option value="secondN">��¥��</option>
                         <option value="secondS">��¥��</option>
                         <option value="thirdN">��¥��</option>
                         <option value="thirdS">��¥��</option>
                         </select>
                        <label for="seat_id">��λ��</label>
                        <input type="text" id="seat_id" name="seat_id" placeholder="����������Ҫ����λ��..." maxlength=3 />
                        <label for="data">����</label>
                         <input type="radio" id="date" name="date" value="today" checked="checked">����
                         <input type="radio" id="date" name="date" value="tomorrow">����<br>
                         <label for="strat">��ʼʱ��</label>
                        <select id="start" name="start">
                         <option value="7">7��00</option>
                         <option value="8">8��00</option>
                         <option value="9">9��00</option>
                         <option value="10">10��00</option>
                         <option value="11">11��00</option>
                         <option value="12">12��00</option>
                         <option value="13">13��00</option>
                         <option value="14">14��00</option>
                         <option value="15">15��00</option>
                         <option value="16">16��00</option>
                         <option value="17">17��00</option>
                         <option value="18">18��00</option>
                         <option value="19">19��00</option>
                         </select>
                         <label for="during">ʹ��ʱ��</label>
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
                        <button type="submit">�ύ</button>
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
          alert('������12λѧ��')
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
			alert("ʱ�����ɳ���3Сʱ");
			//window.location.reload();
            //��ֹ���ύ
			return false;
		}
		if(m>22){
			alert("ԤԼʱ�䳬���涨,����ԤԼ��22��");
			//window.location.reload();
			return false;
		}
		return true;
	}
		
</script>

    </body>

</html>