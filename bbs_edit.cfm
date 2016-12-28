<cfinclude template="header.cfm" >



<cfquery name="EditBoard" datasource="visionma">
	select *
	from #boardname#
	where num = '#url.vid#'
</cfquery>


<div id="main" role="main">	
<!--PAGE CONTENT BEGINS-->
<div id="content">
	<div class="row">
		<p>&nbsp;</p>
<!-- the wysiwyg form -->

		<cfform  class="form-horizontal" method="POST" action="bbs_edit2.cfm" enctype="multipart/form-data">
			<article class="col-sm-12 col-md-12 col-lg-12">
				<label class="col-md-1 control-label"><b>Subject : </b></label>
				<div class="col-md-10">
					<cfoutput query="EditBoard">
					<input class="form-control" type="text" name="subject" required="true" value="#subject#"> 
					</cfoutput>
				</div>
			</article>
									
			<p>&nbsp;</p>

			<article class="col-sm-12 col-md-12 col-lg-12">
				<label class="col-md-1 control-label"><b>Body : </b></label>
				<div class="col-md-10">
				
					<cftextarea  richtext="yes" skin="silver" name="memo" height="400">
						<cfoutput query="EditBoard">#HTMLEditFormat(memo)#</cfoutput>
					</cftextarea>
						
					
					<cfoutput query="EditBoard">
					<cfinput type="hidden" name="boardname2" value="#boardname#">
					<cfinput type="hidden" name="id" value="#url.vid#">
						<cfinput type="hidden" name="bbs" value="#url.bbs#">
					</cfoutput>	

					<div class="widget-footer smart-form">
						<button class="btn btn-sm btn-primary" type="reset">
							<i class="fa fa-times"></i> RESET 
						</button>	
										
						<button class="btn btn-sm btn-success" type="submit">
							<i class="fa fa-check"></i> POST 
						</button>	
					</div>
				<div>
			</article>
		</cfform>

	</div>
</div>
</div>


<cfinclude template="footer.cfm">