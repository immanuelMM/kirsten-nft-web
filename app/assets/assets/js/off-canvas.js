(function($) {
  'use strict';
  $(function() {
    $('[data-toggle="offcanvas"]').on("click", function() {
      $('.sidebar-offcanvas').toggleClass('active')
    });
  });
  async function getOpenseaItems() {

    const osContainer = document.getElementById("openseaItems");
    const options = {method: 'GET'};


    const response = await fetch('https://api.opensea.io/api/v1/asset/0x495f947276749Ce646f68AC8c248420045cb7b5e/71004112144710685017881565500655184155940749352307396294854782781054068457473/?include_orders=false')
        const data = await response.json();
        console.log(data);

            const newElement = document.createElement("div");
            newElement.innerHTML = `
              <!-- End Opensea listing item-->
              <div class="card__body">
                    <div class="card__top">
                      <div class="card__owner">
                        <div class="card__avatar"></div>
                        <div class="card__user">
                          <span class="card__user__title">Owned by</span>
                           <span class="card__user__code">${data.asset_contract.schema_name}</span>
                        </div>
                      </div>
                      <div class="card__creator">
                        <div class="card__avatar"></div>
                        <div class="card__user">
                          <span class="card__user__title">Created by</span>
                           <span class="card__user__code">${data.creator.user.username}</span>
                        </div>
                      </div>
                    </div>
                    <div class="card__image" id="img-nft">
                      
                          <img
                            src='${data.image_url}'
                            class='w-full rounded-lg' />
      
                   
                    </div>
                  </div>
                  <div class="card__info">
                    <p><b>Price:</b> ETH 2.00</p>
                    <p>($3,565.48)</p>
                  </div>
                  <div class="card__footer">
                    <span class="card__btn card__btn--secondary">${data.name}</span>
                    <span class="card__btn card__btn--primary"><a href="${data.permalink}">Buy Now</a></span>
                  </div>
                  <br><br><br>
                    <div class="col-md-12 grid-margin stretch-card">
                      <div class="card">
                        <div class="card-body">
                          <h4 class="card-title">Descrption</h4>
                        <p class='text-gray-500 text-xs word-wrap'>${
                              data.description ?? ""
                            }</p>
                        </div>
                      </div>
                    
                  </div>
            `;

            osContainer.appendChild(newElement);

        }
        getOpenseaItems()
})(jQuery);