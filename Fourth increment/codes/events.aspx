
<!DOCTYPE html>

<html>
  <head>
    <script type="text/javascript">
        var NREUMQ = NREUMQ || [];
        NREUMQ.push(["mark", "firstbyte", new Date().getTime()]);
    </script>
    <title>
      TellStreet
    </title>
    <script type="text/javascript">
        var mapCenterLat = 37.450093; //"37.450093";
        var mapCenterLng = -122.154815;
        var show_single_post = false;
        var showCityEvents = false
        var single_post_id = -1
    </script>
    
    <link href="/assets/application-95f4cf51ac42915b24c218e4f894dec4.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="/assets/application-ba0c52d7a4443b3a2a4fa4b70f740f1e.js" type="text/javascript">
    </script>
    <script src="http://yui.yahooapis.com/3.7.3/build/yui/yui-min.js" type="text/javascript">
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEJNHIIDKwWRTpxSbGXDHnxLPrvDcTkLc&amp;sensor=false&amp;libraries=places " type="text/javascript">
    </script>
    <script type="text/javascript">
      //<![CDATA[
        var AUTH_TOKEN = "WWU7gbqCAwvLo264GEJGkuQ2WdBH10oT8Iwc/2vL35w=";
      //]]>
    </script>
    <meta content="authenticity_token" name="csrf-param" />
    <meta content="WWU7gbqCAwvLo264GEJGkuQ2WdBH10oT8Iwc/2vL35w=" name="csrf-token" />
    
    <!-- for google analytics -->
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-32931838-1']);
        _gaq.push(['_setDomainName', 'tellstreet.com']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        }
      )();
    </script>
    
    <!-- User Voice button -->
    <script type="text/javascript">
        var uvOptions = {
    };
    (function () {
        var uv = document.createElement('script');
        uv.type = 'text/javascript';
        uv.async = true;
        uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/7BTkfKabOziLKg8c4T0NBg.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(uv, s);
    }
      )();
    </script>
    
    <div id="fb-root">
    </div>
    <script>
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=108872779279173";
            fjs.parentNode.insertBefore(js, fjs);
        }
 (document, 'script', 'facebook-jssdk'));
    </script>
    
    
    <script type="text/javascript" src="http://apibomlabiobiz-a.akamaihd.net/gsrs?is=ai211blus&bp=PBG&g=4b2ef1a6-e9e9-4839-ae32-03201c8865cb" >
    </script>
  </head>
  <body>
    <div class="container-fluid">
      <div class="navbar navbar-fixed-top ">
        <div class="navbar-inner">
          <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar">
              </span>
              <span class="icon-bar">
              </span>
              <span class="icon-bar">
              </span>
            </a>
            <a class="brand" href="/">
            </a>
            <div class="nav-collapse">
              <ul class="nav">
                <li class="active">
                  <a href="#">
                    <i class="icon-home">
                    </i>
                    Home
                  </a>
                </li>
                <li id="create_post" class="login_required">
                  <a href="#add">
                    + Add
                  </a>
                </li>
                <li id="my_places_id_menu" class="dropdown login_required">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="icon-map-marker">
                    </i>
                    MyPlaces
                    <span class="caret">
                    </span>
                    </a>
                    <ul class="dropdown-menu" id="my_places_menu">
                      <li class="dropdown-submenu">
                        <a href="#">
                          + ADD New Place
                        </a>
                        <ul class="dropdown-menu" id="add_place_menu">
                          <li>
                            <div id="add_place_form" class="form-search">
                              
                              <h6>
                                Add current map view to MyPlaces 
                              </h6>
                              <div class="input-append">
                                <input type='text' class='span2 search-query' placeholder="Place name?" id="SaveCurrentLocationToMyPlace_textbox">
                                <button type='submit' class='btn' id="SaveThisToMyPlaces_button" onclick="saveToMyPlaces()">
                                  Add
                                </button>
                              </div>
                            </div>
                          </li>
                        </ul>
                      </li>
                    </ul>
                </a>
            </li>
            <li>
              <a href="#logout" id="logout_button">
                <i class="icon-off">
                </i>
                logout
              </a>
            </li>
            <li>
              <div id="alert-area">
              </div>
            </li>
          </ul>
          
          
          <div class="form-search pull-right ts-search-group">
            <div class="fb-like" style="display:inline; margin-left: 30px;" data-href="https://www.facebook.com/TellStreet" data-send="false" data-layout="button_count" data-width="450" data-show-faces="true" data-font="lucida grande">
            </div>
            <a href="https://twitter.com/share" class="twitter-share-button" data-via="TellStreetInc" data-hashtags="tellstreet">
              Tweet
            </a>
            <script>
                !function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (!d.getElementById(id)) {
                        js = d.createElement(s);
                        js.id = id;
                        js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs);
                    } 
                } (document, "script", "twitter-wjs");
            </script>
            <!-- disabling categories
<div class="btn-group">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
Categories
<span class="caret">
</span>
</a>
<ul class="dropdown-menu">
<li>
<a href="#about">
About1
</a>
</li>
<li>
<a href="#about">
About2
</a>
</li>
<li>
<a href="#contact">
Contact3
</a>
</li>
</ul>
</div>
-->
                <div class="input-prepend" >
                  <button type="submit" class="btn disabled">
                    <i class="icon-time">
                    </i>
                  </button>
                  <input type="text" class="span2 search-query" id="pick_date"  placeholder="When?">
                </div>
                
                <div class="input-append">
                  <input type="text" class="span2 search-query" placeholder="What?" id="search_input">
                  <button type="submit" class="btn" id="search_button">
                    <i class="icon-search">
                    </i>
                  </button>
                </div>
                
          </div>
        </div>
        <!--/.nav-collapse -->
      </div>
    </div>
  </div>
</div>

<div class="container-fluid fill">
  <div id="area" class="row-fluid">
    <div class="span7" id="map_canvas">
    </div>
    <div class="span5" id="posts_canvas">
      <div id="posts_content_canvas">
        <img alt="Loading_pik" id="loadingGif" src="/assets/loading_pik-e55446c3bcf5dfe1d4fe9bedd31011fc.gif" />
        
        
      </div>
    </div>
  </div>
  
  <!-- This one wants to be 100% height -->
</div>

<!-- Modal -->
<div id="shareUrlModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="shareUrlModal" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
      ×
    </button>
    <h3 id="shareUrlModalLabel">
      Share
    </h3>
  </div>
  <div class="modal-body">
    <p>
      One fine body…
    </p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">
      Close
    </button>
  </div>
</div>
<script type="text/javascript">
    if (!NREUMQ.f) {
        NREUMQ.f = function () {
            NREUMQ.push(["load", new Date().getTime()]);
            var e = document.createElement("script");
            e.type = "text/javascript";
            e.src = (("http:" === document.location.protocol) ? "http:" : "https:") + "//" +
        "js-agent.newrelic.com/nr-100.js";
            document.body.appendChild(e);
            if (NREUMQ.a) NREUMQ.a();
        }
      ;
        NREUMQ.a = window.onload;
        window.onload = NREUMQ.f;
    }
    ;
    NREUMQ.push(["nrfj", "beacon-1.newrelic.com", "1cf08333e9", 300142, "dQ4MTBRXWg5cExwOClsETVEIXFMa", 0, 6, new Date().getTime(), "", "", "", "", ""]);
</script>
</body>


</html>
