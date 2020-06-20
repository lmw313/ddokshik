$.fn.toggleState = function (b) {
	$(this)
		.stop()
		.animate(
			{
				width: b ? "300px" : "50px"
			},
			600,
			"easeOutElastic"
	   );
};

$(document).ready(function () {
//	var container = $(".container");
	var boxContainer = $("#search-box-container");
	var submit = $("#search-box-submit");
	var searchBox = $("#search-box-input");
	var response = $("#search-response");
	var isOpen = false;
  console.log("boxContainer : " + boxContainer);
  console.log("submit : " + submit);
  console.log("searchBox : " + searchBox);
  console.log("response : " + response);
	submit.on("mousedown", function (e) {
		e.preventDefault();
		boxContainer.toggleState(!isOpen);
		isOpen = !isOpen;
		if (!isOpen) {
			handleRequest();
		} else {
			searchBox.focus();
		}
	});
	searchBox.keypress(function (e) {
		if (e.which === 13) {
			boxContainer.toggleState(false);
			isOpen = false;
			handleRequest();
		}
	});
	searchBox.blur(function () {
		boxContainer.toggleState(false);
		isOpen = false;
	});
	function handleRequest() {
		// You could do an ajax request here...
		var value = searchBox.val();
		searchBox.val("");
		if (value.length > 0) {
			response.text('Searching for "' + value + '" . . .');
			response
				.animate(
					{
						opacity: 1
					},
					300
				)
				.delay(2000)
				.animate(
					{
						opacity: 0
					},
					300
				);
		}
	}
});
