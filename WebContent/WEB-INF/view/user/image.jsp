
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>Portfolio using Panels No JavaScript! - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    @import url("http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
.panel-image {
    position: relative;   
}
.panel-image img.panel-image-preview {
    width: 100%;
	border-radius: 4px 4px 0px 0px;
}

.panel-image label {
    display: block;
    position: absolute;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
}

.panel-heading ~ .panel-image img.panel-image-preview {
	border-radius: 0px;
}

.panel-body {
   overflow: hidden;
}

.panel-image ~ input[type=checkbox] {
    position:absolute;
    top:- 30px;
    z-index: -1;   
}

.panel-image ~ input[type=checkbox] ~ .panel-body {
	height: 0px;
	padding: 0px;
}

.panel-image ~ input[type=checkbox]:checked ~ .panel-body {
    height: auto;
	padding: 15px;
}

.panel-image ~ .panel-footer a {
    padding: 0px 10px;
	font-size: 1.3em;
	color: rgb(100, 100, 100);
}

    </style>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script>
</head>
<body>
	<div class="container" style="margin-top:10px;">
	<div class="row form-group">
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-image">
                    <img src="http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52d09387ae003_1.JPG" class="panel-image-preview" />
                    <label for="toggle-1"></label>
                </div>
                <input type="checkbox" id="toggle-1" class="panel-image-toggle">
                <div class="panel-body">
                    <h4>Title of Image</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.</p>
                </div>
                <div class="panel-footer text-center">
                    <a href="#download"><span class="glyphicon glyphicon-download"></span></a>
                    <a href="#facebook"><span class="fa fa-facebook"></span></a>
                    <a href="#twitter"><span class="fa fa-twitter"></span></a>
                    <a href="#share"><span class="glyphicon glyphicon-share-alt"></span></a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-image hide-panel-body">
                    <img src="http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52cf9489095e8_1.JPG" class="panel-image-preview" />
                    <label for="toggle-2"></label>
                </div>
                <input type="checkbox" id="toggle-2" class="panel-image-toggle">
                <div class="panel-body">
                    <h4>Title of Image</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.</p>
                </div>
                <div class="panel-footer text-center">
                    <a href="#download"><span class="glyphicon glyphicon-download"></span></a>
                    <a href="#facebook"><span class="fa fa-facebook"></span></a>
                    <a href="#twitter"><span class="fa fa-twitter"></span></a>
                    <a href="#share"><span class="glyphicon glyphicon-share-alt"></span></a>
                </div>
            </div>
        </div>
	</div>
    
    <div class="row form-group">
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">You can even have a Panel Title</h3>
                </div>
                <div class="panel-image hide-panel-body">
                    <img src="http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52c470899a2e1_1.JPG" class="panel-image-preview" />
                    <label for="toggle-3"></label>
                </div>
                <input type="checkbox" id="toggle-3" class="panel-image-toggle">
                <div class="panel-body">
                    <h4>Title of Image</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.</p>
                </div>
                <div class="panel-footer text-center">
                    <a href="#download"><span class="glyphicon glyphicon-download"></span></a>
                    <a href="#facebook"><span class="fa fa-facebook"></span></a>
                    <a href="#twitter"><span class="fa fa-twitter"></span></a>
                    <a href="#share"><span class="glyphicon glyphicon-share-alt"></span></a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-image">
                    <img src="http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52cd36aac6bed_1.JPG" class="panel-image-preview" />
                    <label for="toggle-4"></label>
                </div>
                <input type="checkbox" id="toggle-4" checked class="panel-image-toggle">
                <div class="panel-body">
                    <h4>Show the Description by default!</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.</p>
                </div>
                <div class="panel-footer text-center">
                    <a href="#download"><span class="glyphicon glyphicon-download"></span></a>
                    <a href="#facebook"><span class="fa fa-facebook"></span></a>
                    <a href="#twitter"><span class="fa fa-twitter"></span></a>
                    <a href="#share"><span class="glyphicon glyphicon-share-alt"></span></a>
                </div>
            </div>
        </div>
	</div>
</div>
	<script type="text/javascript">
	
	</script>
</body>
</html>