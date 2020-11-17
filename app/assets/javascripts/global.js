document.addEventListener('DOMContentLoaded', function(){
  let logo = document.getElementById('logo');
  logo.addEventListener('click', function(event){
    event.preventDefault();
    alert('Welcome!');
  });
});