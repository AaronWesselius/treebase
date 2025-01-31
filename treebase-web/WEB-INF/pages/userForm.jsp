<%@ include file="/common/taglibs.jsp"%>
<script type="text/javascript">

function checkPasswords() { 

  var x = document.getElementById("password").value;
  var y = document.getElementById("retypedpassword").value; 
 
  if(trim(x).length == 0 || trim(y).length == 0)
  {
     alert("One or both Passwords fields might be empty.");
     return false;
  }
  else if(x != y)
  {
    alert("Two passwords are not identical.");
    return false;
   } 
   return true;
} 

</script>

<title><fmt:message key="userform.title"/></title>

<c:choose>
    <c:when test="${user.id == null}">
        <content tag="heading"><fmt:message key="userform.title"/></content>
    </c:when>
    <c:otherwise>
        <content tag="heading">TreeBASE Account Information</content>
        <!-- <content tag="heading"><fmt:message key="userform.edit"/></content> -->
    </c:otherwise>
</c:choose>



<body id="info" onLoad="test();"/>
<!--
<div class="rightBackground">
    <h2>Welcome to Registration</h2>
    <p>By creating an account, you'll gain access to exclusive features and personalized services. Please fill out all fields carefully and ensure your information is accurate.</p>
    <p>We value your privacy and security, so all details are kept confidential and secure. If you have any questions during the registration process, feel free to reach out to our support team.</p>
</div>
-->

<c:choose>
	<c:when test="${user.id == null}">
		<fmt:message key="create.profile"/>
	</c:when>
	<c:otherwise>
		<fmt:message key="update.profile"/>
	</c:otherwise>
</c:choose>

<spring:bind path="user.*">
    <c:if test="${not empty status.errorMessages}">
    <div class="error">	
        <c:forEach var="error" items="${status.errorMessages}">
            <img src="<c:url value="/images/iconWarning.gif"/>"
                alt="<fmt:message key="icon.warning"/>" class="icon" />
            <c:out value="${error}" escapeXml="false"/><br />
        </c:forEach>
    </div>
    </c:if>
</spring:bind>
<div id="putFormInMiddle">

<div class="MiddleFormContainer">

    <form method="post" name="userForm" id="userForm" onsubmit="if (document.userForm.pressedButton.value != '_cancel') return validateUser(this)">

    <input type="hidden" name="id" value="<c:out value="${user.id}"/>"/>
    <div class="spacing"></div>
    <table id="styled-table" border="0" cellpadding="3">
        <tr>
            <c:choose>
                <c:when test="${empty user.id}">
                <td>
                    <div class="input-container">
                    <label for="user.username"><fmt:message key="user.username"/>:</label>
                    <spring:bind path="user.username">
                    <input type="text" class="textCell" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                    <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                    </spring:bind>
                    </div>
                </td>
                </c:when>

                <c:otherwise>
                <td>
                    <c:out value="${user.username}"/>
                </td>
                </c:otherwise>
            </c:choose>
        </tr>
        <tr>
            <td>
                <div class="input-container">
                <label for="user.password"><fmt:message key="user.password"/>:</label>
                <spring:bind path="user.password">
                <input type="password" class="textCell" name="<c:out value="${status.expression}"/>" id = "<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                </spring:bind>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="input-container">
                <label>Re-type Password:</label>

                <input type="password" class="textCell" name="retypedpassword" id ="retypedpassword"/>
                <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                </div>

            </td>
        </tr>
        <tr>
            <td>
                <div class="names">
                    <div class="input-container">
                        <label for="user.firstName"><fmt:message key="user.firstname"/>:</label>
                        <spring:bind path="user.firstName">
                            <input type="text" class="smallTextCell" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                            <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                        </spring:bind>
                    </div>
                    <div class="input-container">
                        <label for="user.lastName"><fmt:message key="user.lastname"/>:</label>
                        <spring:bind path="user.lastName">
                        <input type="text" class="smallTextCell" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                        <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                        </spring:bind>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="input-container">
                    <label for="user.middleName"><fmt:message key="user.middlename"/>:</label>
                    <spring:bind path="user.middleName">
                        <input type="text" class="smallTextCell" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                        <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                    </spring:bind>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="input-container">
                <label for="user.phone.number"><fmt:message key="user.phone.number"/>:</label>
                <spring:bind path="user.phoneNumber">
                <input size=25 type="text" class="textCell" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                </spring:bind>
                    <p>Adding a phone number is not mandatory</p>
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <div class="input-container">
                    <label for="user.emailAddressString"><fmt:message key="user.emailaddressstring"/>:</label>
                    <spring:bind path="user.emailAddressString">
                        <input placeholder="youremail@gmail.com" size=40 type="text" class="textCell" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>"/>
                        <span class="fieldError"><c:out value="${status.errorMessage}"/></span>
                    </spring:bind>
                </div>
            </td>
        </tr>

        <tr>

            <td class="buttonBar">
                <c:choose>
                <c:when test="${user.id == null}">
                    <input class="register-button"  type="submit" name="Submit" value="<fmt:message key="button.register"/>" onClick="return checkPasswords();" />
                </c:when>
                <c:otherwise>
                    <input class="register-button"  type="submit" name="Update" value="<fmt:message key="button.update"/>" />
                </c:otherwise>
                </c:choose>
                <input type="hidden" name="pressedButton" value="">
                <input class="register-button" type="reset" name="Reset" value="<fmt:message key="button.reset"/>" />
                <input class="register-button" type="submit" name="_cancel" value="<fmt:message key="button.cancel"/>" onClick="document.userForm.pressedButton.value = '_cancel';" />
                <div class="spacing"></div>

            </td>
        </tr>
    </table>
    </fieldset>
    </form>
</div>
</div>
<script type="text/javascript">
	function test(){
 //   	form.focusFirstElement(document.forms["userForm"]);
 //   	highlightFormElements();
    }
</script>

<v:javascript formName="user" staticJavascript="false"/>
<script type="text/javascript" src="<c:url value="/scripts/validator.jsp"/>"></script>
