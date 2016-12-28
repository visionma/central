<cfset sales_rep = #form.sales_rep#>
<cfset so_numbers = #form.so_numbers#>
<cfset customer_id = #form.customer_id#>
<cfset customer_name = #form.customer_name#>
<cfset street_address = #form.street_address#>
<cfset city_state_zip = #form.city_state_zip#>
<cfset email = #form.email#>
<cfset phone = #form.phone#>
<cfset fax = #form.fax#>
<cfset type = #form.type#>
<cfset belt_type = #form.belt_type#>
<cfset thread_color = #form.thread_color#>
<cfset special_instruction = #form.special_instruction#>
<cfset school_master_name_top = #form.school_master_name_top#>
<cfset school_master_name_bottom = #form.school_master_name_bottom#>

<cfset student_size = #form.student_size#>
<cfset student_name_top = #form.student_name_top#>
<cfset student_name_bottom = #form.student_name_bottom#>
<cfset student_rank = #form.student_rank#>
<cfset student_language = #form.student_language#>

<cfoutput>
	<cfloop index="i" from="1" to="#form.num#">
	  <cfset session["student_size_add#i#"] = #form["student_size_add#i#"]#>
	  <cfset session["student_name_top_add#i#"] = #form["student_name_top_add#i#"]#>
	  <cfset session["student_name_bottom_add#i#"] = #form["student_name_bottom_add#i#"]#>
	  <cfset session["student_rank_add#i#"] = #form["student_rank_add#i#"]#>
	  <cfset session["student_language_add#i#"] = #form["student_language_add#i#"]#>
	</cfloop>
</cfoutput>


<cfif sales_rep EQ "">
	<cfset new_email = #email#>
<cfelse>
	<cfset new_email = #sales_rep#>
</cfif>


<cfmail to = "master@visionma.com" from = "#new_email#" subject = "[EMB Belt Order] #customer_name# - #session.today#" type="html">



<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>EMB Belt Order </title>
    
</head>

<body style="background-color:##d3d3d3;">

<center>

<table border="0" width="600">
	<tr>
		<td>
			<cfoutput>
				<table>
                  <tr>
                    <td bgcolor="##eeeeee">Date</td>
                    <td>#session.today#</td>
                    <td bgcolor="##eeeeee">Shipping Date</td>
                    <td>#form.shipping_date#</td>
                  </tr>
                  <tr>
                    <td bgcolor="##eeeeee">S.O.Numbers</td>
                    <td>#form.so_numbers#</td>
                    <td bgcolor="##eeeeee">Customer ID</td>
                    <td>#form.customer_id#</td>
                  </tr>
                </table>


              	<table>
                  <tr>
                    <td bgcolor="##eeeeee">Customer Name</td>
                    <td>#form.customer_name#</td>
                  </tr>
                  <tr>
                    <td bgcolor="##eeeeee">Address</td>
                    <td>#form.street_address#<br>#form.city_state_zip#</td> 
                  </tr>
                </table>



              	<table>
                  <tr>
                    <td bgcolor="##eeeeee">Email</td>
                    <td>#form.email#</td>
                    <td bgcolor="##eeeeee">Phone</td>
                    <td>#form.phone#</td>
                  </tr>
                  <tr>
                    <td bgcolor="##eeeeee">Fax</td>
                    <td>#form.fax#</td>
                    <td bgcolor="##eeeeee">Type</td>
                    <td>#form.type#</td>
                  </tr>
                  <tr>
                    <td bgcolor="##eeeeee">Belt Type</td>
                    <td>#form.belt_type#</td>
                    <td bgcolor="##eeeeee">Thread Color</td>
                    <td>#form.thread_color#</td>
                  </tr>
                </table>

                <table>
                  <tr>
                    <td bgcolor="##eeeeee">Special Instruction</td>
                  </tr>
                  <tr>
                  	<td>#form.special_instruction#</td>
                  </tr>
                </table>



                <table>
                	<tr>
                		<td colspan="2">
                			School / Master Name Side
                		</td>
                	</tr>
		              <tr>
		                <td bgcolor="##eeeeee">Top</td>
		                <td>#form.school_master_name_top#</td>
		              </tr>
		              <tr>
		                <td bgcolor="##eeeeee">Bottom</td>
		                <td>#form.school_master_name_bottom#</td> 
		              </tr>
                </table>


                <table>
                	<tr>
                		<td colspan="5">Student Name Side</td>
                	</tr>
                  <tr>
                    <td bgcolor="##eeeeee">Size</td>
                    <td bgcolor="##eeeeee">Top</td>
                    <td>#form.student_name_top#</td>
                    <td bgcolor="##eeeeee">Rank</td>
                    <td bgcolor="##eeeeee">Language</td>
                  </tr>
                  <tr>
                    <td>#form.student_size#</td>
                    <td bgcolor="##eeeeee">Bottom</td>
                    <td>#form.student_name_bottom#</td>
                    <td>#form.student_rank#</td>
                    <td>#form.student_language#</td>
                  </tr>
                </table>

                   

                    <!---- loop---->

                    <cfif structkeyexists(form,"num")>

                      <cfset new_count = #form.num# -1>

                        <cfloop index = "LoopCount" from = "1" to = #new_count#> 
                          <cfoutput>
                            
                    
                              <table>
                                <tr>
                                  <td bgcolor="##eeeeee">Size</td>
                                  <td bgcolor="##eeeeee">Top</td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_name_top_add#LoopCount#"]#
                                    </cfif>
                                    </td>
                                  <td bgcolor="##eeeeee">Rank</td>
                                  <td bgcolor="##eeeeee">Language</td>
                                </tr>
                                <tr>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_size_add#LoopCount#"]#
                                    </cfif>
                                  </td>
                                  <td bgcolor="##eeeeee">Bottom</td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_name_bottom_add#LoopCount#"]#
                                    </cfif>
                                  </td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_rank_add#LoopCount#"]#
                                    </cfif>
                                  </td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_language_add#LoopCount#"]#
                                    </cfif>
                                    </td>
                                </tr>
                              </table>

                            
                          </cfoutput>
                        </cfloop>
                    </cfif>

				</cfoutput>

			</td>
		</tr>
	</table>
</center>     
</body>
</html>
    
</cfmail>

<cflocation url="thankyou.html">