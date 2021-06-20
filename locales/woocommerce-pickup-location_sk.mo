��    �      �      �     �     �     �     �          !     9     A     P     `  .   u  .   �  (   �  7   �  9   4  &   n     �     �     �     �     �     �  /   �          #     0     L     d     p     x     �     �     �     �     �     �     �  C   �  '   1     Y     `     p     �  *   �  �   �     @  ;   W     �     �  	   �  	   �     �     �     �     �     �  Z     A   m  >   �     �     �  X     Q   j     �     �     �     �     �  %        9     R     _     r     �     �     �     �     �     �     �     �               6     R     g     �     �    �     �     �     �     �     �               ,     9     J     Z     i     �  %   �     �     �     �     �     �  
   �               1     E  p   \  ,   �  !   �       '   7     _  -   x  *   �  -   �     �          %     <     O     T     m     �  '   �     �     �     �  3        <     R     h     �     �     �  4   �  4   �  B      <   J      �      �      �      �      �      �   
   �   +   �      !     '!  `   <!  �   �!  =   Z"  )   �"  B   �"  U   #  0   [#  C   �#  T   �#  *   %$  /   P$  ,   �$  /   �$  2   �$  -   %  C   >%  -   �%  2   �%  /   �%  n   &  P   �&     �&     �&     �&     '  �  '     �F     �F     �F     �F     �F     �F  y   �F     fG     kG     tG     }G     �G     �G     �G     �G     �G     �G  .   �G  .   .H  (   ]H  7   �H  9   �H  &   �H     I     5I     AI     QI     cI     hI  /   uI     �I     �I     �I     �I     �I     �I     J     
J     J     )J     >J     DJ     KJ     bJ  C   wJ  '   �J     �J     �J     �J     K  *   K  �   =K     �K  ;   �K     L     &L  	   ?L  	   IL     SL     _L     lL     yL     �L  Z   �L  A   �L  >   9M     xM     �M  X   �M  Q   �M     FN     XN     mN     �N     �N  %   �N     �N     �N     �N     �N     O     O     *O     >O     JO     WO     jO     zO     �O     �O     �O     �O     �O     P     'P    =P     FV     \V     hV     wV     �V     �V     �V     �V     �V     �V     �V     �V     W  %   %W     KW     iW     qW     yW     ~W  
   �W     �W     �W     �W     �W  p   �W  ,   WX  !   �X     �X  '   �X     �X  -   Y  *   0Y  -   [Y     �Y     �Y     �Y     �Y     �Y     �Y     �Y     Z  '   &Z     NZ     eZ     ~Z  3   �Z     �Z     �Z     �Z     [     [     [  4   '[  4   \[  B   �[  <   �[     \     !\     4\     :\     @\     S\  
   Z\  +   e\     �\     �\  `   �\  �   ']  =   �]  )   "^  B   L^  U   �^  0   �^  C   _  T   Z_  *   �_  /   �_  ,   
`  /   7`  2   g`  -   �`  C   �`  -   a  2   :a  /   ma  n   �a  P   b     ]b     kb     �b     �b  �  �b     )�     -�     L�     Z�     ^�     j�  y   v�   To  12 Hours 24 Hours Above the pickup details  Add New Pickup Days Add New Pickup Location Address Admin Map Zoom All Pickup Days All Pickup Locations Allows customers to change Wrong Date Message. Allows customers to change Wrong Time Message. Allows customers to change time formate. Allows customers to change timepicker default language. Allows customers to checkout without creating an account. Auto Select first location on checkout Billing Field Display By Dropdown By Radio Button Checkout Map Zoom City Closing Time Cost excluding tax. Enter an amount, e.g. 2.50. Country Default Cost Default Datepicker Language Default Position In Map Description Details Disable Download File Edit Pickup Days Edit Pickup Location Email Enable Enable Pickup Location Enable Radius Search Enable autosuggest dropdown(select2) in pickup location selection?  Enable product location based pickups?  Export Export CSV File Google map api key Hide Hide pickup shipping based on order amount Hide pickup shipping untill order amount reaches this amount. Leave empty if not required. Please clear cache using wc->system status->tools Hide search box in map Include the pickup information in WooCommerce order emails? Latitude Load Pickup points later Locations Longitude Map Display Map Position Marker Image Max Time Max Time Criteria Message Max time (in hrs) after that product will not be available - leave empty if no time limit  Message to be displayed when pickup time is greater than max time Message to be displayed when pickup time is less than min time Min Time Min Time Criteria Message Min order amount after which Free Shipping will be applied (leave empty if not required) Min time (in hrs) before product can be delivered - leave empty if no time limit  Min. order amount New Pickup Days Name New Pickup Location No No Pickup Location found No Pickup Location found in the Trash No Pickup Point Selected Opening Time Parent Pickup Days Parent Pickup Days: Pick Up Point Pickup Date Pickup Date Formate Pickup Days Pickup Email Pickup Information Pickup Location Pickup Location CSV Pickup Location CSV file Pickup Location Contacts Pickup Location Description Pickup Location Name Pickup Location Working Hours Pickup Location address Pickup Point Settings Pickup Point Shipping'); // Title shown in admin

                $this->method_description = __('Description of Pickup Point Shipping'); // Description shown in admin

                $this->enabled = "yes"; // This can be added as an setting but for this example its forced enabled

                $this->title = "CALL FOR QUOTE"; // This can be added as an setting but for this example its forced.
                //$this->init_form_fields();

                $this->init();
            }

            /**

             * Init your settings

             *

             * @access public

             * @return void

             */
            function init() {
                // Load the settings API
                $this->init_form_fields(); // This is part of the settings API. Override the method to add your own settings
                $this->init_settings(); // This is part of the settings API. Loads settings you previously init.
                $this->cost = $this->get_option('cost');
                $this->title = $this->get_option('title');
                $this->min_order_amount = $this->get_option('min_order_amount');
                add_action('woocommerce_update_options_shipping_' . $this->id, array($this, 'process_admin_options'));
            }

            /**
             * Initialise Gateway Settings Form Fields
             */
            function init_form_fields() {
                $this->form_fields = array(
                    'enabled' => array(
                        'title' => __('Enable/Disable Pickup Selection Type Pickup Time Pickup address Pickup city Pickup country Pickup date text Pickup location :  Pickup state Pickup time text Pickup zip code Pickup zipcode Please enter pickup date Please enter pickup time Please enter your google map api key. Please select pickup location Product Radius: Save Search Search Box Search Pickup Days Search Pickup Locations Select Pickup Point Select Pickup location Select list of user roles that will allow pickup location. If no role selected, then it will show for all roles. Select user roles to allow pickup locations  Send Pickup Info. in order emails Send email to shop owners? Set Pickup Location as default shipping Set default date format. Set default map zoom in Shortcode map display Set default map zoom in admin map display. Set default map zoom in checkout map display. Set default position of map. Settings Shipping Field Display Shortcode Map Zoom Show Show Pickup Branch Email Show Pickup City Name Show Pickup Country Name Show Pickup Location on order list page Show Pickup State Name Show Pickup Zipcode Name Show Pickup address Show pickup point as dropdown list or radio button. Show/Hide Pickup Date Show/Hide Pickup Time Side by side to pickup details State String Subtotal Text to be appear on pickup date textbox placeholder Text to be appear on pickup time textbox placeholder This controls the description which the user sees during checkout. This controls the title which the user sees during checkout. Time Limitation Timepicker Formate Title Total Update Pickup Days Upload Upload CSV Upload marker image to be displayed on map. Upload pickup location csv file View Pickup Location Whether to enable autosuggest dropdown(select2) on checkout page for pickup location selection?  Whether to enable porduct location based pickup? If enabled, you can set product location in woo product pages. If no location specified for product in cart then it will show all locations Whether to enable radius search (it works with dropdown only) Whether to hide or show search box in map Whether to load pickup points later after loading of checkout page Whether to select first entry on load on checkout page or force user to select entry  Whether to send email to pickup location owners? Whether to set default shipping as pickup location on checkout page Whether to show map side by side or above the pickup location (best for responsive)  Whether to show/hide map on checkout page. Whether to show/hide pickup address information Whether to show/hide pickup city information Whether to show/hide pickup country information Whether to show/hide pickup date on checkout page. Whether to show/hide pickup email information Whether to show/hide pickup location information on order list page Whether to show/hide pickup state information Whether to show/hide pickup time on checkout page. Whether to show/hide pickup zipcode information WooCommerce pickup location requires at least WooCommerce %s in order to function. Please upgrade WooCommerce. WooCommerce pickup location requires woocoomerce plugin to be installed before.. Working Hours Wrong Date Selected Message Wrong Time Selected Message Yes You do not have sufficient permissions to access this page.'));
        }

        $wp_pkpo_msg = '';

        if (isset($_POST['submit'])) {

            $wp_pkpo_options = array();
            $wp_pkpo_pickup_points = array();

            if (isset($_POST['wp_pkpo_default_position']))
                $wp_pkpo_options['wp_pkpo_default_position'] = $_POST['wp_pkpo_default_position'];

            if (isset($_POST['wp_pkpo_pickup_selection_type']))
                $wp_pkpo_options['wp_pkpo_pickup_selection_type'] = $_POST['wp_pkpo_pickup_selection_type'];
            
            if (isset($_POST['wp_pickup_auto_select_pickup']))
                $wp_pkpo_options['wp_pickup_auto_select_pickup'] = $_POST['wp_pickup_auto_select_pickup'];
            
            if (isset($_POST['wp_pkpo_pickup_date_formate']))
                $wp_pkpo_options['wp_pkpo_pickup_date_formate'] = $_POST['wp_pkpo_pickup_date_formate'];
            
             if (isset($_POST['wp_pickup_map_position']))
                $wp_pkpo_options['wp_pickup_map_position'] = $_POST['wp_pickup_map_position'];

            if (isset($_POST['wp_pkpo_pickup_admin_map_zoom']))
                $wp_pkpo_options['wp_pkpo_pickup_admin_map_zoom'] = $_POST['wp_pkpo_pickup_admin_map_zoom'];

            if (isset($_POST['wp_pkpo_pickup_checkout_map_zoom']))
                $wp_pkpo_options['wp_pkpo_pickup_checkout_map_zoom'] = $_POST['wp_pkpo_pickup_checkout_map_zoom'];

            if (isset($_POST['wp_pkpo_shortcode_map_zoom']))
                $wp_pkpo_options['wp_pkpo_shortcode_map_zoom'] = $_POST['wp_pkpo_shortcode_map_zoom'];

            if (isset($_POST['wp_pkpo_map_disable']))
                $wp_pkpo_options['wp_pkpo_map_disable'] = $_POST['wp_pkpo_map_disable'];

            if (isset($_POST['wp_pkpo_billing_hide_details']))
                $wp_pkpo_options['wp_pkpo_billing_hide_details'] = $_POST['wp_pkpo_billing_hide_details'];

           if (isset($_POST['wp_pkpo_shipping_hide_details']))
                $wp_pkpo_options['wp_pkpo_shipping_hide_details'] = $_POST['wp_pkpo_shipping_hide_details'];

           if (isset($_POST['wp_pkpo_hide_checkout_time']))
                $wp_pkpo_options['wp_pkpo_hide_checkout_time'] = $_POST['wp_pkpo_hide_checkout_time'];
            
            if (isset($_POST['wp_pkpo_hide_checkout_date']))
                $wp_pkpo_options['wp_pkpo_hide_checkout_date'] = $_POST['wp_pkpo_hide_checkout_date'];
            
            if (isset($_POST['wp_pickup_order_list_show_pickup']))
                $wp_pkpo_options['wp_pickup_order_list_show_pickup'] = $_POST['wp_pickup_order_list_show_pickup'];
            
            if (isset($_POST['wp_pkpo_send_info_in_email']))
                $wp_pkpo_options['wp_pkpo_send_info_in_email'] = $_POST['wp_pkpo_send_info_in_email'];

            if (isset($_POST['wp_pickup_default_timepicker_lang']))
                $wp_pkpo_options['wp_pickup_default_timepicker_lang'] = $_POST['wp_pickup_default_timepicker_lang'];

            if (isset($_POST['wp_pickup_default_datepicker_lang']))
                $wp_pkpo_options['wp_pickup_default_datepicker_lang'] = $_POST['wp_pickup_default_datepicker_lang'];

            if (isset($_POST['wp_pickup_user_roles']))
                $wp_pkpo_options['wp_pickup_user_roles'] = $_POST['wp_pickup_user_roles'];

            if (isset($_POST['wp_pickup_wrong_date']))
                $wp_pkpo_options['wp_pickup_wrong_date'] = $_POST['wp_pickup_wrong_date'];

            if (isset($_POST['wp_pickup_wrong_time']))
                $wp_pkpo_options['wp_pickup_wrong_time'] = $_POST['wp_pickup_wrong_time'];
            
            if (isset($_POST['wp_pickup_min_time_msg']))
                $wp_pkpo_options['wp_pickup_min_time_msg'] = $_POST['wp_pickup_min_time_msg'];
            
            if (isset($_POST['wp_pickup_max_time_msg']))
                $wp_pkpo_options['wp_pickup_max_time_msg'] = $_POST['wp_pickup_max_time_msg'];

            if (isset($_POST['wp_pickup_default_time_formate']))
                $wp_pkpo_options['wp_pickup_default_time_formate'] = $_POST['wp_pickup_default_time_formate'];

            if (isset($_POST['wp_pickup_default_date_text']))
                $wp_pkpo_options['wp_pickup_default_date_text'] = $_POST['wp_pickup_default_date_text'];
            
            if (isset($_POST['wp_pickup_default_time_text']))
                $wp_pkpo_options['wp_pickup_default_time_text'] = $_POST['wp_pickup_default_time_text'];

            if (isset($_POST['wp_pickup_address_display']))
                $wp_pkpo_options['wp_pickup_address_display'] = $_POST['wp_pickup_address_display'];
            
            if (isset($_POST['wp_pickup_email_display']))
                $wp_pkpo_options['wp_pickup_email_display'] = $_POST['wp_pickup_email_display'];
            
            if (isset($_POST['wp_pickup_city_display']))
                $wp_pkpo_options['wp_pickup_city_display'] = $_POST['wp_pickup_city_display'];
            
            if (isset($_POST['wp_pickup_state_display']))
                $wp_pkpo_options['wp_pickup_state_display'] = $_POST['wp_pickup_state_display'];
            
            if (isset($_POST['wp_pickup_country_display']))
                $wp_pkpo_options['wp_pickup_country_display'] = $_POST['wp_pickup_country_display'];
            
            if (isset($_POST['wp_pickup_zip_display']))
                $wp_pkpo_options['wp_pickup_zip_display'] = $_POST['wp_pickup_zip_display'];
            
            if (isset($_POST['wp_pickup_load_pickup_later']))
                $wp_pkpo_options['wp_pickup_load_pickup_later'] = $_POST['wp_pickup_load_pickup_later'];
            
            if (isset($_POST['wp_pickup_default_shipping_pickup']))
                $wp_pkpo_options['wp_pickup_default_shipping_pickup'] = $_POST['wp_pickup_default_shipping_pickup'];
            
            if (isset($_POST['wp_pickup_radius_search']))
                $wp_pkpo_options['wp_pickup_radius_search'] = $_POST['wp_pickup_radius_search'];
            
            if (isset($_POST['wp_pickup_hide_pickup_shipping_based_on_order']))
                $wp_pkpo_options['wp_pickup_hide_pickup_shipping_based_on_order'] = $_POST['wp_pickup_hide_pickup_shipping_based_on_order'];
            
            if (isset($_POST['wp_pickup_map_api_key']))
                $wp_pkpo_options['wp_pickup_map_api_key'] = $_POST['wp_pickup_map_api_key'];
            
            if (isset($_POST['wp_pickup_map_search']))
                $wp_pkpo_options['wp_pickup_map_search'] = $_POST['wp_pickup_map_search'];
            
            if (isset($_POST['wp_pickup_location_based_product']))
                $wp_pkpo_options['wp_pickup_location_based_product'] = $_POST['wp_pickup_location_based_product'];
            
            if (isset($_POST['wp_pickup_location_select2']))
                $wp_pkpo_options['wp_pickup_location_select2'] = $_POST['wp_pickup_location_select2'];
            
            if (isset($_POST['wp_pickup_send_email_to_shop_owner']))
                $wp_pkpo_options['wp_pickup_send_email_to_shop_owner'] = $_POST['wp_pickup_send_email_to_shop_owner'];
            
            if (isset($_FILES['wp_pkpo_marker_image']['name']) && $_FILES['wp_pkpo_marker_image']['name'] !== '') {
                if (!function_exists('wp_handle_upload')) {
                    require_once( ABSPATH . 'wp-admin/includes/file.php' );
                }

                $uploadedfile = $_FILES['wp_pkpo_marker_image'];

                $upload_overrides = array('test_form' => false);

                $movefile = wp_handle_upload($uploadedfile, $upload_overrides);

                if ($movefile && !isset($movefile['error'])) {
                    $wp_pkpo_options['wp_pkpo_marker_image'] = $movefile['url'];
                }
            } else {
                $wp_pkpo_options['wp_pkpo_marker_image'] = $_POST['wp_pkpo_old_image_url'];
            }

            update_option('wp_pkpo_options', $wp_pkpo_options);
            $wp_pkpo_msg = __('Setting Saved Successfully ! Zip csv file uploaded successfully eg. Lat,Lang. kms pickup date pickup time whether to show/hide shipping fields. Please note that once it is hidden, it will not show for other shipping method also  To  12 Hours 24 Hours Above the pickup details  Add New Pickup Days Add New Pickup Location Address Admin Map Zoom All Pickup Days All Pickup Locations Allows customers to change Wrong Date Message. Allows customers to change Wrong Time Message. Allows customers to change time formate. Allows customers to change timepicker default language. Allows customers to checkout without creating an account. Auto Select first location on checkout Billing Field Display By Dropdown By Radio Button Checkout Map Zoom City Closing Time Cost excluding tax. Enter an amount, e.g. 2.50. Country Default Cost Default Datepicker Language Default Position In Map Description Details Disable Download File Edit Pickup Days Edit Pickup Location Email Enable Enable Pickup Location Enable Radius Search Enable autosuggest dropdown(select2) in pickup location selection?  Enable product location based pickups?  Export Export CSV File Google map api key Hide Hide pickup shipping based on order amount Hide pickup shipping untill order amount reaches this amount. Leave empty if not required. Please clear cache using wc->system status->tools Hide search box in map Include the pickup information in WooCommerce order emails? Latitude Load Pickup points later Locations Longitude Map Display Map Position Marker Image Max Time Max Time Criteria Message Max time (in hrs) after that product will not be available - leave empty if no time limit  Message to be displayed when pickup time is greater than max time Message to be displayed when pickup time is less than min time Min Time Min Time Criteria Message Min order amount after which Free Shipping will be applied (leave empty if not required) Min time (in hrs) before product can be delivered - leave empty if no time limit  Min. order amount New Pickup Days Name New Pickup Location No No Pickup Location found No Pickup Location found in the Trash No Pickup Point Selected Opening Time Parent Pickup Days Parent Pickup Days: Pick Up Point Pickup Date Pickup Date Formate Pickup Days Pickup Email Pickup Information Pickup Location Pickup Location CSV Pickup Location CSV file Pickup Location Contacts Pickup Location Description Pickup Location Name Pickup Location Working Hours Pickup Location address Pickup Point Settings Pickup Point Shipping'); // Title shown in admin

                $this->method_description = __('Description of Pickup Point Shipping'); // Description shown in admin

                $this->enabled = "yes"; // This can be added as an setting but for this example its forced enabled

                $this->title = "CALL FOR QUOTE"; // This can be added as an setting but for this example its forced.
                //$this->init_form_fields();

                $this->init();
            }

            /**

             * Init your settings

             *

             * @access public

             * @return void

             */
            function init() {
                // Load the settings API
                $this->init_form_fields(); // This is part of the settings API. Override the method to add your own settings
                $this->init_settings(); // This is part of the settings API. Loads settings you previously init.
                $this->cost = $this->get_option('cost');
                $this->title = $this->get_option('title');
                $this->min_order_amount = $this->get_option('min_order_amount');
                add_action('woocommerce_update_options_shipping_' . $this->id, array($this, 'process_admin_options'));
            }

            /**
             * Initialise Gateway Settings Form Fields
             */
            function init_form_fields() {
                $this->form_fields = array(
                    'enabled' => array(
                        'title' => __('Enable/Disable Pickup Selection Type Pickup Time Pickup address Pickup city Pickup country Pickup date text Pickup location :  Pickup state Pickup time text Pickup zip code Pickup zipcode Please enter pickup date Please enter pickup time Please enter your google map api key. Please select pickup location Product Radius: Save Search Search Box Search Pickup Days Search Pickup Locations Select Pickup Point Select Pickup location Select list of user roles that will allow pickup location. If no role selected, then it will show for all roles. Select user roles to allow pickup locations  Send Pickup Info. in order emails Send email to shop owners? Set Pickup Location as default shipping Set default date format. Set default map zoom in Shortcode map display Set default map zoom in admin map display. Set default map zoom in checkout map display. Set default position of map. Settings Shipping Field Display Shortcode Map Zoom Show Show Pickup Branch Email Show Pickup City Name Show Pickup Country Name Show Pickup Location on order list page Show Pickup State Name Show Pickup Zipcode Name Show Pickup address Show pickup point as dropdown list or radio button. Show/Hide Pickup Date Show/Hide Pickup Time Side by side to pickup details State String Subtotal Text to be appear on pickup date textbox placeholder Text to be appear on pickup time textbox placeholder This controls the description which the user sees during checkout. This controls the title which the user sees during checkout. Time Limitation Timepicker Formate Title Total Update Pickup Days Upload Upload CSV Upload marker image to be displayed on map. Upload pickup location csv file View Pickup Location Whether to enable autosuggest dropdown(select2) on checkout page for pickup location selection?  Whether to enable porduct location based pickup? If enabled, you can set product location in woo product pages. If no location specified for product in cart then it will show all locations Whether to enable radius search (it works with dropdown only) Whether to hide or show search box in map Whether to load pickup points later after loading of checkout page Whether to select first entry on load on checkout page or force user to select entry  Whether to send email to pickup location owners? Whether to set default shipping as pickup location on checkout page Whether to show map side by side or above the pickup location (best for responsive)  Whether to show/hide map on checkout page. Whether to show/hide pickup address information Whether to show/hide pickup city information Whether to show/hide pickup country information Whether to show/hide pickup date on checkout page. Whether to show/hide pickup email information Whether to show/hide pickup location information on order list page Whether to show/hide pickup state information Whether to show/hide pickup time on checkout page. Whether to show/hide pickup zipcode information WooCommerce pickup location requires at least WooCommerce %s in order to function. Please upgrade WooCommerce. WooCommerce pickup location requires woocoomerce plugin to be installed before.. Working Hours Wrong Date Selected Message Wrong Time Selected Message Yes You do not have sufficient permissions to access this page.'));
        }

        $wp_pkpo_msg = '';

        if (isset($_POST['submit'])) {

            $wp_pkpo_options = array();
            $wp_pkpo_pickup_points = array();

            if (isset($_POST['wp_pkpo_default_position']))
                $wp_pkpo_options['wp_pkpo_default_position'] = $_POST['wp_pkpo_default_position'];

            if (isset($_POST['wp_pkpo_pickup_selection_type']))
                $wp_pkpo_options['wp_pkpo_pickup_selection_type'] = $_POST['wp_pkpo_pickup_selection_type'];
            
            if (isset($_POST['wp_pickup_auto_select_pickup']))
                $wp_pkpo_options['wp_pickup_auto_select_pickup'] = $_POST['wp_pickup_auto_select_pickup'];
            
            if (isset($_POST['wp_pkpo_pickup_date_formate']))
                $wp_pkpo_options['wp_pkpo_pickup_date_formate'] = $_POST['wp_pkpo_pickup_date_formate'];
            
             if (isset($_POST['wp_pickup_map_position']))
                $wp_pkpo_options['wp_pickup_map_position'] = $_POST['wp_pickup_map_position'];

            if (isset($_POST['wp_pkpo_pickup_admin_map_zoom']))
                $wp_pkpo_options['wp_pkpo_pickup_admin_map_zoom'] = $_POST['wp_pkpo_pickup_admin_map_zoom'];

            if (isset($_POST['wp_pkpo_pickup_checkout_map_zoom']))
                $wp_pkpo_options['wp_pkpo_pickup_checkout_map_zoom'] = $_POST['wp_pkpo_pickup_checkout_map_zoom'];

            if (isset($_POST['wp_pkpo_shortcode_map_zoom']))
                $wp_pkpo_options['wp_pkpo_shortcode_map_zoom'] = $_POST['wp_pkpo_shortcode_map_zoom'];

            if (isset($_POST['wp_pkpo_map_disable']))
                $wp_pkpo_options['wp_pkpo_map_disable'] = $_POST['wp_pkpo_map_disable'];

            if (isset($_POST['wp_pkpo_billing_hide_details']))
                $wp_pkpo_options['wp_pkpo_billing_hide_details'] = $_POST['wp_pkpo_billing_hide_details'];

           if (isset($_POST['wp_pkpo_shipping_hide_details']))
                $wp_pkpo_options['wp_pkpo_shipping_hide_details'] = $_POST['wp_pkpo_shipping_hide_details'];

           if (isset($_POST['wp_pkpo_hide_checkout_time']))
                $wp_pkpo_options['wp_pkpo_hide_checkout_time'] = $_POST['wp_pkpo_hide_checkout_time'];
            
            if (isset($_POST['wp_pkpo_hide_checkout_date']))
                $wp_pkpo_options['wp_pkpo_hide_checkout_date'] = $_POST['wp_pkpo_hide_checkout_date'];
            
            if (isset($_POST['wp_pickup_order_list_show_pickup']))
                $wp_pkpo_options['wp_pickup_order_list_show_pickup'] = $_POST['wp_pickup_order_list_show_pickup'];
            
            if (isset($_POST['wp_pkpo_send_info_in_email']))
                $wp_pkpo_options['wp_pkpo_send_info_in_email'] = $_POST['wp_pkpo_send_info_in_email'];

            if (isset($_POST['wp_pickup_default_timepicker_lang']))
                $wp_pkpo_options['wp_pickup_default_timepicker_lang'] = $_POST['wp_pickup_default_timepicker_lang'];

            if (isset($_POST['wp_pickup_default_datepicker_lang']))
                $wp_pkpo_options['wp_pickup_default_datepicker_lang'] = $_POST['wp_pickup_default_datepicker_lang'];

            if (isset($_POST['wp_pickup_user_roles']))
                $wp_pkpo_options['wp_pickup_user_roles'] = $_POST['wp_pickup_user_roles'];

            if (isset($_POST['wp_pickup_wrong_date']))
                $wp_pkpo_options['wp_pickup_wrong_date'] = $_POST['wp_pickup_wrong_date'];

            if (isset($_POST['wp_pickup_wrong_time']))
                $wp_pkpo_options['wp_pickup_wrong_time'] = $_POST['wp_pickup_wrong_time'];
            
            if (isset($_POST['wp_pickup_min_time_msg']))
                $wp_pkpo_options['wp_pickup_min_time_msg'] = $_POST['wp_pickup_min_time_msg'];
            
            if (isset($_POST['wp_pickup_max_time_msg']))
                $wp_pkpo_options['wp_pickup_max_time_msg'] = $_POST['wp_pickup_max_time_msg'];

            if (isset($_POST['wp_pickup_default_time_formate']))
                $wp_pkpo_options['wp_pickup_default_time_formate'] = $_POST['wp_pickup_default_time_formate'];

            if (isset($_POST['wp_pickup_default_date_text']))
                $wp_pkpo_options['wp_pickup_default_date_text'] = $_POST['wp_pickup_default_date_text'];
            
            if (isset($_POST['wp_pickup_default_time_text']))
                $wp_pkpo_options['wp_pickup_default_time_text'] = $_POST['wp_pickup_default_time_text'];

            if (isset($_POST['wp_pickup_address_display']))
                $wp_pkpo_options['wp_pickup_address_display'] = $_POST['wp_pickup_address_display'];
            
            if (isset($_POST['wp_pickup_email_display']))
                $wp_pkpo_options['wp_pickup_email_display'] = $_POST['wp_pickup_email_display'];
            
            if (isset($_POST['wp_pickup_city_display']))
                $wp_pkpo_options['wp_pickup_city_display'] = $_POST['wp_pickup_city_display'];
            
            if (isset($_POST['wp_pickup_state_display']))
                $wp_pkpo_options['wp_pickup_state_display'] = $_POST['wp_pickup_state_display'];
            
            if (isset($_POST['wp_pickup_country_display']))
                $wp_pkpo_options['wp_pickup_country_display'] = $_POST['wp_pickup_country_display'];
            
            if (isset($_POST['wp_pickup_zip_display']))
                $wp_pkpo_options['wp_pickup_zip_display'] = $_POST['wp_pickup_zip_display'];
            
            if (isset($_POST['wp_pickup_load_pickup_later']))
                $wp_pkpo_options['wp_pickup_load_pickup_later'] = $_POST['wp_pickup_load_pickup_later'];
            
            if (isset($_POST['wp_pickup_default_shipping_pickup']))
                $wp_pkpo_options['wp_pickup_default_shipping_pickup'] = $_POST['wp_pickup_default_shipping_pickup'];
            
            if (isset($_POST['wp_pickup_radius_search']))
                $wp_pkpo_options['wp_pickup_radius_search'] = $_POST['wp_pickup_radius_search'];
            
            if (isset($_POST['wp_pickup_hide_pickup_shipping_based_on_order']))
                $wp_pkpo_options['wp_pickup_hide_pickup_shipping_based_on_order'] = $_POST['wp_pickup_hide_pickup_shipping_based_on_order'];
            
            if (isset($_POST['wp_pickup_map_api_key']))
                $wp_pkpo_options['wp_pickup_map_api_key'] = $_POST['wp_pickup_map_api_key'];
            
            if (isset($_POST['wp_pickup_map_search']))
                $wp_pkpo_options['wp_pickup_map_search'] = $_POST['wp_pickup_map_search'];
            
            if (isset($_POST['wp_pickup_location_based_product']))
                $wp_pkpo_options['wp_pickup_location_based_product'] = $_POST['wp_pickup_location_based_product'];
            
            if (isset($_POST['wp_pickup_location_select2']))
                $wp_pkpo_options['wp_pickup_location_select2'] = $_POST['wp_pickup_location_select2'];
            
            if (isset($_POST['wp_pickup_send_email_to_shop_owner']))
                $wp_pkpo_options['wp_pickup_send_email_to_shop_owner'] = $_POST['wp_pickup_send_email_to_shop_owner'];
            
            if (isset($_FILES['wp_pkpo_marker_image']['name']) && $_FILES['wp_pkpo_marker_image']['name'] !== '') {
                if (!function_exists('wp_handle_upload')) {
                    require_once( ABSPATH . 'wp-admin/includes/file.php' );
                }

                $uploadedfile = $_FILES['wp_pkpo_marker_image'];

                $upload_overrides = array('test_form' => false);

                $movefile = wp_handle_upload($uploadedfile, $upload_overrides);

                if ($movefile && !isset($movefile['error'])) {
                    $wp_pkpo_options['wp_pkpo_marker_image'] = $movefile['url'];
                }
            } else {
                $wp_pkpo_options['wp_pkpo_marker_image'] = $_POST['wp_pkpo_old_image_url'];
            }

            update_option('wp_pkpo_options', $wp_pkpo_options);
            $wp_pkpo_msg = __('Setting Saved Successfully ! Zip csv file uploaded successfully eg. Lat,Lang. kms pickup date pickup time whether to show/hide shipping fields. Please note that once it is hidden, it will not show for other shipping method also 