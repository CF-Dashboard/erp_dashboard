
<!---
	Author: John Kim
--->

<cfscript>
component attributeName = "attributeValue" {
    <!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->
            this.name = "dashboard";
            //this.applicationTimeout = createTimeSpan(0,0,0,1); 
            // let this be set in CF Administrato
            this.clientmanagement= "yes";
                // this.loginstorage = "session" ;  // used only if using <CFLOGIN>
            this.sessionmanagement = "yes";
            this.sessiontimeout = createTimeSpan(1,0,0,0);
            this.scriptProtect = "all";

        <!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->

    <!--- This function triggers whe you boot up Cold Fusion, you will need to restart you server to apply changes to this function --->
        public function onApplicationStart(){
            //set your app vars for the application
            application.dsn = this.name;
            application.sessions = 0;
            //Change the name to the application you are making
            application.name = this.name;

            return true;
        }

    <!--- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --->

    <!--- This function triggers whenever a request for a page on the server is made --->



        <cffunction name="onRequestStart" >
            <cfargument name="requestname"  required=true/>

        </cffunction>
    }
</cfscript>
