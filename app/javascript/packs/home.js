document.addEventListener('turbolinks:load', function() {
  var drop_elems = document.querySelectorAll('.dropdown-trigger');
  var instances = M.Dropdown.init(drop_elems, {});

  var sidenav_elems = document.querySelectorAll('.sidenav');
  var sidenav_instances = M.Sidenav.init(sidenav_elems, {});
});