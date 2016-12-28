


<cfquery datasource="visionma" name="update_design_task">
  update design_task
  set qu = '#form.qu#',
  		cf = '#form.cf#',
  		wa = '#form.wa#',
  		mockup = '#form.mockup#',
  		mockup2 = '#form.mockup2#',
  		memo = '#form.memo#',
  		pr = '#form.pr#'
  where id = '#form.id#'
</cfquery>

<cflocation url="design_task.cfm">