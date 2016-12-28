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
					<h2>Add Board </h2>
				</header>


		
<!-- widget content -->
		<div>
			<div class="widget-body no-padding">

				<cfquery name="getUserType" datasource="visionma">
					select *
					from board_name
				</cfquery>

				<cfform class="smart-form" action="board_list2.cfm">
					

					<fieldset>
						
						<section>
							<label class="label">Board DB Name</label>
							<label class="input"> <i class="icon-append fa fa-question-circle"></i>
								<cfinput name="boardname" type="text" placeholder="Board Name" required="yes" 
									message="Boardname field can not be left blank">
								<b class="tooltip tooltip-top-right">
									<i class="fa fa-warning txt-color-teal"></i> 
									Input database board name.</b> 
							</label>
						</section>
						<section>
							<label class="label">Board Title</label>
							<label class="input"> <i class="icon-append fa fa-question-circle"></i>
								<cfinput name="title" type="text" placeholder="Board Name" required="yes" 
									message="Title field can not be left blank">
								<b class="tooltip tooltip-top-right">
									<i class="fa fa-warning txt-color-teal"></i> 
									Input board title.</b> 
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
		from board_name
		where id = #url.id#
	</cfquery>
	
	<div class="jarviswidget jarviswidget-color-red" id="member_age">
		<header>
			<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
			<h2>Edit Board</h2>
		</header>


<cfoutput>
<!-- widget content -->
<div>
	<div class="widget-body no-padding">

		<cfform class="smart-form" action="board_edit.cfm">
			

			<fieldset>
				<section>
					<label class="label">Board DB Name</label>
					<label class="input"> <i class="icon-append fa fa-question-circle"></i>
						<cfinput name="boardname" type="text" placeholder="User Name" required="yes" 
							message="Boardname field can not be left blank" value="#getUserUpdate.name#">
						<b class="tooltip tooltip-top-right">
							<i class="fa fa-warning txt-color-teal"></i> 
							Board DB Name</b> 
					</label>
				</section>
				<section>
					<label class="label">Board Title</label>
					<label class="input"> <i class="icon-append fa fa-question-circle"></i>
						<cfinput name="title" type="text" placeholder="User Name" required="yes" 
							message="Title field can not be left blank" value="#getUserUpdate.board_name#">
						<b class="tooltip tooltip-top-right">
							<i class="fa fa-warning txt-color-teal"></i> 
							Board Title</b> 
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
	<cfquery name="getBoardList" datasource="visionma">
		select *
		from board_name
		order by id desc
	</cfquery>
		
		<div class="jarviswidget jarviswidget-color-darken" id="wid-id-1" data-widget-editbutton="false">
			
			<header>
				<span class="widget-icon"> <i class="fa fa-table"></i> </span>
				<h2>Board List</h2>
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
								<th>Board DB</th>
								<th>Board Name</th>
								
								<th></th>
							</tr>
						</thead>
						<tbody>
							<cfoutput query="getBoardList">

							<tr>
								<td>#id#</td>
								<td>#name#</td>
								<td>#board_name#</td>
								<td align="right">
									<a href="board_list.cfm?id=#id#" >
									<button type="button" class="btn btn-primary btn-xs">
										Modify
									</button></a>
									<a href="board_list_delete.cfm?id=#id#" >
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