
<cfapplication 
    name = "visionma"
    applicationTimeout = #CreateTimeSpan(0, 0, 60, 0)#
    clientManagement = "no"
    clientStorage = "ato" 
    loginStorage = "session"
    scriptProtect = "none"
    sessionManagement = "yes"
    sessionTimeout = #CreateTimeSpan(0, 0, 60, 0)#
    setClientCookies = "yes" 
    setDomainCookies = "no">


<cfset session.today = #DateFormat(Now(),"mm/dd/yyyy")#>

<cfset session.datasource_name = "visionma">
   
<cfquery name="getUserInfo" datasource="ato" cachedwithin="#CreateTimeSpan(0,6,0,0)#">
    select *
    from user
    where is_active = 'on'
</cfquery>

<cfif structKeyExists(url, "bbs") and trim(url.bbs)>

<cfquery datasource="visionma" name="get_board_name">
    select *
    from board_name
    where id = #url.bbs#
</cfquery>

<cfset boardname = #get_board_name.name#>
<cfset boardtitle = #get_board_name.board_name#>

</cfif>