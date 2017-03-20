    <!-- Subscribe-Area-Start -->
    <section class="pd-bt-tp-lg">
        <div class="container">
            <div class="row mr-bt-md">
                <div class="col-xs-12">
                    <div class="page-heading text-center text-capitalize">
                        <h2><?php echo $pageTitle; ?></h2> </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-sm-offset-2 wow fadeIn">
                        <div class="subscribe-form">

                         <form id="registration-form">
                             
                            <HR>
                                <label class="mt10" for="fullname"></label>
                                <input name="fullname" id="fullname" data-validation="length alphanumeric" placeholder="Username" data-validation-length="3-12" data-validation-error-msg="Tulis nama lengkap anda">

                                <HR>
                                    <label class="mt10" for="mc-email"></label>
                                    <input type="email" id="email" data-validation="email" data-validation-error-msg="Alamat Email tidak sesuai" placeholder="E-mail Address">
                                    <HR>
                                        <label class="mt10" for="username"></label>
                                        <input name="user" id="username" data-validation="length alphanumeric" placeholder="Username" data-validation-length="3-12" data-validation-error-msg="Username harus berupa perpaduan karakter dan angka, minimal 3 karakter">

                                        <HR>
                                            <label class="mt10" for="password"></label>
                                            <input type="password" id="password" name="pass_confirmation" data-validation="strength" data-validation-strength="2" placeholder="Password">

                                            <HR>            
                                                <input type="button" name="submit" id="submit" class="btn btn-success btn-lg gradient-bg rounded-btn pull-right text-uppercase slow" value="Submit" />                  
                                                <HR>            

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- Subscribe-Area-End -->




                            <script type="text/javascript">
                                $.validate({});
              $("#submit").click(function(){
   
   var fullname = $("#fullname").val();
   var email = $("#email").val();
   var username = $("#username").val();
   var password = $("#password").val();

   $.ajax({
          url :"<?php echo base_url() ?>index.php/user/signup",
          type:"post",
          beforeSend: function(){
                      $("#data").html("Loading...");
                                    },
          data: "fullname="+fullname+"&email="+email+"&username="+username+"&password="+password,
          success: function(html){                   
                   $("#notifikasi").html('Data berhasil disimpan');
                   $("#data").load("index.php/user/signup #data");
                   $("#notifikasi").fadeIn(2500);
                   $("#notifikasi").fadeOut(2500);  
                   $("#submit").hide();
                   }                      
        });            
   });
                            </script>
