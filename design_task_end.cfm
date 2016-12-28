


<cfquery datasource="visionma" name="inactive_design_task">
  update design_task
  set is_active = '0'
  where id = '#url.id#'
</cfquery>

<cflocation url="design_task.cfm">