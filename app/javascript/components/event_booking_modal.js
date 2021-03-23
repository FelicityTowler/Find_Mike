const eventBookingModal = () => {
 let modal = document.getElementById("event_booking_modal");
 modal.style.display = "block";
};

const eventBookingModalClose = () => {
 let modal = document.getElementById("event_booking_modal");
 modal.style.display = "none";
};

const eventBookingModalCloseElse = (event) => {
  let modal = document.getElementById("event_booking_modal");
  if (event.target == modal) {
    modal.style.display = "none";
  };
};

export { eventBookingModal };
export { eventBookingModalClose };
export { eventBookingModalCloseElse };
