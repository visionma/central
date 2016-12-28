

<cfquery datasource="visionma" name="updateForum">
  update #form.boardname2#
  set subject = '#form.subject#',
    	memo = '#form.memo#'
  where num = #form.id#
</cfquery>




<cflocation url="bbs.cfm?sp=Y&bbs=#form.bbs#">