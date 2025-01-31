<%@ include file="/common/taglibs.jsp"%>

<form method="post" id="loginForm" action="<c:url value="/j_security_check"/>" >


<%
	if(request.getParameter("importKey") != null){

       session.setAttribute("importKey",request.getParameter("importKey"));
	}
%>

<fieldset>
<legend>TreeBASE Login</legend>

<c:if test="${param.error != null}">
	<div class="error" id="loginError"
	style="margin-right: 0; margin-bottom: 3px; margin-top: 3px">
		<img src="<c:url value="/images/iconWarning.gif"/>"
			alt="<fmt:message key="icon.warning"/>" class="icon" />
		<fmt:message key="errors.password.mismatch"/>
	</div>
</c:if>

<script type="text/javascript">
//<![CDATA[
	TreeBASE.register( function() { $('j_username').focus(); } );
//]]>
</script>
<div id="center-login">
	<div>
		<label for="j_username"><em class="required"></em><fmt:message key="label.username"/></label><br/>
		<input placeholder="Username" name="j_username" class="login-textCell" id="j_username" type="text" />
	</div>
	<div>
		<label for="j_password"><em class="required"></em><fmt:message key="label.password"/></label> <br/>
		<input placeholder="Password" name="j_password" class="login-textCell" id="j_password" type="password" />
	</div>
	<input id="login-button" name="submit" type="submit" value="<fmt:message key="button.login"/>" />
</div>
<!--input name="reset" type="submit" name="reset" value="<fmt:message key="button.reset"/>" /-->
<p>
<fmt:message key="login.signup">
	<fmt:param><c:url value="/register.html"/></fmt:param>
</fmt:message>
</p>
	<p>Forgot your password? Have your <a href="<c:url value="passwordForm.html"/>">password e-mailed to you</a></p>
</fieldset>
</form>

