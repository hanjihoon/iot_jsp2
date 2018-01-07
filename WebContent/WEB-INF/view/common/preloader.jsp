<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>preloader - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    	body,
	html {
	  height: 100%;
	  width: 100%;
	  padding: 0;
	  margin: 0;
	  overflow: hidden;
	}
	
	.wrapper {
	  width: 100%;
	  height: 100%;
	}
	
	.loading {
	  margin: 10% auto;
	  border-top: 6px solid #1abc9c;
	  width: 125px;
	  position: absolute;
	  margin: 0 auto;
	  left: 0;
	  right: 0;
	  top: 50%;
	  z-index: 9999;
	}
	
	.spin {
	  -webkit-animation: spin 1s infinite linear;
	  -moz-animation: spin 2s infinite linear;
	  -ms-animation: spin 2s infinite linear;
	  -o-animation: spin 2s infinite linear;
	  animation: spin 1s infinite linear;
	}
	
	@keyframes "spin" {
	  from {
	    -webkit-transform: rotate(0deg);
	    -moz-transform: rotate(0deg);
	    -o-transform: rotate(0deg);
	    -ms-transform: rotate(0deg);
	    transform: rotate(0deg);
	  }
	  to {
	    -webkit-transform: rotate(360deg);
	    -moz-transform: rotate(360deg);
	    -o-transform: rotate(360deg);
	    -ms-transform: rotate(360deg);
	    transform: rotate(360deg);
	  }
	}
	
	@-moz-keyframes spin {
	  from {
	    -moz-transform: rotate(0deg);
	    transform: rotate(0deg);
	  }
	  to {
	    -moz-transform: rotate(360deg);
	    transform: rotate(360deg);
	  }
	}
	
	@-webkit-keyframes "spin" {
	  from {
	    -webkit-transform: rotate(0deg);
	    transform: rotate(0deg);
	  }
	  to {
	    -webkit-transform: rotate(360deg);
	    transform: rotate(360deg);
	  }
	}
	
	@-ms-keyframes "spin" {
	  from {
	    -ms-transform: rotate(0deg);
	    transform: rotate(0deg);
	  }
	  to {
	    -ms-transform: rotate(360deg);
	    transform: rotate(3670deg);
	  }
	}
	
	@-o-keyframes "spin" {
	  from {
	    -o-transform: rotate(0deg);
	    transform: rotate(0deg);
	  }
	  to {
	    -o-transform: rotate(360deg);
	    transform: rotate(360deg);
	  }
	}
	
	.class {
	  -webkit-animation: none;
	  -moz-animation: none;
	  -o-animation: none;
	  animation: none;
	}
	
	.up {
	  background-color: #34495e;
	  width: 100%;
	  height: 50%;
	  position: absolute;
	  top: 0;
	}
	
	.down {
	  background-color: #34495e;
	  width: 100%;
	  height: 50%;
	  position: absolute;
	  bottom: 0;
	}
	
	.left-text-con,
	.right-text-con {
	  position: absolute;
	  width: 50%;
	  height: auto;
	  top: 35%;
	}
	
	.left-text-con {
	  left: -50%;
	  text-align: right;
	  margin-right: 10px;
	}
	
	.right-text-con {
	  right: -50%;
	}
	
	.text {
	  color: #34495e;
	  font-size: 4em;
	  margin: 0 auto;
	}
	
	@media (max-height: 300px) {
	  .text {
	    font-size: 3em;
	  }
	  .left-text-con,
	  .right-text-con {
	    top: 20%;
	  }
	}

.anchor-user {
  font-size: 3em;
  position: relative;
  bottom: 0;
  right: 20px;
  color: #000;
}

.anchor-user:hover {
  color: #039be5;;
    -webkit-transition: color .5s ease;
     -moz-transition: color .5s ease;
      -ms-transition: color .5s ease;
       -o-transition: color .5s ease;
          transition: color .5s ease;
}
    </style>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
      //  $( document ).ready(function() {
     //     var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
      //  });
    </script>
</head>
<body>
	<div class="wrapper">
  <div class="up"></div>
  <div class="loading"></div>
  <div class="down"></div>
</div>

	<script type="text/javascript">
	$(window).load(function() {
  $(".loading").addClass("spin");

  setTimeout(function() {
    var currentPositon = $(".loading").css("transform");
    console.log(currentPositon)
    $(".loading").addClass("class").css("transform", currentPositon).css("transform", "none")
    $(".loading").animate({

    }, 500, function() {
      increaseWidth();
    });
  }, 1985);

  function increaseWidth() {
    $(".loading").animate({

      width: "+=100%",
    }, 2500, function() {
      slide();
      removeLine();
      moveTextRight();
      moveTextLeft();
    });
  }

  function removeLine() {
    $(".loading").animate({

      width: "0%",
    }, 2500, function() {});
  }

  function goUp() {
    $(".up").show();
    $(".up").animate({
      top: "-=50%"
    }, 2500, function() {
      $(this).hide();
    });
  }

  function goDown() {
    $(".down").show();
    $(".down").animate({
      bottom: "-=50%"
    }, 2500, function() {
      $(this).hide();
    });
  }

  function slide() {
    goUp();
    goDown();
  }

});
	</script>
</body>