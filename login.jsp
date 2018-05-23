<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
 <html> 
 <head lang="en"> 
	 <meta charset="UTF-8">
	  <title>登陆</title>
	  <link rel="stylesheet" href="css/login.css">
	  <script type="text/javascript">
	      function checkForm(form) {  
	        if (form.name.value == "") {    
	          alert("用户名不能为空!");   
           form.name.focus();
              return false;          }  
        if (form.passwd.value == "") {   
           alert("密码不能为空!");       
       form.passwd.focus();  
            return false;          } 
         return true;
         
               }
       </script>
   </head>
   <body> 
 	       <form id="form" action="<%=request.getContextPath()%>/LoginAction" 
 		         method="post" onsubmit="checkForm(this);">       
 		   <div class="content">             


 			 <!--  登录面板    -->             
 			 <div class="panel">               
 				     <!--  账号和密码组    -->  
 				                <div class="group">                      <label>账号</label>

 			      <input placeholder="请输入账号" type="text"                          name="name">                    </div> 
 			                      <div class="group">                    <label>密码</label> <input placeholder="请输入密码" type="password"                          name="passwd">                  </div>          
 			            <div class="group">                    
 			     	  <label>保存时间</label> <select name="savetime">                     <option value="7">一周</option>                  <option value="30">一个月</option>                      </select>        
 			               </div>              
 			         <!--  登录按钮    -->                  <div class="login">                 
 			     	     <button type="submit">登录</button>               
 			        </div>             
 			  </div>               
 			 </div>   
 			    </form>
 			  </body> 
 			 </html>  

