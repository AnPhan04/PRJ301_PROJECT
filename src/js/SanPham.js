document.addEventListener("DOMContentLoaded", function () {

	var sp3_phai = document.querySelector('.sp3_phai');
	console.log(sp3_phai)
	var vitri = sp3_phai.offsetTop;

	var chancuoi = vitri + 815;


	// console.log(menudo);
	window.addEventListener('scroll', function () {
		console.log(window.pageYOffset);

		// xử lí khối
		if (window.pageYOffset + 65 > vitri && window.pageYOffset < chancuoi) {

			sp3_phai.classList.add('dunglai1');

		} else if (window.pageYOffset + 65 < vitri || window.pageYOffset > chancuoi) {


			sp3_phai.classList.remove('dunglai1');

		}


	})

}, false)
