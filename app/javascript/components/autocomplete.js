function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var itemLocation = document.getElementById('item_location');

    if (itemLocation) {
      var autocomplete = new google.maps.places.Autocomplete(itemLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(itemLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
