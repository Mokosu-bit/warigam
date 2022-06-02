document.addEventListener('turbolinks:load', window.viewChange = function viewChange() {
  mode = document.getElementById("event_mode").value;
  pn = document.getElementById("people_number");
  if ( mode == 'equal' ) {
    pn.style.display = "";
  } else {
    pn.style.display = "none";
  }
});

