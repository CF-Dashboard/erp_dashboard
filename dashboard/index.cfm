<!DOCTYPE html>
<html>
<head>
    <style>
        * {
          box-sizing: border-box;
        }

        body {
          font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the Calendar & Daily Meetings */
        .calendar {
          background-color: orange;
          padding: 30px;
          text-align: center;
          font-size: 35px;
          height:600px;
          width:80%;
          float: left;
        }

        .daily_meetings {
          background-color: rgb(221, 15, 46);
          padding: 10px;
          height: 600px;
          text-align: center;
        }

        /* Create three equal columns that floats next to each other */
        .map {
          float: left;
          height:auto;
          width: 25%;
          padding: 10px;
        }

        .media_player {
          float: left;
          width: 50%;
          height:412px;
          padding: 10px;
        }

        .weather_time {
          float: left;
          width: 25%;
          height:412px;
          padding: 10px;
        }
    </style>

    <cfoutput>
    <cfobject name="app" component="Application">
    #app.openExchangeConnection()#
    <cfset calendarData = app.retrieveCalendarData()>
    <cfdump var = "#calendarData#">
    #app.closeExchangeConnection()#
    </cfoutput>
</head>
<body>

<div class="grid-container">

  <div class="calendar">
    <h2>Calendar</h2>
  </div>

  <div class="daily_meetings">
    <p>Daily Meetings</p>
  </div>

  <div class="map" style="background-color:red;">
    <img src="floor.PNG" alt="floor" style="width:600px;">
  </div>

  <div class="media_player" style="background-color:green;">
    Media
  </div>

  <div class="weather_time" style="background-color:blue;">
    <p><cfoutput>
        #now()#
    </cfoutput></p>

  </div>
</div>

</body>
</html>
