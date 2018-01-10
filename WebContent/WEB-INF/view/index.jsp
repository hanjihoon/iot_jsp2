<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>IOT</title>
	<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />
	<main class="text-center py-5">
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <p align="justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

            </div>
        </div>
    </div>
</main>
<!--Main Layout-->
	<script type="text/javascript">
	
	</script>
</body>
</html>
<script src="http://127.0.0.1/socket.io/socket.io.js"></script>
<script>
var app = require('http').createServer(handler)
, io = require('socket.io').listen(app)
, fs = require('fs');

app.listen(80);

function handler (req, res) {
  res.writeHead(200, {
      'Content-Type': 'text/html',
  });
  res.end('Hello, world!');
}

io.configure('development', function() {
io.set('log level', 1);

io.set('transports', [ 'websocket' ]);
});

io.sockets.on('connection', function (socket) {
  console.log('connection established');

  var readStream = fs.createReadStream("test.mp3", 
                                       {'flags': 'r',
                                        'encoding': 'binary', 
                                        'mode': 0666, 
                                        'bufferSize': 64 * 1024});
  readStream.on('data', function(data) {
      console.log(typeof data);
      console.log('sending chunk of data')
      socket.send(data);
  });

  socket.on('disconnect', function () {
      console.log('connection droped');
  });
});

console.log('Server running at http://127.0.0.1/');

    var audioBuffer = null;
    var context = null;
    window.addEventListener('load', init, false);
    function init() {
        try {
            context = new webkitAudioContext();
        } catch(e) {
            alert('Web Audio API is not supported in this browser');
        }
    }

    function decodeHandler(buffer) {
        console.log(data);
    }

    var socket = io.connect('http://127.0.0.1');
    socket.on('message', function (data) {
            // HERE IS THE PROBLEM
        context.decodeAudioData(data, decodeHandler, function(e) { console.log(e); });
    });
</script>


