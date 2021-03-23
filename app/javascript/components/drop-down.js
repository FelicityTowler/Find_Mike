/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function dropDown() {
  document.getElementById("drop-down-content").classList.toggle("show");
  document.getElementById("drop-down-arrow").classList.toggle("hide");
  const upArrow = document.getElementById("drop-up-arrow");
  if(upArrow.style.display == 'block')
            upArrow.style.display = 'none';
         else
            upArrow.style.display = 'block';
  console.log("Testing");
}

// Close the dropdown menu if the user clicks outside of it
// window.onclick = function(event) {
//   if (!event.target.matches('.dropbtn')) {
//     var dropdowns = document.getElementsByClassName("dropdown-content");
//     var i;
//     for (i = 0; i < dropdowns.length; i++) {
//       var openDropdown = dropdowns[i];
//       if (openDropdown.classList.contains('show')) {
//         openDropdown.classList.remove('show');
//       }
//     }
//   }
// }

export { dropDown };
