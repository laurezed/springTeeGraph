/**
 * 
 */

document.addEventListener('DOMContentLoaded', function(event) {
	let close = document.getElementById("link");
	close.addEventListener("click", function(e) {
		e.preventDefault();
		// let popup = document.getElementsByClassName("overlay");
		// popup.style.visibility = "hidden";

		var xhr = new XMLHttpRequest();
		xhr.open('GET', 'product/popup');
		xhr.onload = function() {
			if (xhr.status === 200) {
				alert('User\'s name is ' + xhr.responseText);
				console.log('User\'s name is ' + xhr.responseText);
			} else {
				alert('Request failed.  Returned status of ' + xhr.status);
			}
		};
		xhr.send();

	})
})
