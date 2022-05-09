<%@page import="com.liferay.portal.kernel.util.PortalUtil" %>
<%@page import="com.liferay.portal.kernel.model.User" %>
<%@taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@taglib uri="http://liferay.com/tld/comment" prefix="liferay-comment" %>
<%@taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%@taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<liferay-ui:error key="sample-error" message="Sample Error" />

<liferay-portlet:actionURL name="submit" var="submitURL"/>

<liferay-comment:discussion
        className="<%= User.class.getName() %>"
        classPK="<%= PortalUtil.getUserId(request) %>"
        formAction="<%= submitURL%>"
        userId="<%= PortalUtil.getUserId(request) %>"
/>

<aui:form action="<%= submitURL%>">
    <aui:button type="submit" value="Submit" />
</aui:form>
