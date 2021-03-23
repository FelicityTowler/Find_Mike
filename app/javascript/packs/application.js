// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
var $ = require( "jquery" )
require("slick-carousel")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// CSS
import 'mapbox-gl/dist/mapbox-gl.css';

// External imports
import "bootstrap";

// Internal imports, e.g:
import { homepageSpotlight } from '../components/spotlight';
import { dropDown } from '../components/drop-down';
import { eventBookingModal } from '../components/event_booking_modal';
import { eventBookingModalClose } from '../components/event_booking_modal';
import { eventBookingModalCloseElse } from '../components/event_booking_modal';
import {slickSlider} from '../components/slick-slider';

// Internal imports, e.g:
import { initMapbox } from '../plugins/init_mapbox';
document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  homepageSpotlight();
  initMapbox();
  if (document.getElementById("drop-down-button")) {
    document.getElementById("drop-down-button").addEventListener("click", dropDown);
  };
  if (document.getElementById("event_booking_modal_button")) {
    document.getElementById("event_booking_modal_button").addEventListener("click", eventBookingModal);
    document.getElementById("close_event_booking_modal").addEventListener("click", eventBookingModalClose);
    window.addEventListener("click", eventBookingModalCloseElse);
  }
  if (document.querySelector(".scrollable-card-list") || document.querySelector(".scrollable-card-list-performers")) {
    slickSlider()
  }
});
