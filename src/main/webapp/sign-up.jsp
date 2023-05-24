<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Our TodoList - Login</title>
	<jsp:include page="/structure-pages/structure-head.jsp"></jsp:include>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/signUp-validation.js" defer></script>
</head>
<body themebg-pattern="theme1">

<!-- Pre-loader start -->
  <div class="theme-loader">
      <div class="loader-track">
          <div class="preloader-wrapper">
              <div class="spinner-layer spinner-blue">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
              <div class="spinner-layer spinner-red">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
            
              <div class="spinner-layer spinner-yellow">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
            
              <div class="spinner-layer spinner-green">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Pre-loader end -->
  
  <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <form id="form-signUp" class="md-float-material form-material" method="POST" action="<%= request.getContextPath()%>/signUp">
                        
                        <div class="auth-box card" style="box-shadow: 2px 2px 30px #888888;">
                            <div class="card-block">
	                            <div class="text-center">
	                            	<img src="assets/images/logo.png" alt="logo.png" style="border-radius: 50%; width: 40%;margin-bottom: 10px;">
	                        	</div>
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">Cadastre-se</h3>
                                    </div>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="text" name="name" class="form-control name" required="required">
                                    <span class="form-bar"></span>
                                    <label class="float-label name-label">Nome</label>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="text" name="lastName" class="form-control lastName" required="required">
                                    <span class="form-bar"></span>
                                    <label class="float-label lastName-label">Sobrenome</label>
                                </div>
                                
                                <div class="form-group form-primary">
                                	<p style="font-size: 14px;">Data de Nascimento</p>
                                	<div class="form-row">
                                		<div class="col-md-4 col-4">
	                                		<input type="text" name="day" class="form-control birthDay" required="required">
		                                    <span class="form-bar"></span>
		                                    <label class="float-label day-label" style="margin-left: 5px;">Dia</label>
                                		</div>
	                                	<div class="col-sm-4 col-4">
	                                		<input type="text" name="month" class="form-control birthMonth" required="required">
		                                    <span class="form-bar"></span>
		                                    <label class="float-label month-label" style="margin-left: 5px;">Mês</label>
	                                	</div>
	                                	<div class="col-sm-4 col-4">
	                                		<input type="text" name="year" class="form-control birthYear" required="required">
		                                    <span class="form-bar"></span>
		                                    <label class="float-label year-label" style="margin-left: 5px;">Ano</label>
	                                	</div>
	                                </div>
                                </div>
                                
                                <div>
                                	<p style="font-size: 14px;">Gênero</p>
                                	<div class="form-group text-center form-row" style="justify-content: start;">
	                                	<div class="col-sm-4 col-4">
										  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="feminino">
										  <label class="form-check-label" for="inlineRadio1" style="padding-left: 0px;">Feminino</label>
										</div>
										<div class="col-sm-4 col-4">
										  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="masculino">
										  <label class="form-check-label" for="inlineRadio1" style="padding-left: 0px;">Masculino</label>
										</div>
										<div class="col-sm-4 col-4">
										  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="other">
										  <label class="form-check-label" for="inlineRadio1" style="padding-left: 0px;">Outro</label>
										</div>
                                	</div>
                                </div>
                                
                                
                                <div class="form-group form-primary">
                                    <input type="text" name="email" class="form-control email" required="required">
                                    <span class="form-bar"></span>
                                    <label class="float-label email-label">Email</label>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" id="password" name="password" class="form-control" required="required">
                                            <span class="form-bar"></span>
                                            <label class="float-label password-label">Senha</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" id="confirm-password" name="confirm-password" class="form-control" required="required">
                                            <span class="form-bar"></span>
                                            <label class="float-label confirmPassword-label">Confirmar senha</label>
	                                        </div>
	                                    </div>
	                                </div>
                                	
                                	<div>
	                                     <p style="font-size: 14px;">A senha deve possuir:</p>
	                                     <ul>
	                                     	<li class="length-character" style="font-size: 12px;">- Entre 6 e 12 caracteres;</li>
	                                     	<li class="upper-case" style="font-size: 12px;">- Ao menos uma letra maíscula;</li>
	                                     	<li class="numberPassword" style="font-size: 12px;">- Ao menos um número;</li>
	                                     	<li class="especial-character" style="font-size: 12px;">- Ao menos um caractere especial.</li>
	                                     </ul>
                                     </div>
                                     
	                                <div class="row m-t-30">
	                                    <div class="col-md-12">
	                                        <button type="button" id="signUpButton" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Cadastrar</button>
	                                    </div>
	                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>



<!-- Required Jquery -->
<script type="text/javascript" src="assets/js/jquery/jquery.min.js"></script>     <script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js "></script>     <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>     <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
<!-- modernizr js -->
    <script type="text/javascript" src="assets/js/SmoothScroll.js"></script>     <script src="assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
<!-- i18next.min.js -->
<script type="text/javascript" src="bower_components/i18next/js/i18next.min.js"></script>
<script type="text/javascript" src="bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js"></script>
<script type="text/javascript" src="bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js"></script>
<script type="text/javascript" src="bower_components/jquery-i18next/js/jquery-i18next.min.js"></script>
<script type="text/javascript" src="assets/js/common-pages.js"></script>
</body>
</html>