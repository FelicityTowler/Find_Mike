const slickSlider = () => {
$(document).ready(function(){
  $('.scrollable-cards-list').slick({
  infinite: false,
  speed: 300,
  slidesToShow: 3,
  slidesToScroll: 3,
  focusOnSelect: true,
  nextArrow: '<i class="fas fa-chevron-right slick-next"></i>',
    prevArrow: '<i class="fas fa-chevron-left slick-prev"></i>',
  });
});
}
export { slickSlider };
