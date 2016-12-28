<cfinclude template="header.cfm" >



<div id="main" role="main">	
<!--PAGE CONTENT BEGINS-->
<div id="content">
	<div class="row">
		<p>&nbsp;</p>
<!-- the wysiwyg form -->
		<cfform  class="form-horizontal" method="POST" action="bbs_post.cfm" enctype="multipart/form-data">
			<article class="col-sm-12 col-md-12 col-lg-12">
				<label class="col-md-1 control-label"><b>Subject : </b></label>
				<div class="col-md-10">
					<input class="form-control" type="text" placeholder="Subject" name="subject" required="true"> 
				</div>
			</article>
									
			<p>&nbsp;</p>

			<article class="col-sm-12 col-md-12 col-lg-12">
				<label class="col-md-1 control-label"><b>Body : </b></label>
				<div class="col-md-10">
				
					<cftextarea  richtext="yes" skin="silver" name="memo" height="400">
					</cftextarea>

						
					<div class="widget-footer smart-form">
						<button class="btn btn-sm btn-primary" type="reset">
							<i class="fa fa-times"></i> RESET 
						</button>	
										
						<button class="btn btn-sm btn-success" type="submit">
							<i class="fa fa-check"></i> POST 
						</button>	
					</div>
				<div>


				<cfquery datasource="visionma" name="getNum">
					select max(num) as count
					from #boardname#
				</cfquery>

				<cfquery datasource="visionma" name="getBBS_User">
					select *
					from user
					where id = #session.userID#
				</cfquery>
										
				<cfquery datasource="visionma" name="getBBS_User_type">
					select *
					from user_type
					where id = #session.userType#
				</cfquery>
										
				<cfset register_date = #session.today#>
										
				<cfif #getNum.count# is ''>
					<cfset maxNum = 1>	
				<cfelse>
					<cfset maxNum = #getNum.count# + 1>
				</cfif>
										
				<cfoutput>
					
					<cfinput type="hidden" name="num" value="#maxNum#">
					<cfinput type="hidden" name="name" value="#getBBS_User.username#">
					<cfinput type="hidden" name="email" value="#getBBS_User.email#">
					<cfinput type="hidden" name="reg_date" value="#register_date#">
					<cfinput type="hidden" name="bbs" value="#url.bbs#">
				</cfoutput>

			</article>
		</cfform>
		
	</div>
</div>
</div>
</div>

<cfinclude template="footer.cfm">