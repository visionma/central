<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Vision EMB Belt Order Form</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <link href="css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">
    <link href="css/plugins/select2/select2.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/select2/select2.min.css" rel="stylesheet">

</head>

<body>



<center>
<div class="ibox col-lg-6 col-md-offset-3">

<cfoutput>

  <div class="gray-bg col-lg-12">
    <div class="row wrapper border-bottom white-bg page-heading">
      <div align="center">
        <img src="https://www.google.com/a/cpanel/visionma.com/images/logo.gif?service=google_default" width="150">
        <h2>Embroidery Belt Order Form</h2>
      </div>
    </div>
      
    <div class="wrapper wrapper-content animated fadeInRight">
      <div class="row">
        <div class="ibox float-e-margins">
          <div class="ibox-content">

              <cfform method="post" class="form-horizontal" action="emb_add4.cfm">
                  <div class="form-group" align="left">
                    <table class="table table-bordered col-lg-12">
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Date</td>
                        <td>#session.today#</td>
                        <td class="col-sm-3" bgcolor="##eeeeee">Shipping Date</td>
                        <td>#form.shipping_date#</td>
                      </tr>
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">S.O.Numbers</td>
                        <td>#form.so_numbers#</td>
                        <td class="col-sm-3" bgcolor="##eeeeee">Customer ID</td>
                        <td>#form.customer_id#</td>
                      </tr>
                    </table>
                    <input type="hidden"  name="shipping_date" value="#form.shipping_date#">
                    <input type="hidden"  value="#session.today#" name="today_date">
                    <input type="hidden"  name="sales_rep" value="#form.sales_rep#">
                    <input type="hidden"  name="so_numbers" value="#form.so_numbers#">
                    <input type="hidden"  name="customer_id" value="#form.customer_id#">
                  </div>

                  <div class="form-group" align="left">

                  	<table class="table table-bordered col-lg-12">
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Customer Name</td>
                        <td>#form.customer_name#</td>
                      </tr>
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Address</td>
                        <td>#form.street_address#<br>#form.city_state_zip#</td> 
                      </tr>
                    </table>

                <input type="hidden" name="customer_name" value="#form.customer_name#">
                <input type="hidden" name="street_address" value="#form.street_address#">
                <input type="hidden" name="city_state_zip" value="#form.city_state_zip#">

                  </div>
                 

                  <div class="form-group" align="left">

                  	<table class="table table-bordered col-lg-12">
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Email</td>
                        <td>#form.email#</td>
                        <td class="col-sm-3" bgcolor="##eeeeee">Phone</td>
                        <td>#form.phone#</td>
                      </tr>
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Fax</td>
                        <td>#form.fax#</td>
                        <td class="col-sm-3" bgcolor="##eeeeee">Type</td>
                        <td>#form.type#</td>
                      </tr>
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Belt Type</td>
                        <td>#form.belt_type#</td>
                        <td class="col-sm-3" bgcolor="##eeeeee">Thread Color</td>
                        <td>#form.thread_color#</td>
                      </tr>
                    </table>

                    <input type="hidden" name="email" value="#form.email#">
                    <input type="hidden" name="phone" value="#form.phone#">
                    <input type="hidden" name="fax" value="#form.fax#">
                    <input type="hidden" name="type" value="#form.type#">
                    <input type="hidden" name="belt_type" value="#form.belt_type#">
                    <input type="hidden" name="thread_color" value="#form.thread_color#">


                    
                  </div>
                  
                  <div class="form-group" align="left">
                    <label class="col-sm-3">Special Instruction</label>
                      <div class="input-group col-sm-4">
                        <textarea name="special_instruction" cols="55" rows="5" disabled>#form.special_instruction#</textarea>
                      </div>
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">

                 



                    <label class="col-sm-6">School / Master Name Side</label>
                    	<table class="table table-bordered col-lg-12">
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Top</td>
                        <td>#form.school_master_name_top#</td>
                      </tr>
                      <tr>
                        <td class="col-sm-3" bgcolor="##eeeeee">Bottom</td>
                        <td>#form.school_master_name_bottom#</td> 
                      </tr>
                    </table>

                    <input type="hidden" name="school_master_name_top" value="#form.school_master_name_top#">
                    <input type="hidden" name="school_master_name_bottom" value="#form.school_master_name_bottom#">
                  </div>

                  <div class="hr-line-dashed"></div>

                  <div class="form-group" align="left">
                    <label class="col-sm-6">Student Name Side</label>

                    

                    <table class="table table-bordered">
                      <tr>
                        <td class="col-sm-2" bgcolor="##eeeeee">Size</td>
                        <td class="col-sm-1" bgcolor="##eeeeee">Top</td>
                        <td>#form.student_name_top#</td>
                        <td class="col-sm-2" bgcolor="##eeeeee">Rank</td>
                        <td class="col-sm-2" bgcolor="##eeeeee">Language</td>
                      </tr>
                      <tr>
                        <td class="col-sm-1">#form.student_size#</td>
                        <td class="col-sm-1" bgcolor="##eeeeee">Bottom</td>
                        <td>#form.student_name_bottom#</td>
                        <td>#form.student_rank#</td>
                        <td>#form.student_language#</td>
                      </tr>
                    </table>

                    <input type="hidden" name="student_name_top" value="#form.student_name_top#">
                    <input type="hidden" name="student_size" value="#form.student_size#">
                    <input type="hidden" name="student_name_bottom" value="#form.student_name_bottom#">
                    <input type="hidden" name="student_rank" value="#form.student_rank#">
                    <input type="hidden" name="student_language" value="#form.student_language#">

                    <!---- loop---->

                    <cfif structkeyexists(form,"num")>

                      <cfset new_count = #form.num# -1>

                        <cfloop index = "LoopCount" from = "1" to = "#new_count#"> 
                          
                          <cfoutput>
    
                              <table class="table table-bordered">
                                <tr>
                                  <td class="col-sm-2" bgcolor="##eeeeee">Size</td>
                                  <td class="col-sm-1" bgcolor="##eeeeee">Top</td>
                                  <td>
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_name_top_add#LoopCount#"]#
                                    </cfif>
                                    </td>
                                  <td class="col-sm-2" bgcolor="##eeeeee">Rank</td>
                                  <td class="col-sm-2" bgcolor="##eeeeee">Language</td>
                                </tr>
                                <tr>
                                  <td class="col-sm-1">
                                    <cfif #LoopCount# LTE #new_count#>
                                    #session["student_size_add#LoopCount#"]#
                                    </cfif>
                                  </td>
                                  <td class="col-sm-1" bgcolor="##eeeeee">Bottom</td>
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
<input type="hidden" name="student_name_top_add#LoopCount#" value="#session["student_name_top_add#LoopCount#"]#">
<input type="hidden" name="student_size_add#LoopCount#" value="#session["student_size_add#LoopCount#"]#">
<input type="hidden" name="student_name_bottom_add#LoopCount#" value="#session["student_name_bottom_add#LoopCount#"]#">
<input type="hidden" name="student_rank_add#LoopCount#" value="#session["student_rank_add#LoopCount#"]#">
<input type="hidden" name="student_language_add#LoopCount#" value="#session["student_language_add#LoopCount#"]#">
                            
                          </cfoutput>
                        </cfloop>
                    </cfif>

                    <a name="h323"></a>

                    <!------ end loop----->
                    
                    <cfif structKeyExists(session, "num")>
                      <input type="hidden" name="num" value="#session.num#">
                    </cfif>
                    
                  
                    

                  </div>

                  <div class="hr-line-dashed"></div>



                  
                  
                  <div class="form-group">
                      <div class="col-sm-12">
                          <button class="btn btn-primary" type="submit" name="submit">CONFIRM & SEND</button>
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
</center> 

<!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Chosen -->
    <script src="js/plugins/chosen/chosen.jquery.js"></script>

   <!-- JSKnob -->
   <script src="js/plugins/jsKnob/jquery.knob.js"></script>

   <!-- Input Mask-->
    <script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>

   <!-- Data picker -->
   <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

   <!-- NouSlider -->
   <script src="js/plugins/nouslider/jquery.nouislider.min.js"></script>

   <!-- Switchery -->
   <script src="js/plugins/switchery/switchery.js"></script>

    <!-- IonRangeSlider -->
    <script src="js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>

    <!-- MENU -->
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- Color picker -->
    <script src="js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>

    <!-- Clock picker -->
    <script src="js/plugins/clockpicker/clockpicker.js"></script>

    <!-- Image cropper -->
    <script src="js/plugins/cropper/cropper.min.js"></script>

    <!-- Date range use moment.js same as full calendar plugin -->
    <script src="js/plugins/fullcalendar/moment.min.js"></script>

    <!-- Date range picker -->
    <script src="js/plugins/daterangepicker/daterangepicker.js"></script>

    <!-- Select2 -->
    <script src="js/plugins/select2/select2.full.min.js"></script>

    <script>
        $(document).ready(function(){

            var $image = $(".image-crop > img")
            $($image).cropper({
                aspectRatio: 1.618,
                preview: ".img-preview",
                done: function(data) {
                    // Output the result data for cropping image.
                }
            });

            var $inputImage = $("#inputImage");
            if (window.FileReader) {
                $inputImage.change(function() {
                    var fileReader = new FileReader(),
                            files = this.files,
                            file;

                    if (!files.length) {
                        return;
                    }

                    file = files[0];

                    if (/^image\/\w+$/.test(file.type)) {
                        fileReader.readAsDataURL(file);
                        fileReader.onload = function () {
                            $inputImage.val("");
                            $image.cropper("reset", true).cropper("replace", this.result);
                        };
                    } else {
                        showMessage("Please choose an image file.");
                    }
                });
            } else {
                $inputImage.addClass("hide");
            }

            $("#download").click(function() {
                window.open($image.cropper("getDataURL"));
            });

            $("#zoomIn").click(function() {
                $image.cropper("zoom", 0.1);
            });

            $("#zoomOut").click(function() {
                $image.cropper("zoom", -0.1);
            });

            $("#rotateLeft").click(function() {
                $image.cropper("rotate", 45);
            });

            $("#rotateRight").click(function() {
                $image.cropper("rotate", -45);
            });

            $("#setDrag").click(function() {
                $image.cropper("setDragMode", "crop");
            });

            $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#data_2 .input-group.date').datepicker({
                startView: 1,
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true,
                format: "dd/mm/yyyy"
            });

            $('#data_3 .input-group.date').datepicker({
                startView: 2,
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });

            $('#data_4 .input-group.date').datepicker({
                minViewMode: 1,
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true,
                todayHighlight: true
            });

            $('#data_5 .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });

            var elem = document.querySelector('.js-switch');
            var switchery = new Switchery(elem, { color: '#1AB394' });

            var elem_2 = document.querySelector('.js-switch_2');
            var switchery_2 = new Switchery(elem_2, { color: '#ED5565' });

            var elem_3 = document.querySelector('.js-switch_3');
            var switchery_3 = new Switchery(elem_3, { color: '#1AB394' });

            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });

            $('.demo1').colorpicker();

            var divStyle = $('.back-change')[0].style;
            $('#demo_apidemo').colorpicker({
                color: divStyle.backgroundColor
            }).on('changeColor', function(ev) {
                        divStyle.backgroundColor = ev.color.toHex();
                    });

            $('.clockpicker').clockpicker();

            $('input[name="daterange"]').daterangepicker();

            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange').daterangepicker({
                format: 'MM/DD/YYYY',
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: { days: 60 },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'right',
                drops: 'down',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-primary',
                cancelClass: 'btn-default',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr','Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            });

            $(".select2_demo_1").select2();
            $(".select2_demo_2").select2();
            $(".select2_demo_3").select2({
                placeholder: "Select a state",
                allowClear: true
            });


        });
        var config = {
                '.chosen-select'           : {},
                '.chosen-select-deselect'  : {allow_single_deselect:true},
                '.chosen-select-no-single' : {disable_search_threshold:10},
                '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
                '.chosen-select-width'     : {width:"95%"}
                }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }

        $("#ionrange_1").ionRangeSlider({
            min: 0,
            max: 5000,
            type: 'double',
            prefix: "$",
            maxPostfix: "+",
            prettify: false,
            hasGrid: true
        });

        $("#ionrange_2").ionRangeSlider({
            min: 0,
            max: 10,
            type: 'single',
            step: 0.1,
            postfix: " carats",
            prettify: false,
            hasGrid: true
        });

        $("#ionrange_3").ionRangeSlider({
            min: -50,
            max: 50,
            from: 0,
            postfix: "°",
            prettify: false,
            hasGrid: true
        });

        $("#ionrange_4").ionRangeSlider({
            values: [
                "January", "February", "March",
                "April", "May", "June",
                "July", "August", "September",
                "October", "November", "December"
            ],
            type: 'single',
            hasGrid: true
        });

        $("#ionrange_5").ionRangeSlider({
            min: 10000,
            max: 100000,
            step: 100,
            postfix: " km",
            from: 55000,
            hideMinMax: true,
            hideFromTo: false
        });

        $(".dial").knob();

        $("#basic_slider").noUiSlider({
            start: 40,
            behaviour: 'tap',
            connect: 'upper',
            range: {
                'min':  20,
                'max':  80
            }
        });

        $("#range_slider").noUiSlider({
            start: [ 40, 60 ],
            behaviour: 'drag',
            connect: true,
            range: {
                'min':  20,
                'max':  80
            }
        });

        $("#drag-fixed").noUiSlider({
            start: [ 40, 60 ],
            behaviour: 'drag-fixed',
            connect: true,
            range: {
                'min':  20,
                'max':  80
            }
        });


    </script>

</body>

</html>







