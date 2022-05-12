 <style type="text/css">
     .link-contact {
         transition: 0.5s all;
         position: fixed;
         left: 0px;
         bottom: 20px;
         z-index: 10000;
     }

     .link-contact .item {
         /* display: none; */
         margin: 10px;
         width: 50px;
         text-align: center;
     }

     .link-contact .item.link-contact-show {
         display: block;
     }

     .linkcontact-1,
     .linkcontact-2,
     .linkcontact-3 {
         margin: 10px 0px;
     }

     .linkcontact-1 a,
     .linkcontact-2 a,
     .linkcontact-3 a {
         display: block;
     }

     .linkcontact-1 a img,
     .linkcontact-2 a img,
     .linkcontact-3 a img,
     .linkcontact-4 a img {
         width: 100%;
         border-radius: 50%;
     }

     @media(max-width:768px) {

         .linkcontact-1 a img,
         .linkcontact-2 a img,
         .linkcontact-3 a img,
         .linkcontact-4 a img {
             width: 80%;
             border-radius: 50%;

         }
     }

     .linkcontact-1 a:hover>.p1,
     .linkcontact-2 a:hover>.p2,
     .linkcontact-3 a:hover>.p3 {
         width: 220px;
         padding-right: 10px;
         white-space: nowrap;
     }

     .linkcontact-1 p,
     .linkcontact-2 p,
     .linkcontact-3 p {
         position: absolute;
         top: 0px;
         padding: 10px 0px;
         transition: all 0.6s;
         width: -1;
         left: 15px;
         z-index: -1;
         margin: 0;
         background: #1FA4F4;
         color: #fff;
         white-space: nowrap;
         overflow: hidden;
         text-align: end;
         border-radius: 20px
     }

     #contacthide {
         background: #337ab7;
         border-radius: 10px;
         padding: 5px 20px;
         color: #fff;
         text-transform: uppercase;
         text-align: center;
         font-weight: bold;
         outline: none;
         position: relative;
     }

     /* #contacthide:hover>p {
         width: 240px;
         margin-right: 100px;
         white-space: nowrap;
     }

     #contacthide p {
         position: absolute;
         top: -5px;
         padding: 10px 0px;
         transition: all 0.6s;
         width: 0;
         right: 0px;
         z-index: -1;
         margin: 0;
         background: #fff;
         color: #444;
         border: 1px solid #ccc;
         white-space: nowrap;
         overflow: hidden;
         text-align: center;
         border-radius: 5px;
         font-size: 14px;
         font-weight: normal;
     } */
     .linkcontact-4,
     .linkcontact-1 {
         width: 50px;
         height: 50px;
         display: flex;
         align-items: center;
         justify-content: center;
         font-size: 20px;
         border-radius: 50%;
     }

     .linkcontact-4 {
         background: #ff2000;
     }

     .linkcontact-1 {
         background: #C69B2B;
     }

     .linkcontact-4 a,
     .linkcontact-1 a {
         color: #fff !important;
     }
 </style>
 <div class="link-contact">
     <div class="item">
         <div class="linkcontact-1">
             <a data-toggle="modal" data-target="#modal-contact">
                 <i class="fa fa-file-signature"></i>
             </a>
         </div>
         <div class="linkcontact-2">
             <a target="_blank" href="<?php echo $infoPage->messenger ?>">
                 <svg width="44" height="44" viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                     <circle cx="22" cy="22" r="22" fill="url(#paint10_linear)"></circle>
                     <path fill-rule="evenodd" clip-rule="evenodd" d="M22.0026 7.70215C14.1041 7.70215 7.70117 13.6308 7.70117 20.9442C7.70117 25.1115 9.78083 28.8286 13.0309 31.256V36.305L17.9004 33.6325C19.2 33.9922 20.5767 34.1863 22.0026 34.1863C29.9011 34.1863 36.304 28.2576 36.304 20.9442C36.304 13.6308 29.9011 7.70215 22.0026 7.70215ZM23.4221 25.5314L19.7801 21.6471L12.6738 25.5314L20.4908 17.2331L24.2216 21.1174L31.239 17.2331L23.4221 25.5314Z" fill="white"></path>
                     <defs>
                         <linearGradient id="paint10_linear" x1="21.6426" y1="43.3555" x2="21.6426" y2="0.428639" gradientUnits="userSpaceOnUse">
                             <stop stop-color="#1168CF"></stop>
                             <stop offset="1" stop-color="#2CB7FF"></stop>
                         </linearGradient>
                     </defs>
                 </svg>
             </a>
         </div>
         <div class="linkcontact-3">
             <a target="_blank" href="https://zalo.me/<?php echo $infoPage->zalo ?>">
                 <img src="views/include/fixedItems/zalo.png" />
             </a>
         </div>
         <div class="linkcontact-4">
             <a href="tel:<?php echo $infoPage->phone ?>">
                 <i class="fa fa-phone-alt"></i>
             </a>
         </div>
     </div>
     <!-- <div id="contacthide">
         Liên hệ
     </div> -->
 </div>
 <!-- <script type="text/javascript">
     var state = false
     $("#contacthide").click(function() {
         if (state) {
             $(".link-contact .item").removeClass("link-contact-show");
             state = false;
         } else {
             $(".link-contact .item").addClass("link-contact-show");
             state = true;
         }
     });
 </script> -->