$(document).on("click", ".show-page-loading-msg", function() {
		var $this = $( this ),
			theme = $this.jqmData("theme") || $.mobile.loader.prototype.options.theme,
			msgText = $this.jqmData("msgtext") || $.mobile.loader.prototype.options.text,
			textVisible = $this.jqmData("textvisible") || $.mobile.loader.prototype.options.textVisible,
			textonly = !!$this.jqmData("textonly");
			html = $this.jqmData("html") || "";
			$.mobile.loading( 'show', {
				text: msgText,
				textVisible: textVisible,
				theme: theme,
				textonly: textonly,
				html: html
			});
		})
		.on("click", ".hide-page-loading-msg", function() {
			$.mobile.loading( 'hide' );
		});


$("#ButtonEventPage").on("pageshow",function(e) {
	

	$("#EventButton").on("click", function(e) {
		
		$("#status").html("<p>Loading...</p>");
		console.log("You Get the random number: "+Math.random())
		setTimeout(function() {
			$("#status").html("<p>You Got a random number: "+Math.random() + "</p>");
		},400);
	});


         $("#WelcomeButton").on("click", function(e) {
		
		
		$("#status").html("<p>Welcome to Tutorial2</p>");
		
	});


});


  var n = 0;
    $("div.enterleave").mouseenter(function(){
      $("p:first",this).text("mouse enter");
    }).mouseleave(function(){
      $("p:first",this).text("mouse leave");
    
    });
 
$("li").hover(
  function () {
    $(this).append($("<span> Your Choice</span>"));
  },
  function () {
    $(this).find("span:last").remove();
  }
);

$("li.fade").hover(function(){$(this).fadeOut(100);$(this).fadeIn(500);});
var map;
var elevator;
var myOptions = {
    zoom: 6,
    mapTypeId: 'terrain'
};
map = new google.maps.Map($('#map')[0], myOptions);
var markers = [];

 
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);

      var infowindow = new google.maps.InfoWindow({
        map: map,
        position: pos,
        content: 'Location found using HTML5.'
      });

      map.setCenter(pos);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {

    handleNoGeolocation(false);
  }

var directionDisplay;
var directionsService = new google.maps.DirectionsService();     
var map2;
function initialize()
{
            directionsDisplay = new google.maps.DirectionsRenderer();        
    var center = new google.maps.LatLng(0, 0);    
    var myOptions =
    {
            zoom:7,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: center
    }
    map2 = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    directionsDisplay.setMap(map2);
    var start = "vegas";     
    var end = "ohio";  
    var request =
    {
            origin:start,
            destination:end,
            travelMode: google.maps.DirectionsTravelMode.DRIVING          
    };
    directionsService.route(request, function(response, status)
    {
            if (status == google.maps.DirectionsStatus.OK) 
            {
            directionsDisplay.setDirections(response);        
            }
    });
}

var button = document.getElementById('button');

var onClick = function() {
    initialize();
};

button.addEventListener('click', onClick, false);