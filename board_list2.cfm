


<cfquery datasource="visionma" name="add_board2">
	insert into board_name(name,
							board_name,
							is_active)
	values ('#form.boardname#',
			'#form.title#',
			'yes')
</cfquery>


<cfset session.addsuccess = 'yes'>
<cflocation url="board_list.cfm">