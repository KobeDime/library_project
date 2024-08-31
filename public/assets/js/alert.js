// scripts.js
function hideAlert() {
    var alert = document.getElementById('alertMessage');
    alert.classList.remove('show');
    setTimeout(function() {
      alert.remove();
    }, 300); 
  }
  