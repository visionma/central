<!-- PAGE FOOTER -->
		<div class="page-footer">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<span class="txt-color-white">Vision USA, Inc (c) 2017</span>
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
    <script src="js/plugin/datatables/jquery.dataTables.min.js"></script>

    <script src="js/plugin/datatables/dataTables.colVis.min.js"></script>

    <script src="js/plugin/datatables/dataTables.tableTools.min.js"></script>

    <script src="js/plugin/datatables/dataTables.bootstrap.min.js"></script>


    <script src="js/plugin/datatables/jquery.dataTables-cust.min.js"></script>


    <script src="js/plugin/datatables/ColReorder.min.js"></script>

    <script src="js/plugin/datatables/FixedColumns.min.js"></script>

    <script src="js/plugin/datatables/ColVis.min.js"></script>

    <script src="js/plugin/datatables/ZeroClipboard.js"></script>

    <script src="js/plugin/datatables/media/js/TableTools.min.js"></script>

    <script src="js/plugin/datatables/DT_bootstrap.js"></script>

    <!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
    <script src="js/plugin/flot/jquery.flot.cust.js"></script>
    <script src="js/plugin/flot/jquery.flot.resize.js"></script>
    <script src="js/plugin/flot/jquery.flot.tooltip.js"></script>
    <script src="js/plugin/bootstrap-progressbar/bootstrap-progressbar.js"></script>
    <script src="js/smartwidgets/jarvis.widget.min.js"></script>
   
<!-- PAGE RELATED PLUGIN(S)-->
<script src="js/plugin/summernote/summernote.min.js"></script>

    <script type="text/javascript">
      // DO NOT REMOVE : GLOBAL FUNCTIONS!

      $(document).ready(function() {

        pageSetUp();

        $('#summernote').summernote({
          height : 180,
          focus : false,
          tabsize : 2
        });
      })
      var postForm = function() {
        var content = $('textarea[name="content"]').html($('#summernote').code());
      }

    </script>



    <script type="text/javascript">

      $(document).ready(function() {
        
        
        
         pageSetUp();
         
        /*
         * CONVERT DIALOG TITLE TO HTML
         * REF: http://stackoverflow.com/questions/14488774/using-html-in-a-dialogs-title-in-jquery-ui-1-10
         */
        $.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
          _title : function(title) {
            if (!this.options.title) {
              title.html("&#160;");
            } else {
              title.html(this.options.title);
            }
          }
        }));

      
        /*
         * SUMMERNOTE EDITOR
         */
        
        $('.summernote').summernote({
          height : 180,
          focus : false,
          tabsize : 2
        });
      
        /*
         * MARKDOWN EDITOR
         */

        $("#mymarkdown").markdown({
          autofocus:false,
          savable:true
        })



        // Modal Link
        $('#modal_link').click(function() {
          $('#dialog-message').dialog('open');
          return false;
        });

        $("#dialog-message").dialog({
          autoOpen : false,
          modal : true,
          title : "<div class='widget-header'><h4><i class='icon-ok'></i> jQuery UI Dialog</h4></div>",
          buttons : [{

            html : "<i class='fa fa-check'></i>&nbsp; OK",
            "class" : "btn btn-primary",
            click : function() {
              $(this).dialog("close");
            }
          }]

        });

        /*
         * Remove focus from buttons
         */
        $('.ui-dialog :button').blur();

        // modal dialog init: custom buttons and a "close" callback reseting the form inside
        var dialog = $("#addtab").dialog({
          autoOpen : false,
          width : 600,
          resizable : false,
          modal : true,
          buttons : [{
            html : "<i class='fa fa-times'></i>&nbsp; Cancel",
            "class" : "btn btn-default",
            click : function() {
              $(this).dialog("close");

            }
          }, {

            html : "<i class='fa fa-plus'></i>&nbsp; Add",
            "class" : "btn btn-danger",
            click : function() {
              addTab();
              $(this).dialog("close");
            }
          }]
        });





        // PAGE RELATED SCRIPTS

        $('.tree > ul').attr('role', 'tree').find('ul').attr('role', 'group');
        $('.tree').find('li:has(ul)').addClass('parent_li').attr('role', 'treeitem').find(' > span').attr('title', 'Collapse this branch').on('click', function(e) {
          var children = $(this).parent('li.parent_li').find(' > ul > li');
          if (children.is(':visible')) {
            children.hide('fast');
            $(this).attr('title', 'Expand this branch').find(' > i').removeClass().addClass('fa fa-lg fa-plus-circle');
          } else {
            children.show('fast');
            $(this).attr('title', 'Collapse this branch').find(' > i').removeClass().addClass('fa fa-lg fa-minus-circle');
          }
          e.stopPropagation();
        });


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

          // custom toolbar
          $("div.toolbar").html('<div class="text-right"><img src="img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');

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

  

  </body>

</html>