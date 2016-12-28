



<cfquery name="getUser" datasource="visionma">
	select *
	from user
	where email = '#form.email#' and password = '#form.password#' and is_active = '1' 
</cfquery>

<cfoutput>

<cfif #getUser.RecordCount# GT 0>

	<cfset session.userID = #getUser.id#>
	<cfset session.userType = #getUser.user_type#>
    <cfset session.login = '1'>
    <cfset page = "index.cfm">
	

	<cflocation url="index.cfm">


<cfelse>
	
	<CFSET STRUCTCLEAR(SESSION)>
	<cfobjectcache action="clear" />
	<cflocation url="login.cfm">

</cfif>

</cfoutput>

