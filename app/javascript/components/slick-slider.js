const slickSlider = () => {
$(document).ready(function(){
  $('.scrollable-card-list').slick({
  infinite: false,
  speed: 300,
  slidesToShow: 3,
  slidesToScroll: 3,
  focusOnSelect: true,
  nextArrow: '<i class="fas fa-chevron-right slick-next"></i>',
    prevArrow: '<i class="fas fa-chevron-left slick-prev"></i>',
  });
});
$(document).ready(function(){
  $('.scrollable-card-list-performers').slick({
  infinite: false,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 4,
  focusOnSelect: true,
  nextArrow: '<i class="fas fa-chevron-right slick-next"></i>',
  prevArrow: '<i class="fas fa-chevron-left slick-prev"></i>',
  });
});
}
export { slickSlider };
