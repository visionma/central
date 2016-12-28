
<cfif '#form.password#' NEQ '#form.password2#'>
	<cfset session.addsuccess = 'no'>
	<cflocation url="user.cfm">
</cfif>


<cfquery datasource="visionma" name="add_user2">
	insert into user(username, 
						email,
						password,
						password2,
						is_active,
						created_at,
						user_type)
	values ('#form.username#', 
			'#form.email#',
			'#form.password#',
			'#form.password2#',
			'#form.is_active#',
			'#form.created_at#',
			'#form.user_type#')
</cfquery>


<cfset session.addsuccess = 'yes'>
<cflocation url="user.cfm">