<%@ include file="/common/taglibs.jsp"%>

<script type="text/javascript">
    //<![CDATA[
    TreeBASE.register(
        function() {
            if ( document.cookie.length > 0 )	{
                var c_name = 'citeuser';
                var c_start = document.cookie.indexOf(c_name + '=');
                if ( c_start != -1 ) {
                    c_start = c_start + c_name.length + 1;
                    var c_end = document.cookie.indexOf(';', c_start);
                    if ( c_end == -1 ) {
                        c_end=document.cookie.length;
                    }
                    var citeuser = document.cookie.substring(c_start,c_end);
                    $('citeuser').value = citeuser;
                }
            }
        }
    );
    function makeLink(points) {
        var address = '';
        for ( var i = 0; i < points.length; i++ ) {
            if ( points[i] != null ) {
                address += "&#" + points[i] + ";";
            }
        }
        var link = '<a href="mailto:' + address + '?subject=From Treebase-2 Community">';
        link += '<img class="iconButton" src="<fmt:message key="icons.email"/>" alt="Email"/> ';
        link += address + '</a>';
        return link;
    }
    function citeulike() {
        var citeuser = $('citeuser').value;
        var citeform = $('citeulike');
        if ( citeuser != null && citeuser != 'enter your citeulike user name' ) {
            document.cookie='citeuser='+citeuser;
            var bibtex = $('bibtex').textContent;
            var pasted = $('pasted');
            pasted.value = bibtex;
            citeform.action = 'http://www.citeulike.org/profile/' + citeuser + '/import_do';
            citeform.submit();
        }
        else {
            alert('Please enter your citeulike user name first!');
            $('citeuser').style.display = 'inline';
        }
    }

    function connotea() {
        $('connotea').submit();
    }

    function updateList(autocompleter, token) {
        RemotePersonService.findCompleteEmailAddress(token, function(data) { autocompleter.setChoices(data) });
    }
    function nameValueSelector(tag){
        return tag;
    }
    // nameValueSelctor(tag) method is used by all the four methods related to Auto Suggestion Box

    function updateSoftwareNameList(autocompleter, token) {
        RemoteSoftwareNameService.findCompleteSoftwareName(token, function(data) { autocompleter.setChoices(data) });
    }

    function updateJournalNameList(autocompleter, token) {
        RemoteJournalNameService.findCompleteJournalName(token, function(data) { autocompleter.setChoices(data) });
    }

    function updateUniqueOtherAlgorithmList(autocompleter, token) {
        RemoteUniqueOtherAlgorithmService.findAllUniqueOtherAlgorithmDescriptions(token, function(data) { autocompleter.setChoices(data) });
    }

    function toggle_visibility(id) {
        var e = document.getElementById(id);
        if(e.style.display == 'block')
            e.style.display = 'none';
        else
            e.style.display = 'block';
    }

    //]]>
</script>
<div class="account-container">
        <div></div>
        <div id="logo" >
            <a href="<c:url value='/home.html'/>">
            <img src="<c:url value='/images/icons/SVG/new-logo.svg'/>" alt="Logo">
            </a>
        </div>
        <c:if test="${pageContext['request'].remoteUser == null}">
            <div class="accountright">
                <a id="login" href="<c:url value="/login.jsp"/>"><fmt:message key="nav.login"/></a>
            </div>
        </c:if>
        <c:if test="${pageContext['request'].remoteUser != null}">
            <div class="accountright">
                <div class="welcome-container">
                    <div class="hoverdropdown">
                        <div id="dropdownTrigger" class="dropdown-trigger"> <!-- Clickable area -->
                            <p id="welcome-text">Welcome,</p>
                            <span id="name-text"><c:out value="${pageContext.request.remoteUser}"/></span>
                            <img id="v" src="<c:url value='/images/icons/SVG/v.svg'/>" alt="Logo">
                        </div>
                        <ul class="dropdown-menu">
                            <li><a class="header-dropdown" href="<c:url value="/logout.jsp"/>"><fmt:message key="nav.logout"/></a></li>
                            <li><a class="header-dropdown" href="<c:url value="/user/submissionList.html"/>"><fmt:message key="header.submissions"/></a></li>
                            <li><a class="header-dropdown" href="<c:url value="/user/updateProfile.html"/>"><fmt:message key="header.information"/></a></li>
                        </ul>
                    </div>
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            const dropdownTrigger = document.getElementById("dropdownTrigger");
                            const dropdownMenu = document.querySelector(".dropdown-menu");

                            dropdownTrigger.addEventListener("click", function (event) {
                                event.stopPropagation(); // Prevent the click from bubbling up to the document
                                dropdownMenu.style.display = (dropdownMenu.style.display === "block") ? "none" : "block"; // Toggle display
                            });

                            // Close dropdown when clicking outside
                            document.addEventListener("click", function () {
                                dropdownMenu.style.display = "none"; // Hide dropdown
                            });
                        });

                    </script>
                </div>
            </div>
        </c:if>
</div>
