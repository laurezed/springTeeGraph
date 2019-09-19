/**
 * 
 */

document.addEventListener('DOMContentLoaded', function(event) {
	var serigraphie = document.getElementsByClassName("link");
	// console.log(serigraphie);
	Array.prototype.forEach.call(serigraphie, function(seri) {
		seri.addEventListener('click', function(ser) {
			console.log(seri.getAttribute("id"));
			if (window.fetch) {
				fetch("product/" + seri.getAttribute("id"))
				.then(reponse => console.log(JSON.stringify(reponse)))
			}
		})
	})
	// Array.from(serigraphie).forEach((seri)=>{
	// console.log(seri);
	// })
	// serigraphie.forEach(function(seri){
	// console.log(seri);
	// })
})