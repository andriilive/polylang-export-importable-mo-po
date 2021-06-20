��    <      �      �  K  �  �   (
  
   �
     �
     �
     �
     �
  (   �
  .   '     V     l     �     �     �     �     �  ,   �     �          
  =   )  s   g     �     �     �  
   �    
       1   "     T     b     w     �     �     �     �  �   �     M  I   V  \  �     �            =   &     d     m  %   |     �     �  $   �     �     �     �       t     	   �     �     �     �     �!  K  �!  �   !(  
   �(     �(     �(     �(     �(  (   �(  .    )     O)     e)     y)     �)     �)     �)     �)  ,   �)     �)     �)     *  =   "*  s   `*     �*     �*     �*  
   �*    +     	7  1   7     M7     [7     p7     }7     �7     �7     �7  �   �7     F8  I   O8  \  �8     �;     <     <  =   <     ]<     f<  %   u<     �<     �<  $   �<     �<     �<     �<     �<  t   =  	   �=     �=     �=     �=     �?  <a href="%s" target="_blank">Learn more</a> about setting up custom scripts.' ), 'https://wedevs.com/docs/woocommerce-conversion-tracking/custom/?utm_source=wp-admin&utm_medium=inline-helpk&utm_campaign=wcct_docs&utm_content=Custom' )
            )
        );

        return $settings;
    }

    /**
     * Enqueue script
     *
     * @return void
     */
    public function enqueue_script() {

    }

    /**
     * Check Out
     *
     * @return void
     */
    public function checkout( $order_id ) {
        if ( ! $this->is_enabled() ) {
            return;
        }

        $code = $this->get_integration_settings();

        if ( isset( $code['checkout'] ) && ! empty( $code['checkout'] ) ) {
            echo $this->process_order_markdown( $code['checkout'], $order_id );
        }
    }

    /**
     * Registration
     *
     * @return void
     */
    public function registration() {
        if ( $this->is_enabled() ) {

            $code = $this->get_integration_settings();

            if ( isset( $code['registration'] ) && ! empty( $code['registration'] ) ) {
                echo $code['registration'];
            }
        }
    }

    /**
     * Filter the code for dynamic data for order received page
     *
     * @since 1.1
     *
     * @param  string $code
     *
     * @return string
     */
    function process_order_markdown( $code, $order_id ) {

        $order = wc_get_order( $order_id );

        // bail out if not a valid instance
        if ( ! is_a( $order, 'WC_Order' ) ) {
            return $code;
        }

        if ( version_compare( WC()->version, '3.0 <b>Woocommerce conversion tracking</b> requires <a target="_blank" href="https://wordpress.org/plugins/woocommerce/">Woocommerce</a> Account ID Add To Wishlist Add to Cart Add to Cart  Adds script on the cart page Adds script on the purchase success page Adds script on the successful registraion page Complete Registration Conversion Tracking Conversion Tracking Code Conversion Tracking Pixel Custom Docs Documentation ERROR: Error fetching plugin information: %s Events Facebook Facebook Product Catalog (Pro) Find the Pixel ID from <a href="%s" target="_blank">here</a>. Find the Universal Tag ID from <a href="%s" target="_blank">here</a>, navigate to Tools &rarr; Conversion Tracking. Get PRO Get Premium Getting Started Google Ads If you have a moment, please let us know why you are deactivating:', $this->client->textdomain ); ?></h3>
                </div>

                <div class="wd-dr-modal-body">
                    <ul class="reasons">
                        <?php foreach ($reasons as $reason) { ?>
                            <li data-type="<?php echo esc_attr( $reason['type'] ); ?>" data-placeholder="<?php echo esc_attr( $reason['placeholder'] ); ?>">
                                <label><input type="radio" name="selected-reason" value="<?php echo $reason['id']; ?>"> <?php echo $reason['text']; ?></label>
                            </li>
                        <?php } ?>
                    </ul>
                    <p class="wd-dr-modal-reasons-bottom">We share your data with <a href="https://appsero.com/">Appsero</a> to troubleshoot problems &amp; make product improvements. <a href="https://appsero.com/privacy-policy/">Learn more</a> about how Appsero handles your data.</p>
                </div>

                <div class="wd-dr-modal-footer">
                    <a href="#" class="dont-bother-me"><?php _e( 'I rather wouldn\'t say', $this->client->textdomain ); ?></a>
                    <button class="button-secondary"><?php _e( 'Submit & Deactivate', $this->client->textdomain ); ?></button>
                    <button class="button-primary"><?php _e( 'Cancel', $this->client->textdomain ); ?></button>
                </div>
            </div>
        </div>

        <style type="text/css">
            .wd-dr-modal {
                position: fixed;
                z-index: 99999;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                background: rgba(0,0,0,0.5);
                display: none;
            }

            .wd-dr-modal.modal-active {
                display: block;
            }

            .wd-dr-modal-wrap {
                width: 475px;
                position: relative;
                margin: 10% auto;
                background: #fff;
            }

            .wd-dr-modal-header {
                border-bottom: 1px solid #eee;
                padding: 8px 20px;
            }

            .wd-dr-modal-header h3 {
                line-height: 150%;
                margin: 0;
            }

            .wd-dr-modal-body {
                padding: 5px 20px 20px 20px;
            }

            .wd-dr-modal-body .reason-input {
                margin-top: 5px;
                margin-left: 20px;
            }
            .wd-dr-modal-footer {
                border-top: 1px solid #eee;
                padding: 12px 20px;
                text-align: right;
            }
            .wd-dr-modal-reasons-bottom {
                margin: 15px 0 0 0;
            }
        </style>

        <script type="text/javascript">
            (function($) {
                $(function() {
                    var modal = $( '#<?php echo $this->client->slug; ?>-wd-dr-modal' );
                    var deactivateLink = '';

                    $( '#the-list' ).on('click Initiate Checkout Insert conversion tracking code for this product. Inside %s tag Integration Settings Integrations Microsoft Advertising Perfect Audience Pixel ID Premium Features Provide the Google Ads Account ID. Usually it\'s something like <code>AW-123456789</code>, <a href="%s" target="_blank">learn more</a>. Purchase Put your JavaScript tracking scripts here. You can use dynamic values: %s Reach beyond your imagination in creating web pages. <strong> Try Happy Addons for Elementor to shape your dream.</strong> 😊' ); ?></p>
                </div>
                <div class="wcct-message-action">
                    <a href="" id="wcct-install-happ-addons" class="button button-primary"> <i class="dashicons dashicons-update wcct-update-icon"></i> Install Now For FREE</a>
                    <p></strong><a target="_blank" href="https://wordpress.org/plugins/happy-elementor-addons/">Read more details ➔</a>
                    </p>
                </div>
            </div>

        <?php
    }
}

function wcct_init() {
    return WeDevs_WC_Conversion_Tracking::init();
}

// WeDevs_WC_Conversion_Tracking
wcct_init();

/**
 * Manage Capability
 *
 * @return void
 */
function wcct_manage_cap() {
    return apply_filters( 'wcct_capability Registration Scripts Save Changes Search Select which position in your page you want to insert the tag Settings Settings (Pro) Settings has been saved successfully! String Successful Order Successfully installed and activate, Tags Position Tags for %s Twitter User Registration Various conversion tracking pixel integration like Facebook Ad, Google AdWords, etc. Insert your scripts codes here: View Cart View Product View Product Category Want to help make <strong>%1$s</strong> even more awesome? Allow %1$s to collect non-sensitive diagnostic data and usage information.', $this->client->textdomain ), $this->client->name );
            } else {
                $notice = $this->notice;
            }

            $notice .= ' (<a class="' . $this->client->slug . '-insights-data-we-collect" href="#">' . __( 'what we collect', $this->client->textdomain ) . '</a>)';
            $notice .= '<p class="description" style="display:none;">' . implode(  You can use dynamic values: %s <a href="%s" target="_blank">Learn more</a> about setting up custom scripts.' ), 'https://wedevs.com/docs/woocommerce-conversion-tracking/custom/?utm_source=wp-admin&utm_medium=inline-helpk&utm_campaign=wcct_docs&utm_content=Custom' )
            )
        );

        return $settings;
    }

    /**
     * Enqueue script
     *
     * @return void
     */
    public function enqueue_script() {

    }

    /**
     * Check Out
     *
     * @return void
     */
    public function checkout( $order_id ) {
        if ( ! $this->is_enabled() ) {
            return;
        }

        $code = $this->get_integration_settings();

        if ( isset( $code['checkout'] ) && ! empty( $code['checkout'] ) ) {
            echo $this->process_order_markdown( $code['checkout'], $order_id );
        }
    }

    /**
     * Registration
     *
     * @return void
     */
    public function registration() {
        if ( $this->is_enabled() ) {

            $code = $this->get_integration_settings();

            if ( isset( $code['registration'] ) && ! empty( $code['registration'] ) ) {
                echo $code['registration'];
            }
        }
    }

    /**
     * Filter the code for dynamic data for order received page
     *
     * @since 1.1
     *
     * @param  string $code
     *
     * @return string
     */
    function process_order_markdown( $code, $order_id ) {

        $order = wc_get_order( $order_id );

        // bail out if not a valid instance
        if ( ! is_a( $order, 'WC_Order' ) ) {
            return $code;
        }

        if ( version_compare( WC()->version, '3.0 <b>Woocommerce conversion tracking</b> requires <a target="_blank" href="https://wordpress.org/plugins/woocommerce/">Woocommerce</a> Account ID Add To Wishlist Add to Cart Add to Cart  Adds script on the cart page Adds script on the purchase success page Adds script on the successful registraion page Complete Registration Conversion Tracking Conversion Tracking Code Conversion Tracking Pixel Custom Docs Documentation ERROR: Error fetching plugin information: %s Events Facebook Facebook Product Catalog (Pro) Find the Pixel ID from <a href="%s" target="_blank">here</a>. Find the Universal Tag ID from <a href="%s" target="_blank">here</a>, navigate to Tools &rarr; Conversion Tracking. Get PRO Get Premium Getting Started Google Ads If you have a moment, please let us know why you are deactivating:', $this->client->textdomain ); ?></h3>
                </div>

                <div class="wd-dr-modal-body">
                    <ul class="reasons">
                        <?php foreach ($reasons as $reason) { ?>
                            <li data-type="<?php echo esc_attr( $reason['type'] ); ?>" data-placeholder="<?php echo esc_attr( $reason['placeholder'] ); ?>">
                                <label><input type="radio" name="selected-reason" value="<?php echo $reason['id']; ?>"> <?php echo $reason['text']; ?></label>
                            </li>
                        <?php } ?>
                    </ul>
                    <p class="wd-dr-modal-reasons-bottom">We share your data with <a href="https://appsero.com/">Appsero</a> to troubleshoot problems &amp; make product improvements. <a href="https://appsero.com/privacy-policy/">Learn more</a> about how Appsero handles your data.</p>
                </div>

                <div class="wd-dr-modal-footer">
                    <a href="#" class="dont-bother-me"><?php _e( 'I rather wouldn\'t say', $this->client->textdomain ); ?></a>
                    <button class="button-secondary"><?php _e( 'Submit & Deactivate', $this->client->textdomain ); ?></button>
                    <button class="button-primary"><?php _e( 'Cancel', $this->client->textdomain ); ?></button>
                </div>
            </div>
        </div>

        <style type="text/css">
            .wd-dr-modal {
                position: fixed;
                z-index: 99999;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                background: rgba(0,0,0,0.5);
                display: none;
            }

            .wd-dr-modal.modal-active {
                display: block;
            }

            .wd-dr-modal-wrap {
                width: 475px;
                position: relative;
                margin: 10% auto;
                background: #fff;
            }

            .wd-dr-modal-header {
                border-bottom: 1px solid #eee;
                padding: 8px 20px;
            }

            .wd-dr-modal-header h3 {
                line-height: 150%;
                margin: 0;
            }

            .wd-dr-modal-body {
                padding: 5px 20px 20px 20px;
            }

            .wd-dr-modal-body .reason-input {
                margin-top: 5px;
                margin-left: 20px;
            }
            .wd-dr-modal-footer {
                border-top: 1px solid #eee;
                padding: 12px 20px;
                text-align: right;
            }
            .wd-dr-modal-reasons-bottom {
                margin: 15px 0 0 0;
            }
        </style>

        <script type="text/javascript">
            (function($) {
                $(function() {
                    var modal = $( '#<?php echo $this->client->slug; ?>-wd-dr-modal' );
                    var deactivateLink = '';

                    $( '#the-list' ).on('click Initiate Checkout Insert conversion tracking code for this product. Inside %s tag Integration Settings Integrations Microsoft Advertising Perfect Audience Pixel ID Premium Features Provide the Google Ads Account ID. Usually it\'s something like <code>AW-123456789</code>, <a href="%s" target="_blank">learn more</a>. Purchase Put your JavaScript tracking scripts here. You can use dynamic values: %s Reach beyond your imagination in creating web pages. <strong> Try Happy Addons for Elementor to shape your dream.</strong> 😊' ); ?></p>
                </div>
                <div class="wcct-message-action">
                    <a href="" id="wcct-install-happ-addons" class="button button-primary"> <i class="dashicons dashicons-update wcct-update-icon"></i> Install Now For FREE</a>
                    <p></strong><a target="_blank" href="https://wordpress.org/plugins/happy-elementor-addons/">Read more details ➔</a>
                    </p>
                </div>
            </div>

        <?php
    }
}

function wcct_init() {
    return WeDevs_WC_Conversion_Tracking::init();
}

// WeDevs_WC_Conversion_Tracking
wcct_init();

/**
 * Manage Capability
 *
 * @return void
 */
function wcct_manage_cap() {
    return apply_filters( 'wcct_capability Registration Scripts Save Changes Search Select which position in your page you want to insert the tag Settings Settings (Pro) Settings has been saved successfully! String Successful Order Successfully installed and activate, Tags Position Tags for %s Twitter User Registration Various conversion tracking pixel integration like Facebook Ad, Google AdWords, etc. Insert your scripts codes here: View Cart View Product View Product Category Want to help make <strong>%1$s</strong> even more awesome? Allow %1$s to collect non-sensitive diagnostic data and usage information.', $this->client->textdomain ), $this->client->name );
            } else {
                $notice = $this->notice;
            }

            $notice .= ' (<a class="' . $this->client->slug . '-insights-data-we-collect" href="#">' . __( 'what we collect', $this->client->textdomain ) . '</a>)';
            $notice .= '<p class="description" style="display:none;">' . implode(  You can use dynamic values: %s 