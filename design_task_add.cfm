
<cfset new_Date = #Dateformat(now(), "mm-dd-yyyy")#>


<cfif structKeyExists(form, "rush") and trim(form.rush) eq 'on'>

  <cfset rush = 'on'>

<cfelse>

  <cfset rush = 'off'>

</cfif>


<cfquery datasource="visionma" name="design_task_add">
  insert into design_task(rep,
  						acc,
  						rush,
  						type,
  						ref,
  						required,
  						shipping,
  						memo,
  						pr,
  						is_active,
  						date)
  values ('#form.rep#',
      '#form.acc#',
      '#rush#',
      '#form.type#',
      '#form.ref#',
      '#form.required#',
      '#form.shipping#',
      '#form.memo#',
      '#form.pr#',
      '1',
      '#new_Date#')
</cfquery>

<cflocation url="design_task.cfm">