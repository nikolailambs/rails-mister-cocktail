// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);


$(document).ready(function() {
  $(window).scroll(function() {
    var fromTop = $(document).scrollTop();
    if ( fromTop > $('.navbar').height() ) $('.navbar-wagon').addClass('minimized');
    else $('.navbar-wagon').removeClass('minimized');
  });
});
