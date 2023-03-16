document.addEventListener("DOMContentLoaded", function () {

    var sp3_phai = document.querySelector('.sp3_phai');
    var sp3_khoi14 = document.querySelector('.khoi14');
    console.log(sp3_phai);
    console.log(sp3_khoi14);
    var vitri = sp3_phai.offsetTop;

    var chancuoi = sp3_khoi14.offsetTop - 555;
    console.log(sp3_khoi14.offsetTop);
    console.log(chancuoi);


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

    //Xử lí phần size
    var size_nut = document.querySelectorAll('.size');
    console.log('huy');
    for (var i = 0; i < size_nut.length; i++) {
        console.log('chon:'+size_nut[i].getAttribute('data-size'));
        var chon=size_nut[i].getAttribute('data-size');
        if(chon!=null) {
            size_nut[i].classList.add('sd');
        }
        size_nut[i].onclick = function () {
//            if (this.classList[1]== 'sd') {
//                this.classList.remove('sd');
//            if {
                for (var k = 0; k < size_nut.length; k++) {
                    size_nut[k].classList.remove('sd');
                }
                this.classList.add('sd');
//            }
        }
    }
}, false)
