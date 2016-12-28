<cfquery datasource="visionma" name="delete_notice_reply">
	update #boardname#
	set is_active = 'no'
	where id = #url.sid#
</cfquery>


<cflocation url="bbs_view.cfm?vid=#url.vid#&bbs=#url.bbs#">