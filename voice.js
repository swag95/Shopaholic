

function parsesearch(){
	alert("Allow browser to use microphone?");
var commands = {

  // annyang will capture anything after a splat (*) and pass it to the function.

  // e.g. saying "Show me Batman and Robin" is the same as calling showFlickr('Batman and Robin');

  'show me *term': showFlickr,

 

  // A named variable is a one word variable, that can fit anywhere in your command.

  // e.g. saying "calculate October stats" will call calculateStats('October');

  'calculate :month stats': calculateStats,

 

  // By defining a part of the following command as optional, annyang will respond to both:

  // "say hello to my little friend" as well as "say hello friend"

  'say hello (to my little) friend': greeting

};

 

var showFlickr = function(term) {

  var url = 'http://api.flickr.com/services/rest/?tags='+tag;

  $.getJSON(url);

}

 

var calculateStats = function(month) {

  $('#stats').text('Statistics for '+month);

}

 

var greeting = function() {

  $('#greeting').text('Hello!');

}

 
}
</script>
