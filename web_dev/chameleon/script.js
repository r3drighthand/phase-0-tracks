console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.background = "pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);