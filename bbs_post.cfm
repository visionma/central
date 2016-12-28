


<cfscript>
  function getMultipartFormParameter(key, encoding)
  {
    param = key.getBytes(encoding);
    value = evaluate(toString(param, "utf-8"));
    param = value.getBytes("utf-8");
    return toString(param, encoding);
  }
</cfscript>

<cfset subject = getMultipartFormParameter("FORM.subject", "utf-8")>
<cfset memo = getMultipartFormParameter("FORM.memo", "utf-8")>
<cfset num = getMultipartFormParameter("FORM.num", "utf-8")>
<cfset email = getMultipartFormParameter("FORM.email", "utf-8")>
<cfset name = getMultipartFormParameter("FORM.name", "utf-8")>
<cfset reg_date = getMultipartFormParameter("FORM.reg_date", "utf-8")>

<cfquery datasource="visionma" name="get_insert_bbs">
  select *
  from board_name
  where id = #form.bbs#
</cfquery>



<cfquery datasource="visionma" name="post">
  insert into #get_insert_bbs.name#(subject,
              memo,
              num,
              email,
              name,
              reg_date,
              is_active
              )
  values ('#subject#',
      '#memo#',
      '#num#',
      '#email#',
      '#name#',
      '#reg_date#',
      'yes')
</cfquery>

<cfset newMonth = #DateFormat(session.today, "mmm")#>
<cfset newDay = #DateFormat(session.today, "dd")#>

  <cfoutput>
<cfmail to = "master@visionma.com" from = "master@visionma.com" subject = "[Notice] #subject#" type="html">


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Vision USA Intranet</title>
<style type="text/css">
a:hover { text-decoration: underline !important; }
</style>


<body marginheight="0" topmargin="0" marginwidth="0" style="margin: 0px; background-color: ##f7f2e4;" bgcolor="##f7f2e4" leftmargin="0">
<!--100% body table-->
<table cellspacing="0" border="0" cellpadding="0" width="100%" bgcolor="##f7f2e4">
  <tr>
    <td>
  <!--top links-->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="middle" align="center" height="45">
          <br></td>
        </tr>
      </table>
   <!--header-->
<table style="background:url(http://central.fkbc.org/email/bbs/001/images/header-bg.jpg); background-repeat: no-repeat; background-position: top; background-color: ##fffdf9;" width="684" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>


      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="top" width="173">
            <!--ribbon-->


            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="120" width="45"></td>
                <td background="http://central.fkbc.org/email/bbs/001/images/ribbon.jpg" valign="top" bgcolor="##c72439" height="120" width="80">


                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="bottom" align="center" height="35">
                        <p style="font-size: 14px; font-family: Georgia, 'Times New Roman', Times, serif; color: ##ffffff; margin-top: 0px; margin-bottom: 0px;">#newMonth#</p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" align="center">
                        <p style="font-size: 36px; font-family: Georgia, 'Times New Roman', Times, serif; color: ##ffffff; margin-top: 0px; margin-bottom: 0px; text-shadow: 1px 1px 1px ##333;">#newDay#</p>
                      </td>
                    </tr>
                  </table>


                </td>
              </tr>
            </table><!--ribbon-->


          </td>
          <td valign="middle" width="493">

            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" colspan="2"></td>
              </tr>
              <tr>
                <td width="80"></td>
                <td>
                  <img src="http://central.fkbc.org/email/bbs/001/images/logo-blue01.png">
                </td>
              </tr>
              <tr>
                <td height="20" colspan="2">
                </td>
              </tr>
            </table>
    <!--date-->
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top" align="center" bgcolor="##312c26" background="http://central.fkbc.org/email/bbs/001/images/date-bg.jpg" width="357" height="42">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="5"></td>
                      </tr>
                    </table>
                  <p style="font-size: 24px; font-family: Georgia, 'Times New Roman', Times, serif; color: ##ffffff; margin-top: 0px; margin-bottom: 0px;">Vision NOTICE</p>
                </td>
              </tr>
            </table><!--/date-->


        </td>
      </tr>
    </table>


  
 
    
    <!--section 1-->

            <table cellspacing="0" border="0" cellpadding="0" width="100%">
              <tr>
                <td valign="top">
                <br>
                <center>
                <strong>Subject : #subject#</strong>
                </center>
                </td>
              </tr>
  
              <tr>
                <td valign="bottom" height="50" align="center"><img src="http://central.fkbc.org/email/bbs/001/images/line-break.jpg" width="622" height="27"></td>
              </tr>
              <tr>
                <td align="center">
                  <table cellspacing="0" border="0" cellpadding="0" width="80%">
                    <tr>
                      <td>
                  <p style="font-size: 16px; line-height: 22px; font-family: Georgia, 'Times New Roman', Times, serif; color: ##333; margin: 0px;">#body#</p>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
           
              <tr>
                <td height="72" align="center"><img src="http://central.fkbc.org/email/bbs/001/images/line-break-2.jpg" width="622" height="72">
                </td>
              </tr>
           
              <tr>
                <td align="center">

                  본 이메일은 Vision Intranet System에서 자동으로 보내지는 이메일 입니다.<br>
                  이메일 관련 문의는 아래 이메일로 해 주시기 바랍니다.
  
<!--line break-->
                    <table cellspacing="0" border="0" cellpadding="0" width="100%">
                      <tr>
                        <td height="72" align="center"><img src="http://central.fkbc.org/email/bbs/001/images/line-break-2.jpg" width="622" height="72">
                          <br>
                          <center>
                            master@visionma.com
                          </center>
                        </td>
                      </tr>
                    </table><!--/line break-->

                </td>
              </tr>
            </table><!--/section 3-->


         


</td>
  </tr>
</table>
</td>
  </tr>
</table>
    
 
</body>
</html>





</cfmail>

 </cfoutput>


<cflocation url="bbs.cfm?sp=Y&bbs=#form.bbs#">