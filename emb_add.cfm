<cfinclude template="header.cfm">

<div id="main" role="main">
<!-- MAIN CONTENT -->
<div id="content">

<div class="row">

<cfif structkeyexists(session,"num")>
  
  <cfset shipping_date = #session.shipping_date#>
  <cfset sales_rep = #session.sales_rep#>
  <cfset so_numbers = #session.so_numbers#>
  <cfset customer_id = #session.customer_id#>
  <cfset customer_name = #session.customer_name#>
  <cfset street_address = #session.street_address#>
  <cfset city_state_zip = #session.city_state_zip#>
  <cfset email = #session.email#>
  <cfset phone = #session.phone#>
  <cfset fax = #session.fax#>
  <cfset type = #session.type#>
  <cfset belt_type = #session.belt_type#>
  <cfset thread_color = #session.thread_color#>
  <cfset special_instruction = #session.special_instruction#>
  <cfset school_master_name_top = #session.school_master_name_top#>
  <cfset school_master_name_bottom = #session.school_master_name_bottom#>
  
  <cfset student_size = #session.student_size#>
  <cfset student_name_top = #session.student_name_top#>
  <cfset student_name_bottom = #session.student_name_bottom#>
  <cfset student_rank = #session.student_rank#>
  <cfset student_language = #session.student_language#>

<cfelse>


  <cfset shipping_date = "">
  <cfset sales_rep = "">
  <cfset so_numbers = "">
  <cfset customer_id = "">
  <cfset customer_name = "">
  <cfset street_address = "">
  <cfset city_state_zip = "">
  <cfset email = "">
  <cfset phone = "">
  <cfset fax = "">
  <cfset type = "">
  <cfset belt_type = "">
  <cfset thread_color = "">
  <cfset special_instruction = "">
  <cfset school_master_name_top = "">
  <cfset school_master_name_bottom = "">

  <cfset student_size = "">
  <cfset student_name_top = "">
  <cfset student_name_bottom = "">
  <cfset student_rank = "">
  <cfset student_language = "">


</cfif>





   <div class="ibox col-lg-6 col-md-offset-3">

<cfoutput>

  <div class="gray-bg col-lg-12">
    <div class="row wrapper border-bottom white-bg page-heading">
      <div align="center">
        
        <h2>Embroidery Belt Order Form</h2>
      </div>
    </div>
      
    <div class="wrapper wrapper-content animated fadeInRight">
      <div class="row">
        <div class="ibox float-e-margins">
          <div class="ibox-content">

              <cfform method="post" class="form-horizontal" action="emb_add2.cfm">
                  <div class="form-group" align="left">
                    <label class="col-sm-3">Date</label>
                      <div class="input-group col-sm-6" align="left">
                        <input type="text" class="form-control" value="#DateFormat(session.today, "mm-dd-yyyy")#" name="date" disabled>
                      </div>
                  </div>
                  <div class="form-group" align="left">
                    <label class="col-sm-3">Shipping Date</label>
                      <div class="input-group date col-sm-6" align="left">
                          <span class="input-group-addon">
                            <i class="fa fa-calendar"></i></span>
                            <input type="text" class="form-control datepicker" data-dateformat='mm/dd/yy' name="shipping_date" <cfif structkeyexists(session,"num")>value="#shipping_date#"</cfif> required>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3 text-danger">Sales Rep</label>
                      <div class="input-group col-sm-6" align="left">
                        <cfquery name="get_emp" datasource="visionma">
                          select *
                          from employee
                          where role = 'sales'
                        </cfquery>
                        <select class="form-control m-b" name="sales_rep" required>
                          <cfif structkeyexists(session,"num")>
                            <option value="#sales_rep#" selected>#sales_rep#</option>
                          <cfelse>
                            <option value="" selected>Select Sales Rep</option>
                          </cfif>
                            <cfloop query="get_emp">
                            <option value="#id#">#firstname# #lastname#</option>
                            </cfloop>

                          
                            
                        </select>
                      </div>
                  </div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3 text-danger">S.O.Numbers</label>
                      <div class="input-group col-sm-6" align="left">
                        <input type="text" class="form-control" name="so_numbers" <cfif structkeyexists(session,"num")>value="#so_numbers#"</cfif> placeholder="Internal Use Only">
                      </div>
                  </div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3 text-danger">Customer ID</label>
                      <div class="input-group col-sm-6" align="left">
                        <input type="text" class="form-control" name="customer_id" <cfif structkeyexists(session,"num")>value="#customer_id#"</cfif>  placeholder="Internal Use Only">
                      </div>
                  </div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3">Customer Name</label>
                      <div class="input-group col-sm-6" align="left">
                        <input type="text" class="form-control" name="customer_name" <cfif structkeyexists(session,"num")>value="#customer_name#"</cfif> required  placeholder="Name of Business">
                      </div>
                  </div>
                  <div class="form-group" align="left">
                    <label class="col-sm-3">Street Address</label>
                      <div class="input-group col-sm-8" align="left">
                        <input type="text" class="form-control" name="street_address" <cfif structkeyexists(session,"num")>value="#street_address#"</cfif>  required>
                      </div>
                  </div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3">City, State, Zip</label>
                      <div class="input-group col-sm-8">
                        <input type="text" class="form-control" name="city_state_zip" <cfif structkeyexists(session,"num")>value="#city_state_zip#"</cfif> required>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3">Email</label>
                      <div class="input-group col-sm-6">
                        <input type="email" class="form-control"  name="email" <cfif structkeyexists(session,"num")>value="#email#"</cfif> required>
                      </div>
                  </div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3">Phone</label>
                      <div class="input-group col-sm-6">
                        <input type="text" class="form-control" data-mask="(999) 999-9999" name="phone" <cfif structkeyexists(session,"num")>value="#phone#"</cfif> required>
                      </div>
                  </div>
                  <div class="form-group" align="left">
                      <label class="col-sm-3">Fax</label>
                      <div class="input-group col-sm-6">
                        <input type="text" class="form-control" data-mask="(999) 999-9999" name="fax" value="#fax#">
                      </div>
                  </div>


                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <cfquery name="get_type" datasource="visionma">
                          select *
                          from emb_type
                        </cfquery>
                    <label class="col-sm-3">Type</label>
                      <div class="input-group col-sm-6">
                        <select class="form-control m-b" name="type" required>
                          <cfif structkeyexists(session,"num")>
                            <option value="#type#" selected>#type#</option>
                          <cfelse>
                            <option value="" selected>Select Type</option>
                          </cfif>
                            <cfloop query="get_type">
                              <option value="#id#">#name#</option>
                            </cfloop>
                        </select>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3">Belt Type</label>
                      <div class="input-group col-sm-6">
                        <select class="form-control m-b" name="belt_type" required>
                            <option value="#belt_type#" selected>#belt_type#</option>
                            <option value="2inch Black">2" Black</option>
                            <option value="Poom">Poom</option>
                            <option value="1.75inch Black">1.75" Black</option>
                            <option value="Single Belt">Single Belt</option>
                            <option value="Adidas Regular">Adidas Regular</option>
                            <option value="Adidas Regular">Adidas Gold</option>
                        </select>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-3">Thread Color</label>
                       <div class="input-group col-sm-6">
                        <select class="form-control m-b" name="thread_color" required>
                            <option value="#thread_color#">#thread_color#</option>
                            <option value="Gold">Gold</option>
                            <option value="White">White</option>
                            <option value="Red">Red</option>
                            <option value="Other">Other</option>
                        </select>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>
                  
                  <div class="form-group" align="left">
                    <label class="col-sm-3">Special Instruction</label>
                      <div class="input-group col-sm-6">
                        <textarea name="special_instruction" cols="55" rows="5">#special_instruction#</textarea>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-6">School / Master Name Side</label>
                    <table class="table table-bordered">
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Top</td>
                        <td>
                          <input type="text" class="form-control" name="school_master_name_top" value="#school_master_name_top#">
                        </td>
                      </tr>
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Bottom</td>
                        <td><input type="text" class="form-control" name="school_master_name_bottom" value="#school_master_name_bottom#"></td>
                      </tr>
                    </table>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-6">Student Name Side</label>

                    

                    <table class="table table-bordered">
                      <tr>
                        <td class="col-sm-2" bgcolor="##eeeeee">Size</td>
                        <td class="col-sm-1" bgcolor="##eeeeee">Top</td>
                        <td><input type="text" class="form-control" name="student_name_top" value="#student_name_top#"></td>
                        <td class="col-sm-2" bgcolor="##eeeeee">Rank</td>
                        <td class="col-sm-2" bgcolor="##eeeeee">Language</td>
                      </tr>
                      <tr>
                        <td class="col-sm-1">
                          <input type="text" class="form-control" name="student_size" value="#student_size#">
                        </td>
                        <td class="col-sm-1" bgcolor="##eeeeee">Bottom</td>
                        <td><input type="text" class="form-control" name="student_name_bottom" value="#student_name_bottom#"></td>
                        <td><input type="text" class="form-control" name="student_rank" value="#student_rank#"></td>
                        <td><input type="text" class="form-control" name="student_language" value="#student_language#"></td>
                      </tr>
                    </table>

                    <!---- loop---->

                    <cfif structkeyexists(session,"num")>

                      <cfset new_count = #session.num# -1>

                        <cfloop index = "LoopCount" from = "1" to = "#session.num#"> 
                          <cfoutput>
                            
                    
                              <table class="table table-bordered">
                                <tr>
                                  <td class="col-sm-2" bgcolor="##eeeeee">Size</td>
                                  <td class="col-sm-1" bgcolor="##eeeeee">Top</td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    <input type="text" class="form-control" name="student_name_top_add#LoopCount#" value="#session["student_name_top_add#LoopCount#"]#">
                                    <cfelse>
                                    <input type="text" class="form-control" name="student_name_top_add#LoopCount#" value="">
                                    </cfif>
                                    </td>
                                  <td class="col-sm-2" bgcolor="##eeeeee">Rank</td>
                                  <td class="col-sm-2" bgcolor="##eeeeee">Language</td>
                                </tr>
                                <tr>
                                  <td class="col-sm-1">
                                    <cfif #LoopCount# LTE #new_count#>
                                    <input type="text" class="form-control" name="student_size_add#LoopCount#" value="#session["student_size_add#LoopCount#"]#">
                                    <cfelse>
                                    <input type="text" class="form-control" name="student_size_add#LoopCount#" value="">
                                    </cfif>
                                  </td>
                                  <td class="col-sm-1" bgcolor="##eeeeee">Bottom</td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    <input type="text" class="form-control" name="student_name_bottom_add#LoopCount#" value="#session["student_name_bottom_add#LoopCount#"]#">
                                    <cfelse>
                                    <input type="text" class="form-control" name="student_name_bottom_add#LoopCount#" value="">
                                    </cfif>
                                  </td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    <input type="text" class="form-control" name="student_rank_add#LoopCount#" value="#session["student_rank_add#LoopCount#"]#">
                                    <cfelse>
                                    <input type="text" class="form-control" name="student_rank_add#LoopCount#" value="">
                                    </cfif>
                                  </td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    <input type="text" class="form-control" name="student_language_add#LoopCount#" value="#session["student_language_add#LoopCount#"]#">
                                    <cfelse>
                                    <input type="text" class="form-control" name="student_language_add#LoopCount#" value="">
                                    </cfif>
                                    </td>
                                </tr>
                              </table>

                            
                          </cfoutput>
                        </cfloop>
                    </cfif>

                    <a name="h323"></a>

                    <!------ end loop----->
                    
                    <cfif structKeyExists(session, "num")>
                      <cfset snum = #session.num#>
                      <input type="text" name="num" value="#snum#">
                    </cfif>
                    
                    <button class="btn btn-danger" type="submit" name="add">Add Row</button>
                    

                  </div>

                  <div class="hr-line-dashed"></div>



                  
                  
                  <div class="form-group">
                      <div class="col-sm-12">
                          <button class="btn btn-white" type="submet" name="reset">RESET</button>
                          <button class="btn btn-primary" type="submit" name="submit">SEND</button>
                      </div>
                  </div>
              </cfform>

          </div>
        </div>     
      </div>
    </div>
  </div>

</cfoutput>

</div>

<!------->

 </div>

</div>

</div>
<!-- END MAIN CONTENT -->
<cfinclude template="footer.cfm">