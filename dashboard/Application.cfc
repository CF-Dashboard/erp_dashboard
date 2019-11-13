<!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~   11/7/2019   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->
<!--- Application Name: ERP Dashboard                                               --->
<!--- Author(s):        John Kim, Ivan Lopez                                        --->
<!--- Organization:     Enterprise Resource Department, City of Stockton            --->
<!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->

<component attributeName = "attributeValue">
    <!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->
    <cfscript>
        this.name = "dashboard";
        //this.applicationTimeout = createTimeSpan(0,0,0,1);
        // let this be set in CF Administrato
        this.clientmanagement= "yes";
            // this.loginstorage = "session" ;  // used only if using <CFLOGIN>
        this.sessionmanagement = "yes";
        this.sessiontimeout = createTimeSpan(1,0,0,0);
        this.scriptProtect = "all";
    </cfscript>
    <!--- hello
     --->
        <!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->

    <!--- This function triggers whe you boot up Cold Fusion, you will need to restart you server to apply changes to this function --->
    <cffunction name="onApplicationStart">
        <!--- set your app vars for the application --->
        <cfscript>
        application.dsn = this.name;
        application.sessions = 0;
        //Change the name to the application you are making
        application.name = this.name;
        </cfscript>
        <cfreturn true>
    </cffunction>

    <cffunction name="retrieveCalendarData">
        <cfexchangecalendar action="get" connection="exchangeConnection" name="dailyMeetings">
            <cfexchangefilter name=""
        </cfexchangecalendar>
    </cffunction>

    <!--- Open connection with John's Outlook --->
    <cffunction name="openExchangeConnection">
        <cfexchange action="open" connection="exchangeConnection" server="outlook.office365.com" username="john.kim@stocktonca.gov" password="">
    </cffunction>

    <!--- Close connection with John's Outlook --->
    <cffunction name="closeExchangeConnection">
        <cfexchange action="close" connection="exchangeConnection">
    </cffunction>

    <!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->

    <!--- This function triggers whenever a request for a page on the server is made --->
    <cffunction name="onRequestStart" >
        <cfargument name="requestname"  required=true/>

    </cffunction>

</cfcomponent>
