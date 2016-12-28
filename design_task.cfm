<cfinclude template="header.cfm">

	<!-- MAIN PANEL -->
	<div id="main" role="main">

		<!-- MAIN CONTENT -->
		<div id="content">

			<!-- row -->
			<div class="row">
				
				<!-- col -->
				<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
					<h1 class="page-title txt-color-blueDark">
						
						<!-- PAGE HEADER -->
						<i class="fa-fw fa fa-home"></i> 
							Design
						<span>>  
							Task
						</span>
					</h1>
				</div>
		
				
			</div>
		
	
			<section id="widget-grid" class="">
			
				<div class="row">
			
					<!-- a blank row to get started -->
					<div class="col-sm-12">
						<!-- your contents here -->
						<div>

							<cfif structKeyExists(url, "add") and trim(url.add) eq 'yes'>

								<cfform name="AddTask" action="design_task_add.cfm" method="post" class="smart-form">
									
								
								<table class="table table-striped table-bordered table-hover" width="100%">
									<thead>
										<tr>
											<th class="center">Your Name </th>
											<th class="center">ACC No & Name </th>
											<th class="center">Rush </th>
											<th class="center">Type </th>
											<th class="center">Ref </th>
									
											<th class="center">Required Date </th>
											<th class="center">Shipping Date </th>
											
											<th class="center">MEMO  </th>
											<th class="center">PRIORITY  </th>
										
										</tr>
									</thead>
									<tbody>
										
										<tr>
											<td>
												<label class="input">
													<input type="text" name="rep" required="yes">
												</label>
											</td>
											<td>
												<label class="input">
													<input type="text" name="acc" required="yes">
												</label>
											</td>
											<td>
												<label class="checkbox">
													<input type="checkbox" name="rush" checked="checked"><i></i>
												</label>
											</td>
											<td>
												<label class="input">
													<input type="text" name="type" required="yes">
												</label>
											</td>
											<td>
												<label class="input">
													<input type="text" name="ref">
												</label>
											</td>
										
											<td>
												<label class="input">
													<i class="icon-append fa fa-calendar"></i>
													<input type="text" name="required" id="startdate" placeholder="Date">
												</label>
											</td>
											<td>
												<label class="input">
													<i class="icon-append fa fa-calendar"></i>
													<input type="text" name="shipping" id="finishdate" placeholder="Date">
												</label>
											</td>
											
											<td>
												<label class="input">
													<textarea name="memo"></textarea>
												</label>
											</td>
											<td>
												<label class="select">
													<select name="pr">
														<option selected value="1"> 1 </option>
														<option value="2"> 2 </option>
														<option value="3"> 3 </option>
													</select>
													<i></i>
												</label>
											</td>
											
										</tr>
										<tr>
											<td colspan="10" align="right">
												<input type="reset" class="btn btn-warning btn-lg"> 
												<input type="submit" class="btn btn-info btn-lg">
											</td>
										</tr>
									</tbody>
								</table>
								</cfform>

							<cfelse>
								<span class="pull-right">
								
									<a href="design_task.cfm?add=yes" class="btn btn-info btn-md">
									<i class="icon-pencil"></i>
										WRITE
									</a>
								
								</span>
							<br>
							<br>
							<br>

							</cfif>


							
						</div>
						
						<div class="jarviswidget jarviswidget-color-blue" id="wid-id-0" data-widget-editbutton="false">
							<header>
								<span class="widget-icon"> <i class="fa fa-table"></i> </span>
								<h2><cfoutput>Design Task List</cfoutput> </h2>
							</header>
		

						<div>


						<!-- widget content -->
						<div class="widget-body no-padding">

						<cfquery datasource="visionma" name="getDesignTask">
							select *
							from design_task
							where is_active = 1
						</cfquery>

						<cfif structKeyExists(url, "edit") and trim(url.edit) eq "yes">
							<cfquery name="DesignPart" datasource="visionma">
								select *
								from design_task
								where id = '#url.id#'
							</cfquery>
						
					
								<table class="table table-striped table-bordered table-hover" width="100%">
									<thead>
										<tr>
											<th class="center">REP Name</th>
											<th class="center">ACC No & Name </th>
											<th class="center">Rush </th>
											<th class="center">Type </th>
									
									
											<th class="center">Required Date </th>
											<th class="center">Shipping Date </th>
											<th class="center">QU  </th>
											<th class="center">CF  </th>
											<th class="center">Warehouse  </th>
											<th class="center">Mockup Date </th>
											<th class="center">MEMO  </th>
											<th class="center">PRIORITY  </th>
											<th class="center"><a href="design_task.cfm" class="btn btn-warning btn-xs"> BACK TO LIST </a></th>
										</tr>
									</thead>
									<tbody>
								

									<cfoutput query="DesignPart">

										<cfform name="updateDesign" action="design_task_add2.cfm" class="smart-form">
											
										<tr>
											<td>#rep#</td>
											<td>#acc#</td>
											<td>
												<cfif #rush# eq 'on'>
													<strong class="text-danger">YES</strong>

												<cfelse>
													#rush# 
												</cfif>
											</td>
											<td>#type#</td>
										
								
											<td>#required#</td>
											<td>#shipping#</td>
											<td width="6%">
												<label class="input">
													<input type="text" name="qu" value="#qu#" class="form-control">
												</label>
											</td>
											<td width="6%">
												<label class="input">
													<input type="text" name="cf" value="#cf#"  class="form-control">
												</label>
											</td>
											<td width="6%">
												<label class="input">
													<input type="text" name="wa" value="#wa#"  class="form-control">
												</label>
											</td>
											<td width="12%">
												<label class="input">
													<input type="text" name="mockup" id="finishdate" class="form-control">
												</label>
												<label class="select">
													<select name="mockup2" class="form-control">
										
														<option value="AM">AM</option>
														<option value="PM">PM</option>
							
													</select>
												</label>
											</td>
											<td>
												<label class="input">
													<textarea name="memo" class="form-control">#memo#</textarea>
												</label>
											</td>
											<td width="5%">
												<label class="select">
													<select name="pr" class="form-control">
														<option selected value="#pr#"> #pr# </option>
														<option value="1"> 1 </option>
														<option value="2"> 2 </option>
														<option value="3"> 3 </option>
													</select>
												</label>
											</td>
											<td>
												<input type="hidden" name="id" value="#url.id#">
												<input type="submit" value="UPDATE" class="btn btn-info btn-lg">
											</td>
											
										</tr>

										</cfform>

									</cfoutput>


								<cfelse>

								<table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
									<thead>
										<tr>
											<th class="center">REP Name</th>
											<th class="center">ACC No & Name </th>
											<th class="center">Rush </th>
											<th class="center">Type </th>
											<th class="center">Ref </th>
											<th class="center">Requested Date</th>
											<th class="center">Required Date </th>
											<th class="center">Shipping Date </th>
											<th class="center">QU  </th>
											<th class="center">CF  </th>
											<th class="center">WA  </th>
											<th class="center">Mockup Date </th>
											<th class="center">MEMO  </th>
											<th class="center">Priority  </th>
										
											<th class="center"></th>
										</tr>
									</thead>
									<tbody>

								<cfloop query="getDesignTask">
									<cfoutput>
										
										

										<tr>
											<td>#rep#</td>
											<td>#acc#</td>
											<td>
												<cfif #rush# eq 'on'>
													<strong class="text-danger">YES</strong>

												<cfelse>
													NO 
												</cfif>
											</td>
											<td>#type#</td>
											<td>#ref#</td>
											<td>#date#</td>
											<td>#dateformat(required, "mm-dd-yyyy")#</td>
											<td>#dateformat(shipping, "mm-dd-yyyy")#</td>
											<td>#qu#</td>
											<td>#cf#</td>
											<td>#wa#</td>
											<td>#dateformat(mockup, "mm-dd-yyyy")# / #mockup2#</td>
											<td>#memo#</td>
											<td>#pr#</td>
										
											<td>
												<a href="design_task.cfm?edit=yes&id=#id#" class="btn btn-danger btn-xs"><i class="fa fa-sm fa-fw fa-pencil"></i>
												</a> 
												<a href="design_task_end.cfm?id=#id#" class="btn btn-success btn-xs"><i class="fa fa-sm fa-fw fa-check"></i>
												</a>
											</td>
											
										</tr>

									</cfoutput>
								</cfloop>
							</cfif>
										
							</tbody>
						</table>
					
						</div>
						
				        <!-- end widget content -->
				    </div>
				      <!-- end widget div -->
				






					</div>
						
				</div>
			
				<!-- end row -->
			
			</section>
			<!-- end widget grid -->

		</div>
		<!-- END MAIN CONTENT -->

	</div>
	<!-- END MAIN PANEL -->

<!-- PAGE FOOTER -->
		<div class="page-footer">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<span class="txt-color-white">Vision USA, Inc © 2014</span>
				</div>

				
			</div>
		</div>
    <!-- END PAGE FOOTER -->

		
		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>

		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="js/libs/jquery-2.0.2.min.js"><\/script>');
			}
		</script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="js/bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="js/notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="js/smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="js/plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="js/plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY SELECT2 INPUT -->
		<script src="js/plugin/select2/select2.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="js/plugin/fastclick/fastclick.min.js"></script>

		<!--[if IE 8]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- Demo purpose only -->
		<script src="js/demo.min.js"></script>

		<!-- MAIN APP JS FILE -->
		<script src="js/app.min.js"></script>

		<!-- PAGE RELATED PLUGIN(S) -->
		<script src="js/plugin/datatables/jquery.dataTables.min2.js"></script>
		<script src="js/plugin/datatables/dataTables.colVis.min.js"></script>
		<script src="js/plugin/datatables/dataTables.tableTools.min.js"></script>
		<script src="js/plugin/datatables/dataTables.bootstrap.min.js"></script>

		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
			
			/* // DOM Position key index //
			
				l - Length changing (dropdown)
				f - Filtering input (search)
				t - The Table! (datatable)
				i - Information (records)
				p - Pagination (paging)
				r - pRocessing 
				< and > - div elements
				<"#id" and > - div with an id
				<"class" and > - div with a class
				<"#id.class" and > - div with an id and class
				
				Also see: http://legacy.datatables.net/usage/features
			*/	
	
			/* BASIC ;*/
			
			$('#dt_basic').dataTable();
	
			
			/* END BASIC */
			
			/* COLUMN FILTER  */
		    var otable = $('#datatable_fixed_column').DataTable({
		    	//"bFilter": false,
		    	//"bInfo": false,
		    	//"bLengthChange": false
		    	//"bAutoWidth": false,
		    	//"bPaginate": false,
		    	//"bStateSave": true // saves sort state using localStorage
				"sDom": "<'dt-toolbar'<'col-xs-6'f><'col-xs-6'<'toolbar'>>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-xs-6'i><'col-xs-6'p>>"
			
		    });

		    // START AND FINISH DATE
			$('#startdate').datepicker({
			    dateFormat: 'mm.dd.yy',
			    prevText: '<i class="fa fa-chevron-left"></i>',
			    nextText: '<i class="fa fa-chevron-right"></i>',
			    onSelect: function (selectedDate) {
			        $('#finishdate').datepicker('option', 'minDate', selectedDate);
			    }
			});
			$('#finishdate').datepicker({
			    dateFormat: 'mm.dd.yy',
			    prevText: '<i class="fa fa-chevron-left"></i>',
			    nextText: '<i class="fa fa-chevron-right"></i>',
			    onSelect: function (selectedDate) {
			        $('#startdate').datepicker('option', 'maxDate', selectedDate);
			    }
			});
		    
		    // custom toolbar
		    $("div.toolbar").html('<div class="text-right"><img src="img/logo.png" alt="Vision USA" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');
		    	   
		    // Apply the filter
		    $("#datatable_fixed_column thead th input[type=text]").on( 'keyup change', function () {
		    	
		        otable
		            .column( $(this).parent().index()+':visible' )
		            .search( this.value )
		            .draw();
		            
		    } );
		    /* END COLUMN FILTER */   
	    
			/* COLUMN SHOW - HIDE */
			$('#datatable_col_reorder').dataTable({
				"sDom": "<'dt-toolbar'<'col-xs-6'f><'col-xs-6'C>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-xs-6'i><'col-xs-6'p>>"
			});
			
			/* END COLUMN SHOW - HIDE */
	
			/* TABLETOOLS */
			$('#datatable_tabletools').dataTable({
				
				// Tabletools options: 
				//   https://datatables.net/extensions/tabletools/button_options
				"sDom": "<'dt-toolbar'<'col-xs-6'f><'col-xs-6'T>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-xs-6'i><'col-xs-6'p>>",
		        "oTableTools": {
		        	 "aButtons": [
		             "copy",
		             "csv",
		             "xls",
		                {
		                    "sExtends": "pdf",
		                    "sTitle": "Vision_PDF",
		                    "sPdfMessage": "Vision PDF Export",
		                    "sPdfSize": "letter"
		                },
		             	{
	                    	"sExtends": "print",
	                    	"sMessage": "Generated by Vision <i>(press Esc to close)</i>"
	                	}
		             ],
		            "sSwfPath": "js/plugin/datatables/swf/copy_csv_xls_pdf.swf"
		        }
			});
			
			/* END TABLETOOLS */
		
		})

		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->

		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-54892138-3', 'auto');
		  ga('send', 'pageview');

		</script>

	</body>

</html>