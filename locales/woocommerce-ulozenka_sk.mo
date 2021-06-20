��    �      �      l	     l	     ~	     �	     �	     �	     �	  �  �	     _     d     x     �     �     �     �     �     	          9     O     h  "   y     �     �  &   �  (   �  %        ?  
   ]  '   h  *   �  c  �  1        Q     `     i     r  
   �     �     �  O   �  N   	     X     _     n     �     �     �     �  
   �     �     �  	   �  
   �     �     �  	   �  	             !     3     H  z   W  s   �  )   F     p  	   w     �     �     �  
   �  �  �  0   �!     �!     �!     �!     
"     ""     3"     K"     \"     r"  K   {"     �"     �"  8   �"  �   #     �#     �#     �#     �#  �#  �#  )   �G  -   �G     �G     H     H     %H  	   2H     <H     NH  /   VH     �H  "   �H     �H     �H     �H      �H  ^   I  �   wI  =   �I  h   6J     �J  v   �J  	   1K     ;K     XK     fK     xK     �K     �K  l  L     �M  "   �M  c   �M     N  <
  ;N     xX  #   �X  !   �X  $   �X  *   �X  $    Y  
  EY     PZ     lZ     rZ     �Z     �Z  �   �Z  '   j[  &   �[  +   �[     �[      \     \     \     \     \     ,\     5\     G\     T\     \\     e\     s\  �  �\     (d     -d     Ad     [d     td     �d     �d     �d     �d     �d     e     e     1e  "   Be     ee     ~e  &   �e  (   �e  %   �e     f  
   &f  '   1f  *   Yf  c  �f  1   �n     o     )o     2o     ;o  
   Io     To     so  O   �o  N   �o     !p     (p     7p     Pp     Up     hp     |p  
   p     �p     �p  	   �p  
   �p     �p     �p  	   �p  	   �p     �p     �p     �p     q  z    q  s   �q  )   r     9r  	   @r     Jr     [r     kr  
   pr  �  {r  0   bt     �t     �t     �t     �t     �t     �t     u     %u     ;u  K   Du     �u     �u  8   �u  �   �u     �v     �v     �v     �v  �#  �v  )   ]�  -   ��     ��     ͚     �     �  	   ��     �     �  /   �     O�  "   o�     ��     ��     ��      ��  ^   �  �   @�  =   ��  h   ��     h�  v   ��  	   ��     �     !�     /�     A�     U�     h�  l  �     U�  "   ]�  c   ��     �  <
  �     A�  #   S�  !   w�  $   ��  *   ��  $   �  
  �     �     5�     ;�     I�     c�  �   l�  '   3�  &   [�  +   ��     ��     ɮ     Ю     ׮     ߮     �     ��  %1$s &ndash; %2$s %1$s (#%2$s) API Key Aktivní BalíkoBox SK Balíkobox SK Barcode', $this->plugin_slug );
            }
        }    
        $new_columns['ulozenka_send'] = __( 'Uloženka', $this->plugin_slug );
        return $new_columns;

  	}	

  	/**
  	 *
  	 *
  	 */
  	public function thumb_column_display($column_name, $post_id){
    	global $post;

        if ( $column_name == 'ulozenka' ) { 
            $field = get_post_meta( $post_id, 'ulozenka_consingment_id', true );
            if( !empty( $field ) ){
                echo '<a href="https://tracking.ulozenka.cz/'.$field.'" target="_blank">'.$field.'</a>';
            }
        }
    	
    	if ( $column_name == 'ulozenka_send' ) { 
        	$field = get_post_meta( $post_id, 'ulozenka_consingment_id', true );
        	if( empty( $field ) ){
        		echo '<a href="'.admin_url().'edit.php?post_type=shop_order&ulozenka_id_objednavky='.$post_id.'" class="button" style="padding: 2px 4px 1px 5px;"><span class="dashicons dashicons-external"></span></a>';
    		}else{
    			echo '<a href="'.admin_url().'edit.php?post_type=shop_order&ulozenka_ticket_id='.$post_id.'" class="button" style="padding: 2px 4px 1px 5px;"><span class="dashicons dashicons-arrow-down-alt"></span></a>';
    		}

    	}
  	}



  	/**
  	 * Send ticket or download packet
  	 *
  	 */
  	public function send_ticket(){

  		if( !empty( $_GET['ulozenka_id_objednavky'] ) ){

  			$order_id = sanitize_text_field( $_GET['ulozenka_id_objednavky'] );
  			$consingment = new Ulozenka_Send_Consigment( $order_id );
        	$consingment->create_consingment();

  		}
        elseif( !empty( $_GET['ulozenka_ticket_id'] ) ){

            $order_id = sanitize_text_field( $_GET['ulozenka_ticket_id'] );

            $ulozenka_consingment_id = get_post_meta( $order_id, 'ulozenka_consingment_id', true );

            if( empty( $ulozenka_consingment_id ) ){ return false; }
            
            try {
  
                    $subject_array = array(
                        'type' => 'pdf Cena Cena dopravy zdarma Cena za zásilku do 10 kg Cena za zásilku do 2 kg Cena za zásilku do 20 kg Cena za zásilku do 30 kg Ceník DPD Pickup CZ Ceník DPD Pickup SK Ceník DPD Private CZ Ceník DPD Private Polsko Ceník DPD Private SK Ceník Slovenská Pošta Ceník Uloženka Ceník Uloženka Doprava na adresu Ceník Uloženka Partner Ceník Uloženka SK Ceník Česká Pošta - Balík do Ruky Ceník Česká Pošta - Balík na Poštu Choose which format of email to send. Chyba odeslání do Uloženky DPD Pickup Definovat pro každou dopravu zvlášť Do Uloženky byla odeslána neplatá data. Dobirka', $this->plugin_slug );
    				$this->method_description = __( 'Umožňuje zákazníkům platit zboží při doručení (na dobírku).', $this->plugin_slug );
					$this->has_fields   = false;

					// Load the settings
					$this->init_form_fields();
					$this->init_settings();
     
					//Extra price
    				$this->current_gateway_extra_charges = '';

					// Get settings
					$this->title              = $this->get_option( 'title' );
					$this->description        = $this->get_option( 'description' );
					$this->instructions       = $this->get_option( 'instructions' );
					$this->enable_for_methods = $this->get_option( 'enable_for_methods', array() );
    				$this->enable_dobirka_countries = $this->get_option( 'enable_dobirka_countries', array() );
    				$this->order_status 	  = $this->get_option( 'order_status', array() );
    				$this->taxable            = $this->get_option( 'taxable' );
    				$this->show_cod           = $this->get_option( 'show_cod' );    				
	    
					add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );
					add_action( 'woocommerce_thankyou_dobirka', array( $this, 'thankyou' ) );
    
    				// Customer Emails
					add_action( 'woocommerce_email_before_order_table', array( $this, 'email_instructions' ), 10, 3 );
    
				}


				/**
    			 * Initialise Gateway Settings Form Fields
    			 *
    			 * @access public
    			 * @return void
    			 */
				public function init_form_fields() {
    	
    				//Get shipping methods
    				$shipping_methods = array();
    				if ( is_admin() ){
    					
    					$data_store = WC_Data_Store::load( 'shipping-zone' );
						$raw_zones  = $data_store->get_zones();

						foreach ( $raw_zones as $raw_zone ) {
							$zones[] = new WC_Shipping_Zone( $raw_zone );
						}

						$zones[] = new WC_Shipping_Zone(0);

						foreach ( WC()->shipping()->load_shipping_methods() as $method ) {

							$shipping_methods[ $method->get_method_title() ] = array();

							$shipping_methods[ $method->get_method_title() ][ $method->id ] = sprintf( __( 'Any &quot;%1$s&quot; method Dokumentace a demo eshop pro vyzkoušení pluginu Doprava zdarma Dopravce Dopravci Email Heading Email type Enable this email notification Enable/Disable Enter recipients (comma separated) for this email. Defaults to <code>%s</code>. Every 12 hours' ),
    );
    return $schedules;
}
add_filter( 'cron_schedules Evropa Express kurýr Express kurýr na poštu HTML Hlavní nastavení Hodnota navýšení ID ID obchodu Id Jméno Kurz Eura Kód chyby Latitude Licenční klíč Longitude Multipart Načíst dopravce Načíst pobočky Načíst souřadnice Nemá pobočky Nemáte zadaný licenční klíč. <br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Neplatný licenční klíč.<br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Odeslání zásilky do systému Uloženky Offset Order #%s Order number: %s Other locations PSČ Plain text Platba dobírkou.', $this->plugin_slug ) );
					}else{
						$order->update_status( 'on-hold', __( 'Platba dobírkou.', $this->plugin_slug ) );
					}

					// Reduce stock levels
					wc_reduce_stock_levels( $order_id );

					// Remove cart
					WC()->cart->empty_cart();
    
    				// Add order note
    				$order->add_order_note( __( 'Zákazník vybral platbu na dobírku', $this->plugin_slug ) );

					// Return thankyou redirect
					return array(
						'result' 	=> 'success Po vytvoření objednávky na děkovné stránce Pobočky DPD Pobočky Slovenské Pošty Pobočky Uloženky v CZ Pobočky Uloženky v SK Pobočky služeb Pobočky České Pošty Podací pobočka Pojištění zásilky Položka Pomocí offset nastavte pořadí, v jakém se budou zobrazovat v pokladně. Popis chyby Povolit Uloženku Povolit automatickou aktualizaci kurzu z Národní banky Povolit platbu na dobírku', $this->plugin_slug ),
							'label'       => __( 'Povolit platbu na dobírku', $this->plugin_slug ),
							'type'        => 'checkbox Povolit tento způsob Počet poboček Price Product Prosím, vyberte pobočku.', $this->plugin_slug ),
                    'phone_number'  => __( 'Neplatné telefonní číslo. Zadávejte prosím ve formátu +420123123123 pro Česko, nebo +421123456789 pro Slovensko', $this->plugin_slug ),
                    'dataBranchList' => $this->get_branch_list()
                ));
        }
	}

    /**
     * Load the plugin text domain for translation.
     *
     * @since    1.4.7
     */
    public function load_plugin_textdomain() {

        $domain = 'woocommerce-ulozenka';
        $locale = apply_filters( 'plugin_locale', get_locale(), $domain );

        $load = load_textdomain( $domain, WP_LANG_DIR . '/woocommerce-ulozenka/' . $domain . '-' . $locale . '.mo' );

        if( $load === false ){
            load_textdomain( $domain, ULOZENKADIR . 'languages/' . $domain . '-' . $locale . '.mo' );
        }

    }

	/**
	 * Create select list for checkout select branches
	 *
	 * @since    1.0.0
	 */
	public function ulozenka_select_option(){

        global $woocommerce;
        $shipping_method = explode('>',WC()->session->chosen_shipping_methods[0]);
 
        if( !empty( $shipping_method[1] ) ){ 
            $zeme = toret_get_customer_country();
            if($zeme == 'CZ'){
                $country = 'CZE';
            }elseif($zeme == 'SK'){
                $country = 'SVK';
            }elseif($zeme == 'PL'){
                $country = 'PLN';
            }
          
            if ($shipping_method[1]=='ulozenka-1'){
                        
                echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                    echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_1" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="1" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-2'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="2" />';
                echo '<input type="hidden" name="selected_service" id="selected_service" value="2" />';
  
            }elseif ($shipping_method[1]=='ulozenka-3'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="3" />';
                echo '<input type="hidden" name="selected_service" id="selected_service" value="3" />';
  
            }elseif ($shipping_method[1]=='ulozenka-4' || $shipping_method[1]=='dpd-private'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="4" />'; 
                echo '<input type="hidden" name="selected_service" id="selected_service" value="4" />';   
  
            }elseif ($shipping_method[1]=='ulozenka-5'){
            //$services = get_option( 'ulozenka_services_pobocky_5' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/dpd.jpg" width="130" border="0" alt="DPD"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_5" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="5" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-6'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="6" />';   
                echo '<input type="hidden" name="selected_service" id="selected_service" value="6" />'; 
  
            }elseif ($shipping_method[1]=='ulozenka-7'){
            //$services = get_option( 'ulozenka_services_pobocky_7' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ceska-posta.png" width="130" border="0" alt="Česká pošta Balík na poštu"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_7" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="7" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-11'){
            //$services = get_option( 'ulozenka_services_pobocky_11' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_11" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="11" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-17'){
            
                echo '<input type="hidden" name="selected_service" id="selected_service" value="17" />';

            }elseif ($shipping_method[1]=='ulozenka-20'){
            //$services = get_option( 'ulozenka_services_pobocky_20' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_20" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="20" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }
            elseif ($shipping_method[1]=='ulozenka-21'){
            //$services = get_option( 'ulozenka_services_pobocky_21' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_21" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="21" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';
            }
        }
    }

    /**
     * Create Consingment
     * @since 1.1.0
     */
    public function create_consingment( $order_id ){
        
        $consingment = new Ulozenka_Send_Consigment( $order_id );
        $consingment->create_consingment();

    }  
  
  
  
    /**
     * Get currency code
     *    
     * @since 1.1.0
     */        
    private function get_currency_code($address_state){
        if(empty($address_state)){
            $return = 'CZK';
        }elseif($address_state == 'CZ'){
            $return = 'CZK';
        }elseif($address_state == 'SK'){
            $return = 'EUR';
        }
        return $return;
    } 
  
  
  
    
  
  /**
   * Control phone number format
   *
   * @since 1.1.0  
   */            
   private function control_phone_format($phone,$prefix='+420'){

        $trim_string = str_replace('  Při označení objednávky "Dokončená" Při označení objednávky "Zpracovává se" Příplatek za Dobírku Příplatek za dobírku Quantity Recipient(s) Slovensko Slovenská Pošta Služba Stav Vaší zásilky můžete sledovat na tomto Stažení štítku - data chyby Stažení štítku - znění chyby String Subject Text, který zákazník uvidí There is no changelog available. This controls the email subject line. Leave blank to use the default subject: <code>%s</code>. This controls the main heading contained within the email notification. Leave blank to use the default heading: <code>%s</code>. Titulek', $this->plugin_slug ),
							'type'        => 'text Toret plugins', $this->plugin_slug ),
				__( 'Toret plugins', $this->plugin_slug ),
				'manage_options Typ váhového navýšení UPOZORNĚNÍ: načtením služeb, smažete předchozí uložená data, včetně poboček a musíte je znovu vytvořit! Uloženka Uloženka - Chyba odeslání Uloženka Log Uloženka Partner Uloženka pobočka: Uloženka služba: Uloženka tak nepřijala data o zásilce a přestože byla objednávka v eshopu vytvořena, do systému Uloženky se nedostala. Uloženka', $this->plugin_slug ),
			__( 'Uloženka', $this->plugin_slug ),
			'manage_options',
			$this->plugin_slug,
			array( $this, 'display_plugin_admin_page' )
		);
        add_submenu_page(
            'toret-plugins',
            __( 'Uloženka log', $this->plugin_slug ),
            __( 'Uloženka log', $this->plugin_slug ),
            'manage_options Uložit Unknown update checker status "%s" V případě, že nebyla z nějakého důvodu odeslána zásilka do Uloženky, přijde upozornění Vaše licence byla aktivována. View details'));
				if ( !empty($linkText) ) {
					$viewDetailsLinkPosition = 'append';

					//Find the "Visit plugin site" link (if present).
					$visitPluginSiteLinkIndex = count($pluginMeta) - 1;
					if ( $pluginData['PluginURI'] ) {
						$escapedPluginUri = esc_url($pluginData['PluginURI']);
						foreach ($pluginMeta as $linkIndex => $existingLink) {
							if ( strpos($existingLink, $escapedPluginUri) !== false ) {
								$visitPluginSiteLinkIndex = $linkIndex;
								$viewDetailsLinkPosition = apply_filters(
									$this->updateChecker->getUniqueName('view_details_link_position'),
									'before'
								);
								break;
							}
						}
					}

					$viewDetailsLink = sprintf('<a href="%s" class="thickbox open-plugin-details-modal" aria-label="%s" data-title="%s">%s</a>',
						esc_url(network_admin_url('plugin-install.php?tab=plugin-information&plugin=' . urlencode($this->updateChecker->slug) .
							'&TB_iframe=true&width=600&height=550')),
						esc_attr(sprintf(__('More information about %s'), $pluginData['Name'])),
						esc_attr($pluginData['Name']),
						$linkText
					);
					switch ($viewDetailsLinkPosition) {
						case 'before':
							array_splice($pluginMeta, $visitPluginSiteLinkIndex, 0, $viewDetailsLink);
							break;
						case 'after':
							array_splice($pluginMeta, $visitPluginSiteLinkIndex + 1, 0, $viewDetailsLink);
							break;
						case 'replace':
							$pluginMeta[$visitPluginSiteLinkIndex] = $viewDetailsLink;
							break;
						case 'append':
						default:
							$pluginMeta[] = $viewDetailsLink;
							break;
					}
				}
			}
			return $pluginMeta;
		}

		/**
		 * Add a "Check for updates" link to the plugin row in the "Plugins" page. By default,
		 * the new link will appear after the "Visit plugin site" link if present, otherwise
		 * after the "View plugin details" link.
		 *
		 * You can change the link text by using the "puc_manual_check_link-$slug" filter.
		 * Returning an empty string from the filter will disable the link.
		 *
		 * @param array $pluginMeta Array of meta links.
		 * @param string $pluginFile
		 * @return array
		 */
		public function addCheckForUpdatesLink($pluginMeta, $pluginFile) {
			if ( $this->isMyPluginFile($pluginFile) ) {
				$linkUrl = wp_nonce_url(
					add_query_arg(
						array(
							'puc_check_for_updates' => 1,
							'puc_slug'              => $this->updateChecker->slug,
						),
						self_admin_url('plugins.php')
					),
					'puc_check_for_updates'
				);

				$linkText = apply_filters(
					$this->updateChecker->getUniqueName('manual_check_link'),
					__('Check for updates Vybraná pobočka Vypnout odesílání do zásilkovny Vytvoření zásilky - data chyby Vytvoření zásilky - data zásilky Vytvoření zásilky - odpověď Uloženky Vytvoření zásilky - znění chyby Zadaný licenční klíč neodpovídá URL webu. <br />Prosím, zkontrolujte si licenční klíč v sekci <a href="https://toret.cz/muj-ucet/">Můj účet</a>. V případě dalších problémů kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Zadejte kurz pro přepočet Země Znění chyby Zobrazení dopravy zdarma Zobrazit Zobrazit dobírku, pokud je cena zásilky 0', $this->plugin_slug ),
							'label'       => __( 'Zobrazit dobírku, pokud je cena zásilky 0', $this->plugin_slug ),
							'type'        => 'checkbox Zobrazit pouze dostupnou dopravu zdarma Zobrazit zdarma všechny druhy dopravy Zobrazit záznamy logu pro tuto objednávku Zásilka do '.$weight.' kg jS F Y odkazu uložit Česko Česká Pošta Žádný %1$s &ndash; %2$s %1$s (#%2$s) API Key Aktivní BalíkoBox SK Balíkobox SK Barcode', $this->plugin_slug );
            }
        }    
        $new_columns['ulozenka_send'] = __( 'Uloženka', $this->plugin_slug );
        return $new_columns;

  	}	

  	/**
  	 *
  	 *
  	 */
  	public function thumb_column_display($column_name, $post_id){
    	global $post;

        if ( $column_name == 'ulozenka' ) { 
            $field = get_post_meta( $post_id, 'ulozenka_consingment_id', true );
            if( !empty( $field ) ){
                echo '<a href="https://tracking.ulozenka.cz/'.$field.'" target="_blank">'.$field.'</a>';
            }
        }
    	
    	if ( $column_name == 'ulozenka_send' ) { 
        	$field = get_post_meta( $post_id, 'ulozenka_consingment_id', true );
        	if( empty( $field ) ){
        		echo '<a href="'.admin_url().'edit.php?post_type=shop_order&ulozenka_id_objednavky='.$post_id.'" class="button" style="padding: 2px 4px 1px 5px;"><span class="dashicons dashicons-external"></span></a>';
    		}else{
    			echo '<a href="'.admin_url().'edit.php?post_type=shop_order&ulozenka_ticket_id='.$post_id.'" class="button" style="padding: 2px 4px 1px 5px;"><span class="dashicons dashicons-arrow-down-alt"></span></a>';
    		}

    	}
  	}



  	/**
  	 * Send ticket or download packet
  	 *
  	 */
  	public function send_ticket(){

  		if( !empty( $_GET['ulozenka_id_objednavky'] ) ){

  			$order_id = sanitize_text_field( $_GET['ulozenka_id_objednavky'] );
  			$consingment = new Ulozenka_Send_Consigment( $order_id );
        	$consingment->create_consingment();

  		}
        elseif( !empty( $_GET['ulozenka_ticket_id'] ) ){

            $order_id = sanitize_text_field( $_GET['ulozenka_ticket_id'] );

            $ulozenka_consingment_id = get_post_meta( $order_id, 'ulozenka_consingment_id', true );

            if( empty( $ulozenka_consingment_id ) ){ return false; }
            
            try {
  
                    $subject_array = array(
                        'type' => 'pdf Cena Cena dopravy zdarma Cena za zásilku do 10 kg Cena za zásilku do 2 kg Cena za zásilku do 20 kg Cena za zásilku do 30 kg Ceník DPD Pickup CZ Ceník DPD Pickup SK Ceník DPD Private CZ Ceník DPD Private Polsko Ceník DPD Private SK Ceník Slovenská Pošta Ceník Uloženka Ceník Uloženka Doprava na adresu Ceník Uloženka Partner Ceník Uloženka SK Ceník Česká Pošta - Balík do Ruky Ceník Česká Pošta - Balík na Poštu Choose which format of email to send. Chyba odeslání do Uloženky DPD Pickup Definovat pro každou dopravu zvlášť Do Uloženky byla odeslána neplatá data. Dobirka', $this->plugin_slug );
    				$this->method_description = __( 'Umožňuje zákazníkům platit zboží při doručení (na dobírku).', $this->plugin_slug );
					$this->has_fields   = false;

					// Load the settings
					$this->init_form_fields();
					$this->init_settings();
     
					//Extra price
    				$this->current_gateway_extra_charges = '';

					// Get settings
					$this->title              = $this->get_option( 'title' );
					$this->description        = $this->get_option( 'description' );
					$this->instructions       = $this->get_option( 'instructions' );
					$this->enable_for_methods = $this->get_option( 'enable_for_methods', array() );
    				$this->enable_dobirka_countries = $this->get_option( 'enable_dobirka_countries', array() );
    				$this->order_status 	  = $this->get_option( 'order_status', array() );
    				$this->taxable            = $this->get_option( 'taxable' );
    				$this->show_cod           = $this->get_option( 'show_cod' );    				
	    
					add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );
					add_action( 'woocommerce_thankyou_dobirka', array( $this, 'thankyou' ) );
    
    				// Customer Emails
					add_action( 'woocommerce_email_before_order_table', array( $this, 'email_instructions' ), 10, 3 );
    
				}


				/**
    			 * Initialise Gateway Settings Form Fields
    			 *
    			 * @access public
    			 * @return void
    			 */
				public function init_form_fields() {
    	
    				//Get shipping methods
    				$shipping_methods = array();
    				if ( is_admin() ){
    					
    					$data_store = WC_Data_Store::load( 'shipping-zone' );
						$raw_zones  = $data_store->get_zones();

						foreach ( $raw_zones as $raw_zone ) {
							$zones[] = new WC_Shipping_Zone( $raw_zone );
						}

						$zones[] = new WC_Shipping_Zone(0);

						foreach ( WC()->shipping()->load_shipping_methods() as $method ) {

							$shipping_methods[ $method->get_method_title() ] = array();

							$shipping_methods[ $method->get_method_title() ][ $method->id ] = sprintf( __( 'Any &quot;%1$s&quot; method Dokumentace a demo eshop pro vyzkoušení pluginu Doprava zdarma Dopravce Dopravci Email Heading Email type Enable this email notification Enable/Disable Enter recipients (comma separated) for this email. Defaults to <code>%s</code>. Every 12 hours' ),
    );
    return $schedules;
}
add_filter( 'cron_schedules Evropa Express kurýr Express kurýr na poštu HTML Hlavní nastavení Hodnota navýšení ID ID obchodu Id Jméno Kurz Eura Kód chyby Latitude Licenční klíč Longitude Multipart Načíst dopravce Načíst pobočky Načíst souřadnice Nemá pobočky Nemáte zadaný licenční klíč. <br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Neplatný licenční klíč.<br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Odeslání zásilky do systému Uloženky Offset Order #%s Order number: %s Other locations PSČ Plain text Platba dobírkou.', $this->plugin_slug ) );
					}else{
						$order->update_status( 'on-hold', __( 'Platba dobírkou.', $this->plugin_slug ) );
					}

					// Reduce stock levels
					wc_reduce_stock_levels( $order_id );

					// Remove cart
					WC()->cart->empty_cart();
    
    				// Add order note
    				$order->add_order_note( __( 'Zákazník vybral platbu na dobírku', $this->plugin_slug ) );

					// Return thankyou redirect
					return array(
						'result' 	=> 'success Po vytvoření objednávky na děkovné stránce Pobočky DPD Pobočky Slovenské Pošty Pobočky Uloženky v CZ Pobočky Uloženky v SK Pobočky služeb Pobočky České Pošty Podací pobočka Pojištění zásilky Položka Pomocí offset nastavte pořadí, v jakém se budou zobrazovat v pokladně. Popis chyby Povolit Uloženku Povolit automatickou aktualizaci kurzu z Národní banky Povolit platbu na dobírku', $this->plugin_slug ),
							'label'       => __( 'Povolit platbu na dobírku', $this->plugin_slug ),
							'type'        => 'checkbox Povolit tento způsob Počet poboček Price Product Prosím, vyberte pobočku.', $this->plugin_slug ),
                    'phone_number'  => __( 'Neplatné telefonní číslo. Zadávejte prosím ve formátu +420123123123 pro Česko, nebo +421123456789 pro Slovensko', $this->plugin_slug ),
                    'dataBranchList' => $this->get_branch_list()
                ));
        }
	}

    /**
     * Load the plugin text domain for translation.
     *
     * @since    1.4.7
     */
    public function load_plugin_textdomain() {

        $domain = 'woocommerce-ulozenka';
        $locale = apply_filters( 'plugin_locale', get_locale(), $domain );

        $load = load_textdomain( $domain, WP_LANG_DIR . '/woocommerce-ulozenka/' . $domain . '-' . $locale . '.mo' );

        if( $load === false ){
            load_textdomain( $domain, ULOZENKADIR . 'languages/' . $domain . '-' . $locale . '.mo' );
        }

    }

	/**
	 * Create select list for checkout select branches
	 *
	 * @since    1.0.0
	 */
	public function ulozenka_select_option(){

        global $woocommerce;
        $shipping_method = explode('>',WC()->session->chosen_shipping_methods[0]);
 
        if( !empty( $shipping_method[1] ) ){ 
            $zeme = toret_get_customer_country();
            if($zeme == 'CZ'){
                $country = 'CZE';
            }elseif($zeme == 'SK'){
                $country = 'SVK';
            }elseif($zeme == 'PL'){
                $country = 'PLN';
            }
          
            if ($shipping_method[1]=='ulozenka-1'){
                        
                echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                    echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_1" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="1" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-2'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="2" />';
                echo '<input type="hidden" name="selected_service" id="selected_service" value="2" />';
  
            }elseif ($shipping_method[1]=='ulozenka-3'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="3" />';
                echo '<input type="hidden" name="selected_service" id="selected_service" value="3" />';
  
            }elseif ($shipping_method[1]=='ulozenka-4' || $shipping_method[1]=='dpd-private'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="4" />'; 
                echo '<input type="hidden" name="selected_service" id="selected_service" value="4" />';   
  
            }elseif ($shipping_method[1]=='ulozenka-5'){
            //$services = get_option( 'ulozenka_services_pobocky_5' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/dpd.jpg" width="130" border="0" alt="DPD"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_5" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="5" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-6'){
  
                //echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="6" />';   
                echo '<input type="hidden" name="selected_service" id="selected_service" value="6" />'; 
  
            }elseif ($shipping_method[1]=='ulozenka-7'){
            //$services = get_option( 'ulozenka_services_pobocky_7' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ceska-posta.png" width="130" border="0" alt="Česká pošta Balík na poštu"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_7" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="7" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-11'){
            //$services = get_option( 'ulozenka_services_pobocky_11' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_11" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="11" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }elseif ($shipping_method[1]=='ulozenka-17'){
            
                echo '<input type="hidden" name="selected_service" id="selected_service" value="17" />';

            }elseif ($shipping_method[1]=='ulozenka-20'){
            //$services = get_option( 'ulozenka_services_pobocky_20' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_20" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="20" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';

            }
            elseif ($shipping_method[1]=='ulozenka-21'){
            //$services = get_option( 'ulozenka_services_pobocky_21' );
            echo '<tr>';
                echo '<th><img src="'.ULOZENKAURL.'assets/images/ulozenka.png" width="130" border="0" alt="Uloženka"></th>';
                echo '<td>';
                        echo '<button type="button" class="button alt ulozenka-open" id="ulozenka-open" data-service="ulozenka_services_pobocky_21" data-country="'.$country.'">'.__( 'Vybrat pobočku',$this->plugin_slug ).'</button>';
                        echo '<input type="hidden" name="selected_ulozenka" id="selected_ulozenka" value="default" />';
                        echo '<input type="hidden" name="selected_service" id="selected_service" value="21" />';
                    echo '</td>';
                echo '</tr>';
                echo '<tr class="table-ulozenka" id="table-ulozenka"></tr>';
            }
        }
    }

    /**
     * Create Consingment
     * @since 1.1.0
     */
    public function create_consingment( $order_id ){
        
        $consingment = new Ulozenka_Send_Consigment( $order_id );
        $consingment->create_consingment();

    }  
  
  
  
    /**
     * Get currency code
     *    
     * @since 1.1.0
     */        
    private function get_currency_code($address_state){
        if(empty($address_state)){
            $return = 'CZK';
        }elseif($address_state == 'CZ'){
            $return = 'CZK';
        }elseif($address_state == 'SK'){
            $return = 'EUR';
        }
        return $return;
    } 
  
  
  
    
  
  /**
   * Control phone number format
   *
   * @since 1.1.0  
   */            
   private function control_phone_format($phone,$prefix='+420'){

        $trim_string = str_replace('  Při označení objednávky "Dokončená" Při označení objednávky "Zpracovává se" Příplatek za Dobírku Příplatek za dobírku Quantity Recipient(s) Slovensko Slovenská Pošta Služba Stav Vaší zásilky můžete sledovat na tomto Stažení štítku - data chyby Stažení štítku - znění chyby String Subject Text, který zákazník uvidí There is no changelog available. This controls the email subject line. Leave blank to use the default subject: <code>%s</code>. This controls the main heading contained within the email notification. Leave blank to use the default heading: <code>%s</code>. Titulek', $this->plugin_slug ),
							'type'        => 'text Toret plugins', $this->plugin_slug ),
				__( 'Toret plugins', $this->plugin_slug ),
				'manage_options Typ váhového navýšení UPOZORNĚNÍ: načtením služeb, smažete předchozí uložená data, včetně poboček a musíte je znovu vytvořit! Uloženka Uloženka - Chyba odeslání Uloženka Log Uloženka Partner Uloženka pobočka: Uloženka služba: Uloženka tak nepřijala data o zásilce a přestože byla objednávka v eshopu vytvořena, do systému Uloženky se nedostala. Uloženka', $this->plugin_slug ),
			__( 'Uloženka', $this->plugin_slug ),
			'manage_options',
			$this->plugin_slug,
			array( $this, 'display_plugin_admin_page' )
		);
        add_submenu_page(
            'toret-plugins',
            __( 'Uloženka log', $this->plugin_slug ),
            __( 'Uloženka log', $this->plugin_slug ),
            'manage_options Uložit Unknown update checker status "%s" V případě, že nebyla z nějakého důvodu odeslána zásilka do Uloženky, přijde upozornění Vaše licence byla aktivována. View details'));
				if ( !empty($linkText) ) {
					$viewDetailsLinkPosition = 'append';

					//Find the "Visit plugin site" link (if present).
					$visitPluginSiteLinkIndex = count($pluginMeta) - 1;
					if ( $pluginData['PluginURI'] ) {
						$escapedPluginUri = esc_url($pluginData['PluginURI']);
						foreach ($pluginMeta as $linkIndex => $existingLink) {
							if ( strpos($existingLink, $escapedPluginUri) !== false ) {
								$visitPluginSiteLinkIndex = $linkIndex;
								$viewDetailsLinkPosition = apply_filters(
									$this->updateChecker->getUniqueName('view_details_link_position'),
									'before'
								);
								break;
							}
						}
					}

					$viewDetailsLink = sprintf('<a href="%s" class="thickbox open-plugin-details-modal" aria-label="%s" data-title="%s">%s</a>',
						esc_url(network_admin_url('plugin-install.php?tab=plugin-information&plugin=' . urlencode($this->updateChecker->slug) .
							'&TB_iframe=true&width=600&height=550')),
						esc_attr(sprintf(__('More information about %s'), $pluginData['Name'])),
						esc_attr($pluginData['Name']),
						$linkText
					);
					switch ($viewDetailsLinkPosition) {
						case 'before':
							array_splice($pluginMeta, $visitPluginSiteLinkIndex, 0, $viewDetailsLink);
							break;
						case 'after':
							array_splice($pluginMeta, $visitPluginSiteLinkIndex + 1, 0, $viewDetailsLink);
							break;
						case 'replace':
							$pluginMeta[$visitPluginSiteLinkIndex] = $viewDetailsLink;
							break;
						case 'append':
						default:
							$pluginMeta[] = $viewDetailsLink;
							break;
					}
				}
			}
			return $pluginMeta;
		}

		/**
		 * Add a "Check for updates" link to the plugin row in the "Plugins" page. By default,
		 * the new link will appear after the "Visit plugin site" link if present, otherwise
		 * after the "View plugin details" link.
		 *
		 * You can change the link text by using the "puc_manual_check_link-$slug" filter.
		 * Returning an empty string from the filter will disable the link.
		 *
		 * @param array $pluginMeta Array of meta links.
		 * @param string $pluginFile
		 * @return array
		 */
		public function addCheckForUpdatesLink($pluginMeta, $pluginFile) {
			if ( $this->isMyPluginFile($pluginFile) ) {
				$linkUrl = wp_nonce_url(
					add_query_arg(
						array(
							'puc_check_for_updates' => 1,
							'puc_slug'              => $this->updateChecker->slug,
						),
						self_admin_url('plugins.php')
					),
					'puc_check_for_updates'
				);

				$linkText = apply_filters(
					$this->updateChecker->getUniqueName('manual_check_link'),
					__('Check for updates Vybraná pobočka Vypnout odesílání do zásilkovny Vytvoření zásilky - data chyby Vytvoření zásilky - data zásilky Vytvoření zásilky - odpověď Uloženky Vytvoření zásilky - znění chyby Zadaný licenční klíč neodpovídá URL webu. <br />Prosím, zkontrolujte si licenční klíč v sekci <a href="https://toret.cz/muj-ucet/">Můj účet</a>. V případě dalších problémů kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Zadejte kurz pro přepočet Země Znění chyby Zobrazení dopravy zdarma Zobrazit Zobrazit dobírku, pokud je cena zásilky 0', $this->plugin_slug ),
							'label'       => __( 'Zobrazit dobírku, pokud je cena zásilky 0', $this->plugin_slug ),
							'type'        => 'checkbox Zobrazit pouze dostupnou dopravu zdarma Zobrazit zdarma všechny druhy dopravy Zobrazit záznamy logu pro tuto objednávku Zásilka do '.$weight.' kg jS F Y odkazu uložit Česko Česká Pošta Žádný 