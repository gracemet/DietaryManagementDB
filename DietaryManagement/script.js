$(document).ready(function() {
    $("#togglePass").click(function() {
      togglePassword();
    });
  });

  function togglePassword() {
    var checkValue = document.getElementById("password");
    var toggleEye = document.getElementById("togglePass");
    if (checkValue.type === "password") {
      checkValue.type = "text";
      toggleEye.className = ("fa fa-eye");
    } else {
      checkValue.type = "password";
      toggleEye.className = ("fa fa-eye-slash");
    }
  }

  function showForm(){
    document.getElementById("PatientForm").style.display = "block";
  }
  
  
  function hideLogin() {
    document.getElementById("LoginForm").style.display = "none";
  }

  $(document).ready(function() { 
    $('select').on('change', function() { 
        $(this).find('option:selected').each(function() { 
            var name = $(this).attr('value'); 
            if (name) { 
                $('.patient-info').not('.' + name).hide(); 
                $('.' + name).show(); 
            } else { 
                $('.patient-info').hide(); 
            } 

        }); 
    }).change(); 
});