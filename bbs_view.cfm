<cfinclude template="header.cfm" >



<!--reply update-->
<cfif structKeyExists(form, 'is_reply') and trim(form.is_reply) neq "">
	<cfquery datasource="visionma" name="post">
		insert into #boardname#(memo,
								name,
								email,
								reg_date,
								is_reply,
								father,
								is_active
								)
			values ('#form.memo#',
					'#form.name#',
					'#form.email#',
					'#form.reg_date#',
					'#form.is_reply#',
					'#form.father#',
					'yes')
	</cfquery>
						
</cfif>
					
<!--reply update end-->
					
<cfquery datasource="visionma" name="getUser">
	select *
	from user
	where id = #session.userid#
</cfquery>

<cfquery datasource="visionma" name="getUser_type">
	select *
	from user_type
	where id = #getUser.user_type#
</cfquery>
					
<cfquery datasource="visionma" name="getPost">
	select *
	from #boardname#
	where num = #url.vid#
</cfquery>
					
<!---조회수 중복검사 --->
<cfset newPostId = '#getPost.id#'>
					


						
	<cfquery datasource="visionma" name="getWriter">
		select *
		from user
		where email = '#getPost.email#'
	</cfquery>


<div id="main" role="main">

		<!-- MAIN CONTENT -->


<div id="content">

	<div class="row">
		<div class="col-sm-12">
			<div class="well">

				<cfoutput>
				
				<table class="table table-striped table-forum">
					<thead>
						<tr>
							<th colspan="2"><span class="txt-color-red"><i class="fa fa-file-text"></i> #getPost.subject#</span></th>
						</tr>
					</thead>
					<tbody>
						<!-- Post -->
						<tr>
							<td class="text-center">&nbsp; <strong>#getPost.name#</strong></td>
							<td>on <em>#getPost.reg_date#</em>

								<cfif #getUser_type.id# EQ '1'>
									<span class="pull-right">
									<a href="bbs_edit.cfm?sp=Y&vid=#url.vid#&bbs=#url.bbs#" class="btn btn-warning">EDIT</a>
									</span>
								</cfif>
							</td>
						</tr>
						<tr>
							<td class="text-center" style="width: 12%;"></td>
										
							<td>#getPost.memo#</td>
						</tr>
						<tr>
							<td class="text-center">&nbsp; <strong>Reply : </strong></td>
							<td><em>Today</em></td>
						</tr>
						<tr>
							<td class="text-center" style="width: 12%;"></td>
							<td>
							
							<cfform  class="form-horizontal" method="POST" action="bbs_view.cfm?sp=Y&vid=#getPost.num#&bbs=#url.bbs#" enctype="multipart/form-data">


								<cftextarea richtext="yes" skin="silver" name="memo" height="200" html="yes"></cftextarea>
				

								<cfset register_date = #DateFormat(now(), "mm/dd/yyyy")#>
								<cfinput type="hidden" name="name" value="#getUser.username#">
								<cfinput type="hidden" name="email" value="#getUser.email#">
								<cfinput type="hidden" name="is_reply" value="1">
								<cfinput type="hidden" name="father" value="#getPost.id#">
								</cfinput>
								<cfinput type="hidden" name="reg_date" value="#register_date#">
								
								<br>
								<button class="btn btn-primary">
								Reply / Comment
								</button>
							</cfform>
							</td>
						</tr>
					</tbody>
				</table>
				</cfoutput>
				
				<!--reply list-->
						<cfquery datasource="visionma" name="getReply">
							select *
							from #boardname#
							where is_reply = '1' and father = '#getPost.id#' and is_active = 'yes'
							order by id desc
						</cfquery>
						
						
				<cfif getReply.RecordCount neq "0">
						

				<div class="smart-timeline">
					<ul class="smart-timeline-list">

						<cfloop query="getReply">
							<cfquery datasource="visionma" name="getReplyuser">
								select *
								from user
								where email = '#getReply.email#'
							</cfquery>
						<cfoutput>

						<li>
							<cfif #getUser_type.id# EQ '1'>
									<span class="pull-right">
									<a href="bbs_reply_delete.cfm?sid=#id#&vid=#url.vid#&bbs=#url.bbs#" class="btn btn-danger btn-sm">DELETE</a>
									</span>
								</cfif>
							<div class="smart-timeline-icon">
								<i class="fa fa-pencil"></i>
							</div>
							<div class="smart-timeline-time">
								<small>#reg_date#</small>
							</div>
							<div class="smart-timeline-content">
								<p><strong>#name#</strong></p>
								<p>#memo#</p>
							</div>
							
						</li>

						</cfoutput>
						</cfloop>
						
						

					</ul>
				</div>
						
			</cfif>		
						
<!--div class="hr hr-double"></div-->

			</div>
		</div>
	</div>
</div>

</div>


								
<cfinclude template="footer.cfm">