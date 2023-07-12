
  <div id="free-quote" class="free-quote">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
            <h6>Get Your Free Quote</h6>
            <h4>Grow With Us Now</h4>
            <div class="line-dec"></div>
          </div>
        </div>
        <div class="col-lg-8 offset-lg-2  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
          <form id="quoteform">
            <div class="row">
              <div class="col-lg-4 col-sm-4">
                <fieldset>
                  <input type="web" id="web" class="website" placeholder="Your website URL..." autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-4 col-sm-4">
                <fieldset>
                  <input type="address" id="email" class="email" placeholder="Email Address..." autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-4 col-sm-4">
                <fieldset>
                  <button type="submit" class="main-button">Get Quote Now</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


  <script>

      let inputForm = document.getElementById('quoteform');

      inputForm.addEventListener('submit', async (event) => {
          event.preventDefault();

          let urlname = document.getElementById('web').value;
          let email = document.getElementById('email').value;

          if(urlname.length ===0){
              alert("This field is required");

          }else if(email.length === 0){
              alert("This field is required");
          }



          let inputdata = {
              url_name: urlname,
              email: email
          }
          let URl = "/quoteRequest";

          //loader show

            document.getElementById('js-preloader').classList.remove('d-none');
            document.getElementById('content-div').classList.add('d-none');

          let result = await axios.post(URl, inputdata);

          document.getElementById('js-preloader').classList.add('d-none');
          document.getElementById('content-div').classList.remove('d-none');

          if(result.status === 200 && result.data === 1) {

              alert("data submitted successfully");

              inputForm.reset();

          }else {
              alert("something went wrong");
          }


          })
  </script>
