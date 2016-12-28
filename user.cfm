<cfinclude template="header.cfm">

<div id="main" role="main">
<!-- MAIN CONTENT -->
<div id="content">
	
	
	<div class="row">
		<!-- NEW COL START -->
		<article class="col-sm-12 col-md-12 col-lg-4">
			<div class="jarviswidget jarviswidget-color-blue" id="member_age">
				<header>
					<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
					<h2>Add User </h2>
				</header>


		
<!-- widget content -->
		<div>
			<div class="widget-body no-padding">

				<cfquery name="getUserType" datasource="visionma">
					select *
					from user_type
				</cfquery>

				<cfform class="smart-form" action="user2.cfm">
					

					<fieldset>
						<section>
							<label class="label">User Type</label>
							<label class="input"> 
								<cfselect name="user_type" class="input-sm">
									<option value="">Select User Type</option>
									<cfoutput query="getUserType">
									<option value="#id#">#user_type#</option>
									</cfoutput>
								</cfselect>
							</label>
						</section>
						<section>
							<label class="label">User Name</label>
							<label class="input"> <i class="icon-append fa fa-question-circle"></i>
								<cfinput name="username" type="text" placeholder="User Name" required="yes" 
									message="username field can not be left blank">
								<b class="tooltip tooltip-top-right">
									<i class="fa fa-warning txt-color-teal"></i> 
									Input user name.</b> 
							</label>
						</section>
						<section>
							<label class="label">Email (Login ID) </label>
							<label class="input"> <i class="icon-append fa fa-question-circle"></i>
								<cfinput name="email" type="text" placeholder="Email" required="yes" 
									message="Email field can not be left blank">
								<b class="tooltip tooltip-top-right">
									<i class="fa fa-warning txt-color-teal"></i> 
									Input email.</b> 
							</label>
						</section>
						<section>
							<label class="label">Password </label>
							<label class="input"> <i class="icon-append fa fa-question-circle"></i>
								<cfinput name="password" type="password" placeholder="Password" required="yes" 
									message="Password field can not be left blank">
								<b class="tooltip tooltip-top-right">
									<i class="fa fa-warning txt-color-teal"></i> 
									Enter Password.</b> 
									<br>
								<cfinput name="password2" type="password" placeholder="Password2" required="yes" 
									message="Password field can not be left blank">
								<b class="tooltip tooltip-top-right">
									<i class="fa fa-warning txt-color-teal"></i> 
									Re-enter Password.</b> 
							</label>
						</section>
					</fieldset>
					



					<footer>
						<cfoutput>
						<cfinput name="created_at" type="hidden" value="#session.today#">
						<cfinput name="is_active" type="hidden" value="1">
						</cfoutput>
						
						<button type="reset" class="btn btn-default">
							Reset
						</button>
						<button type="submit" class="btn btn-primary">
							Submit
						</button>
						
					</footer>

					
				</cfform>

			</div>
		</div>
<!-- end widget content -->
		</div>
	</article>
	
	<!-- NEW COL START -->

<cfif structKeyExists(url,'id') and trim(url.id)>
	
<article class="col-sm-12 col-md-12 col-lg-4 slideInRight fast animated">
	
<!------update form ------->
	
	

	
	<cfquery name="getUserUpdate" datasource="visionma">
		select *
		from user
		where id = #url.id#
	</cfquery>
	
	<div class="jarviswidget jarviswidget-color-red" id="member_age">
		<header>
			<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
			<h2>Edit User</h2>
		</header>


<cfoutput>
<!-- widget content -->
<div>
	<div class="widget-body no-padding">

		<cfform class="smart-form" action="user_edit.cfm">
			

			<fieldset>
				<section>
					<label class="label">User Name</label>
					<label class="input"> <i class="icon-append fa fa-question-circle"></i>
						<cfinput name="username" type="text" placeholder="User Name" required="yes" 
							message="Username field can not be left blank" value="#getUserUpdate.username#">
						<b class="tooltip tooltip-top-right">
							<i class="fa fa-warning txt-color-teal"></i> 
							User Name.</b> 
					</label>
				</section>
				<section>
					<label class="label">Email (Login ID) </label>
					<label class="input"> <i class="icon-append fa fa-question-circle"></i>
						<cfinput name="email" type="text" placeholder="Email" required="yes" 
							message="Email field can not be left blank" value="#getUserUpdate.email#">
						<b class="tooltip tooltip-top-right">
							<i class="fa fa-warning txt-color-teal"></i> 
							Email.</b> 
					</label>
				</section>
				<section>
					<label class="label">Password </label>
					<label class="input"> <i class="icon-append fa fa-question-circle"></i>
						<cfinput name="password" type="password" placeholder="Password" required="yes" 
							message="Password field can not be left blank" value="#getUserUpdate.password#">
						<b class="tooltip tooltip-top-right">
							<i class="fa fa-warning txt-color-teal"></i> 
							Password.</b> <br>
						<cfinput name="password2" type="password" placeholder="Password2" required="yes" 
							message="Password field can not be left blank" value="#getUserUpdate.password2#">
						<b class="tooltip tooltip-top-right">
							<i class="fa fa-warning txt-color-teal"></i> 
							Password2.</b>
					</label>
				</section>
				
				<cfinput name="id" type="hidden" value="#url.id#">
			</fieldset>
			<footer>
				
				<button type="submit" class="btn btn-primary">
					Update
				</button>
				
			</footer>

			
		</cfform>

	</div>
</div>
</cfoutput>
<!-- end widget content -->
</div>
</article>
</cfif>
<!------update form end------->

<article class="col-sm-12 col-md-12 col-lg-8">
	<cfquery name="getUserList" datasource="visionma">
		select *
		from user
		order by id desc
	</cfquery>
		
		<div class="jarviswidget jarviswidget-color-darken" id="wid-id-1" data-widget-editbutton="false">
			
			<header>
				<span class="widget-icon"> <i class="fa fa-table"></i> </span>
				<h2>User List</h2>
			</header>

			<!-- widget div-->
			<div>

				<!-- widget content -->
				<div class="widget-body no-padding">

					<cfif structKeyExists(session,'addsuccess') and trim(session.addsuccess) eq "yes">
					<div class="alert alert-info no-margin fade in">
						<button class="close" data-dismiss="alert">
							×
						</button>
						<i class="fa-fw fa fa-info"></i>
						Successfully added !!
						<cfset session.addsuccess = " ">
					</div>
					<cfelseif structKeyExists(session,'delete') and trim(session.delete) eq "yes">
					<div class="alert alert-danger no-margin fade in">
						<button class="close" data-dismiss="alert">
							×
						</button>
						<i class="fa-fw fa fa-info"></i>
						Successfully deleted !!
						<cfset session.delete = " ">
					</div>
					</cfif>

					<table id="user" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>No. </th>
								<th>User</th>
								<th>Email</th>
								<th>Type</th>
								
								<th></th>
							</tr>
						</thead>
						<tbody>
							<cfoutput query="getUserList">

								<cfquery name="userType2" datasource="visionma">
									select *
									from user_type
									where id = #user_type#
								</cfquery>

							<tr>
								<td>#id#</td>
								<td>#username#</td>
								<td>#email#</td>
								<td>#userType2.user_type#</td>
								
								<td align="right">
									<a href="user.cfm?id=#id#" >
									<button type="button" class="btn btn-primary btn-xs">
										Modify
									</button></a>
									<a href="user_delete.cfm?id=#id#" >
									<button type="button" class="btn btn-default btn-xs">
										Delete
									</button></a>
								</td>
							</tr>
							
							</cfoutput>
						</tbody>
					</table>

				</div>
			</div>
		</div>
			
</article>
	
	
</div>


			
</div>

</div>
<!-- END MAIN CONTENT -->
<cfinclude template="footer.cfm">