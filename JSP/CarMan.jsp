<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
    jdbcDriver="com.mysql.jdbc.Driver" 
    jdbcUrl="jdbc:mysql://localhost/dwh_uas?user=root&password=" 
    catalogUri="/WEB-INF/queries/CarMan.xml">

    SELECT
        {[Measures].[QuantityProduced], [Measures].[Revenue]} ON COLUMNS,
        {[Employee].[EmployeeID].Members} ON ROWS
    FROM [ProductionCube]

</jp:mondrianQuery>

<c:set var="title01" scope="session">ProductionCube Analysis</c:set>

