<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>

        <title>tracking.js - Human Frontal Eye</title>

        <meta charset="utf-8">

        <script src="/TrackingIUI/track/headtrackr.js"></script>
        <script src="/TrackingIUI/track/trackStatus.js"></script>
        <script src="/TrackingIUI/track/pageZoom.js"></script>

    </head>
    <body>
        <div id="contentDiv">
            <h1>Heading 1</h1>
            <p>Some text to fill the page and test zooming.</p>
            <h3>Heading 3</h3>
        </div>
        <div id="videoDiv">
            <canvas id="inputCanvas" width="320" height="240" style="display:none"></canvas>
            <video id="inputVideo" autoplay loop></video>
        </div>
        <script type="text/javascript">
            console.log('Initializing the tracker and canvas...');
            var videoInput = document.getElementById('inputVideo');
            var canvasInput = document.getElementById('inputCanvas');

            var htracker = new headtrackr.Tracker();
            console.log('Starting the tracker...');
            htracker.init(videoInput, canvasInput);
            htracker.start();
        </script>
        <div id="console">
            <p id="support-message"></p> 
            <p>Status : <span id="headtracker-message"></span></p> 
            <p>
                <input type="button" onclick="htracker.stop();
            htracker.start();" value=" Reload Face Detection " />
            </p>
            <p id="calc-messages"></p>
        </div>
    </body>
</html>
