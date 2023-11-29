<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="constants.AttributeConst" %>

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<fmt:parseDate value="${report.reportDate}" pattern="yyyy-MM-dd" var="reportDay" type="date" />
<label for="${AttributeConst.REP_DATE.getValue()}">日付</label><br />
<input type="date" name="${AttributeConst.REP_DATE.getValue()}" id="${AttributeConst.REP_DATE.getValue()}" value="<fmt:formatDate value='${reportDay}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label>氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />


<%-- 追記--%>

<label for="${AttributeConst.EMP_CLIENT.getValue()}">顧客名</label><br />
<input type="text" name="${AttributeConst.EMP_CLIENT.getValue()}" id="${AttributeConst.EMP_CLIENT.getValue()}" value="${report.employee.client}" />
<br /><br />

<label for="${AttributeConst.REP_BNTITLE.getValue()}">商談タイトル</label><br />
<input type="text" name="${AttributeConst.REP_BNTITLE.getValue()}" id="${AttributeConst.REP_BNTITLE.getValue()}" value="${report.bnTitle}" />
<br /><br />

<label for="${AttributeConst.REP_BNCONTENT.getValue()}">商談内容</label><br />
<textarea  name="${AttributeConst.REP_BNCONTENT.getValue()}" id="${AttributeConst.REP_BNCONTENT.getValue()}" rows="10" cols="50">${report.bnContent}</textarea>
<br /><br />

<%-- 追記--%>




<label for="${AttributeConst.REP_TITLE.getValue()}">日報タイトル</label><br />
<input type="text" name="${AttributeConst.REP_TITLE.getValue()}" id="${AttributeConst.REP_TITLE.getValue()}" value="${report.title}" />
<br /><br />

<label for="${AttributeConst.REP_CONTENT.getValue()}">日報内容</label><br />
<textarea  name="${AttributeConst.REP_CONTENT.getValue()}" id="${AttributeConst.REP_CONTENT.getValue()}" rows="10" cols="50">${report.content}</textarea>
<br /><br />
<input type="hidden" name="${AttributeConst.REP_ID.getValue()}" value="${report.id}" />
<input type="hidden" name="${AttributeConst.TOKEN.getValue()}" value="${_token}" />
<button type="submit">投稿</button>