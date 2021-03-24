const ratingModal = () => {
 let modal = document.getElementById("rating_modal");
 modal.style.display = "block";
 console.log("test")
};

const ratingModalClose = () => {
 let modal = document.getElementById("rating_modal");
 modal.style.display = "none";
};

const ratingModalCloseElse = (event) => {
  let modal = document.getElementById("rating_modal");
  if (event.target == modal) {
    modal.style.display = "none";
  };
};

export { ratingModal };
export { ratingModalClose };
export { ratingModalCloseElse };
