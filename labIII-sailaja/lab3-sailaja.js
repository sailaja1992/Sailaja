///////  Direction ///////////////////
var directionDisplay;
var directionsService = new google.maps.DirectionsService();     //Create a DirectionsService object which is required to communicate with the Google Maps API Direction Service
var map2;
function initialize()
{
            directionsDisplay = new google.maps.DirectionsRenderer();        //Create a DirectionsRenderer object to render the directions results
    var center = new google.maps.LatLng(0, 0);    //Map is centered at 0,0
    var myOptions =
    {
            zoom:7,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: center
    }
    map2 = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    directionsDisplay.setMap(map2);
    var start =$("#l1").val();     //Set the source/ origin
    var end = $("#l2").val();//"Mumbai";  //Set the destination
    var request =
    {
            origin:start,
            destination:end,
            travelMode: google.maps.DirectionsTravelMode.DRIVING          //Current travel mode is DRIVING. You can change to BICYCLING or WALKING and see the changes.
    };
    directionsService.route(request, function(response, status)
    {
            if (status == google.maps.DirectionsStatus.OK) //Check if request is successful.
            {
            directionsDisplay.setDirections(response);         //Display the directions result
            }
    });
}

var button = document.getElementById('button');

var onClick = function() {
    initialize();
};

button.addEventListener('click', onClick, false);


//array to store values
var stores = Array();
//input field text
var inputField = document.getElementById('inputString');

//clear the storage
function clearStorage() {
    //clear the storage
    stores = Array();
    localStorage.clear("database");
    //visually cleared
    document.getElementById('write').innerHTML = "checklist cleared.";
};

// save the string
function saveStatusLocally() {
    //grab the value of the text box
    var stringToSave = inputField.value;
    if ((stringToSave == null) || (stringToSave == "")) {
        document.getElementById('write').innerHTML = "no checklist";
    } else {
        //push that value to the array
        stores.push(stringToSave);
        //clear the input field for visual 
        inputField.value = "";
        //print that value into the local storage named database and joing by a non-breaking space
        window.localStorage.setItem("database", stores.join(" "));
        //confirm write
        document.getElementById('write').innerHTML = "item added";
        //clear message after 1s
        setTimeout(function() {
            document.getElementById('write').innerHTML = "";
        }, 1000);

    }
};

// read the string
function readStatus() {
    //print the value of the local storage "database" key
    if (window.localStorage.getItem("database") == null) {
        document.getElementById('write').innerHTML = "no checklist";
    } else {
        document.getElementById('write').innerHTML = window.localStorage.getItem("database");
    }
};


