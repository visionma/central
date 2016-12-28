
<cfif structKeyExists(form, "submit")>

  <cfinclude template="emb_add3.cfm">

<cfelseif structKeyExists(form, "reset")>

  <cfset StructClear(Session)>
  <cflocation url="index.cfm">


<cfelse>

  <cfset session.shipping_date = '#form.shipping_date#'>
  <cfset session.sales_rep = "#form.sales_rep#">
  <cfset session.so_numbers = "#form.so_numbers#">
  <cfset session.customer_id = "#form.customer_id#">
  <cfset session.customer_name = "#form.customer_name#">
  <cfset session.street_address = "#form.street_address#">
  <cfset session.city_state_zip = "#form.city_state_zip#">
  <cfset session.email = "#form.email#">
  <cfset session.phone = "#form.phone#">
  <cfset session.fax = "#form.fax#">
  <cfset session.type = "#form.type#">
  <cfset session.belt_type = "#form.belt_type#">
  <cfset session.thread_color = "#form.thread_color#">
  <cfset session.special_instruction = "#form.special_instruction#">
  <cfset session.school_master_name_top = "#form.school_master_name_top#">
  <cfset session.school_master_name_bottom = "#form.school_master_name_bottom#">

  <cfset session.student_size = "#form.student_size#">
  <cfset session.student_name_top = "#form.student_name_top#">
  <cfset session.student_name_bottom = "#form.student_name_bottom#">
  <cfset session.student_rank = "#form.student_rank#">
  <cfset session.student_language = "#form.student_language#">

    <cfif structKeyExists(form, "num")>
      <cfoutput>
        <cfloop index="i" from="1" to="#form.num#">
          <cfset session["student_size_add#i#"] = #form["student_size_add#i#"]#>
          <cfset session["student_name_top_add#i#"] = #form["student_name_top_add#i#"]#>
          <cfset session["student_name_bottom_add#i#"] = #form["student_name_bottom_add#i#"]#>
          <cfset session["student_rank_add#i#"] = #form["student_rank_add#i#"]#>
          <cfset session["student_language_add#i#"] = #form["student_language_add#i#"]#>
        </cfloop>
      </cfoutput>


      <cfset num = "#form.num#" + 1>
      <cfset session.num = #num#>
      <cflocation url="emb_add.cfm?##h323">

    <cfelse>

      <cfset num = 1>
      <cfset session.num = #num#>
      <cflocation url="emb_add.cfm?##h323">

    </cfif>


</cfif>





