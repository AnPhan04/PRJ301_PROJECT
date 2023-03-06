document.addEventListener("DOMContentLoaded",function(){
	var pt1=document.querySelectorAll('a#navbarDropdownMenuLink');
	var pt2=document.querySelectorAll('ul.dropdown-menu');
	var k;
	var trangthai='trangthai1';
	var d1=document.querySelectorAll('li.nav-item.dropdown');
	// console.log(d1);

	// d1[0].removeEventListener('click',null);
	// d1[1].removeEventListener('click',null);

	// for (let i = 0; i < pt1.length; i++) {
	// 		pt1[i].addEventListener('click',function(event) {
	// 			pt1[i].classList.remove('show');
	// 			pt2[i].classList.remove('show');
						
	// 		})
			
	// 	}
	
		
		for (let i = 0; i < pt1.length; i++) {
			d1[i].addEventListener('mousemove',function(event) {
				pt1[i].classList.add('show');
				pt2[i].classList.add('show');
						
			})
			d1[i].addEventListener('mouseleave',function(event) {
				pt1[i].classList.remove('show');
				pt2[i].classList.remove('show');		
			})
		}

		//hết
		var pt3=document.querySelectorAll('li.nav-item.dropdown');
		var thanhchay=document.querySelectorAll('.thanhchay');
		console.log(thanhchay)
		for (let i = 0; i < pt3.length; i++) {
			pt3[i].addEventListener('mousemove',function(event){
				thanhchay[i].classList.add('chay1');
				thanhchay[i].classList.remove('chay2');
			})

			pt3[i].addEventListener('mouseleave',function(event){
								
					thanhchay[i].classList.remove('chay1');
					thanhchay[i].classList.add('chay2');				
				
			})
	
		}
		//hết
		var pt4=document.querySelectorAll('.khoi4');
		var trang4=document.querySelectorAll('.trang4');
		console.log(trang4)
		
		for (let i = 0; i < pt4.length; i++) {
			pt4[i].addEventListener('mousemove',function(event){
				trang4[i].classList.add('cd1');
				trang4[i].classList.remove('cd2');
			})

			pt4[i].addEventListener('mouseleave',function(event){
								
					trang4[i].classList.remove('cd1');
					trang4[i].classList.add('cd2');				
				
			})
	
		}
		//hết
		var pt4=document.querySelectorAll('.khoi4');
		var trang4_7=document.querySelectorAll('.trang4.khoi7');
		console.log(trang4_7)
		console.log(pt4)
		
		for (let i = pt4.length - 1; i >= trang4_7.length; i--) {
			pt4[i].addEventListener('mousemove',function(event){
				trang4[i].classList.add('c_khoi7');
				trang4[i].classList.remove('cd1');
				trang4[i].classList.remove('cd1_khoi7');
			})

			pt4[i].addEventListener('mouseleave',function(event){
					trang4[i].classList.remove('c_khoi7');			
					trang4[i].classList.remove('cd2');
					trang4[i].classList.add('cd1_khoi7');				
				
			})
		}



		// hết
		var trangthaimenu='duoimenu'
		var menu=document.querySelector('nav.khoi2')
		var vitrimenu=menu.offsetTop;
		console.log(vitrimenu);
		var i=-1;

		window.addEventListener('scroll',function() {
			console.log(window.pageYOffset);
			if(window.pageYOffset>vitrimenu) {
			console.log('helloo')			
				// if(trangthaimenu=='duoimenu') {
					// console.log('trên menu');
					// trangthaimenu='trenmenu';
					// menu.classList.add('menu2');
					if(window.pageYOffset>i) {
						i=window.pageYOffset;
						menu.classList.remove('menuchay2_1');
						menu.classList.add('menuchay2_2');
					}else {
						i=window.pageYOffset;
						menu.classList.add('menuchay2_1');
						menu.classList.remove('menuchay2_2');
					}
				// }	
			}else if(window.pageYOffset<vitrimenu) {
				
				// if(trangthaimenu=='trenmenu') {
					console.log('dưới menu');
					trangthaimenu='duoimenu';
					menu.classList.remove('menuchay2_1');
				// }
			}

		})

		//hết
		var user=document.querySelector('.fa-user');
		var close=document.querySelector('.close');
		var login=document.querySelector('.login');
		var  modal=document.querySelector('.modal');
		console.log(user)

		user.addEventListener('click',function() {
			login.classList.add('turn-off');
			modal.classList.add('turn-off');

		})

		close.addEventListener('click',function() {
			login.classList.remove('turn-off');
			modal.classList.remove('turn-off');

		})

		login.addEventListener('click',function() {
			login.classList.remove('turn-off');
			modal.classList.remove('turn-off');

		})

		



		


	},false)