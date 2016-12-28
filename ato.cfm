<cfinclude template="header.cfm">
	
	

<!-- MAIN CONTENT -->
<div id="content">



    <section class="content">
                        
<div class="box box-info">
    <div class="box-body">
            <div class="row">
        <div class="col-sm-12">
            <div class="btn-group">
                <label>
                <a class="btn btn-sm btn-primary" href="competitors_add.cfm"> <i class="fa fa-plus"></i> New </a></label>
                <label>
                <a class="btn btn-sm btn-primary" href="competitors_add_multi.cfm"> <i class="fa fa-plus"></i> New Group </a></label>
            </div>


        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-sm-12">
            <div class="tournament">
                <form method="GET" accept-charset="UTF-8" class="smart-form">
                <cfquery datasource="ato" name="get_t" clientinfo="">
                    select *
                    from tournaments
                </cfquery>
                <label class="select">
                <select id="tournament_id" style="width:25%" name="tournament_id">
                    <cfoutput query="get_t">
                        <option value="#id#">#name#</option>
                    </cfoutput>
                </select>
                </label>
                </form>
            </div>
        </div>
    </div>
    <br>
    
        <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-editbutton="false">
            <!-- widget options:
            usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

            data-widget-colorbutton="false"
            data-widget-editbutton="false"
            data-widget-togglebutton="false"
            data-widget-deletebutton="false"
            data-widget-fullscreenbutton="false"
            data-widget-custombutton="false"
            data-widget-collapsed="true"
            data-widget-sortable="false"

            -->
            <header>
                <span class="widget-icon"> <i class="fa fa-group"></i> </span>
                <h2> Competitors <small>Overview</small></h2>
            </header>

            <!-- widget div-->
            <div>
                <!-- widget edit box -->
                <div class="jarviswidget-editbox">
                    <!-- This area used as dropdown edit box -->
                </div>
                <!-- end widget edit box -->

                <!-- widget content -->
                <div class="widget-body no-padding">
              
                    <table id="datatable_tabletools" class="table table-striped table-bordered table-hover" width="100%">
                        <thead>
                        <tr>
                            
                            <th>Name</th>
                            <th>Studio</th>
                            <th class="no-sort">Division</th>
                            <th>Reg. Date</th>
                            <th>Status</th>
                            <th>Type</th>
                            <th>Payment</th>
                        </tr>
                         </thead>
                        <cfquery datasource="ato" name="get_player">
                            select *
                            from player
                        </cfquery>
                        
                        
                        <tbody>
                        <cfoutput query="get_player">
                            <tr>
                                <td><a href="competitors_detail.cfm?id=#id#">#firstname# #lastname#</a></td>
                                <cfquery datasource="ato" name="get_studio">
                                    select *
                                    from studio
                                    where id = #studio_id#
                                </cfquery>
                                <td>#get_studio.name#</td>
                                <cfquery datasource="ato" name="get_division">
                                    select *
                                    from division_map
                                    where person_id = #get_player.id#
                                </cfquery>
                                <td>
                                    <cfloop query="get_division">
                                        #division#
                                    </cfloop> 
                                </td>
                                <td>#registration_date#</td>
                                <td>
                                    <cfif #registration_status# EQ 1>
                                        <span class="label bg-color-blue">Booked</span>
                                    <cfelseif #registration_status# EQ 2>
                                        <span class="label bg-color-red">Canceled</span>
                                    <cfelse>
                                        <span class="label bg-color-orange">Draft</span>
                                    </cfif>
                                </td>
                                <td>
                                    <cfif #payment_method# EQ 3>
                                        <span class="label bg-color-greenLight">Online</span>
                                    <cfelseif #payment_method# EQ 4>
                                        <span class="label bg-color-greenLight">Online</span>
                                    <cfelse>
                                        <span class="label bg-color-red">Offline</span>
                                    </cfif>
                                </td>
                                <td>
                                    <cfif #payment_status# EQ 1>
                                        <span class="label bg-color-red">Unpaid</span>
                                    <cfelseif #payment_status# EQ 2>
                                        <span class="label bg-color-greenLight">Paid</span>
                                    <cfelseif #payment_status# EQ 3>
                                        <span class="label bg-color-ornage">Refund</span>
                                    <cfelseif #payment_status# EQ 4>
                                        <span class="label bg-color-blue">Partial</span>
                                    <cfelse>
                                        <span class="label bg-color-blue">Pay Later</span>
                                    </cfif>
                                </td>
                            </tr>
                        </cfoutput>
                       
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
  
    </div>
</div>        
</section>




</div>

<!-- END MAIN CONTENT -->
<cfinclude template="footer_table.cfm">