<cfinclude template="header.cfm" >



			
<!--PAGE CONTENT BEGINS-->
<cfquery datasource="visionma" name="checkBBS">
	select *
	from #boardname#
	where is_active = 'yes'
</cfquery>

<cfif checkBBS.recordcount EQ 0>

<cfquery datasource="visionma" name="getBBS">
	select *
	from #boardname#
	where is_active = 'yes'
</cfquery>
	
<cfelse>

<cfquery datasource="visionma" name="getBBS">
	select *
	from #boardname#
	where num > 0
	order by num desc
</cfquery>

</cfif>			
			
<div id="main" role="main">		

<!-- MAIN CONTENT -->
<div id="content">
	
<div class="jarviswidget jarviswidget-color-blue" id="wid-id-0" data-widget-editbutton="false">
	<header>
		<cfoutput>
		<span class="widget-icon"> <i class="fa fa-table"></i> </span>
		<h2>#boardtitle# </h2>
		</cfoutput>
	</header>
		

	<div>

	<!-- widget content -->
		<div class="widget-body no-padding">
		
	
		<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
			<thead>
				<tr>
					<th class="center" width="5%">NO. </th>
					<th class="center">SUBJECT </th>
					<th class="center" width="15%">NAME </th>
					<th class="center" width="15%">DATE </th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="getbbs">
					<cfoutput>
						<cfquery datasource="visionma" name="getReply">
							select count(is_reply) as count
							from #boardname#
							where father = #getBBS.id# and is_active = 'yes'
						</cfquery>
						<tr>
							<td class="right">
								#num#
							</td>
							<td><strong><a href="bbs_view.cfm?sp=Y&vid=#num#&bbs=#url.bbs#">#subject#</a></strong>
								<cfif #reg_date# eq #DateFormat(now(), "mm/dd/yyyy")#>
								<i class="icon-flag red"></i>
								</cfif>
						<!--reply count-->
								<cfif #getReply.count# gt 0>
									&nbsp;&nbsp;
									<span class="badge badge-green">
									<i class="icon-comment"></i>  #getReply.count# 
									</span>
								</cfif>
						<!--reply count end-->
							</td>
							<td>#name#</td>
							<td class="center">#reg_date#</td>
						</tr>
					</cfoutput>
				</cfloop>
						
			</tbody>
		</table>
	
		</div>
		<p>
		<div>
			<span>

				<cfoutput>
					<a href="bbs_write.cfm?sp=Y&bbs=#url.bbs#" class="btn btn-danger btn-md">
					<i class="icon-pencil"></i>
					WRITE
					</a>
				</cfoutput>
			</span>
			<br>
			<br>
		</div>
        <!-- end widget content -->
    </div>
      <!-- end widget div -->
</div>
    <!-- end widget -->
</div>


</div>
</div>
		<!-- END MAIN PANEL -->

		<!-- PAGE FOOTER -->
  								
<cfinclude template="footer.cfm">