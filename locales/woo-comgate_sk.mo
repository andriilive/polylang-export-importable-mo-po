��    L      |      �  5   �  5        H     Z     p  B   �  h   �     5     N     g          �     �     �  2   �            .   ?  N   n     �  
   �  ]   �  O   7    �     �	  z   �	  s   (
  
   �
  D   �
     �
     �
  >        M     T  !   n      �      �     �     �  @   �     <  ]   I  O   �    �            #   =  G   a  .   �  .   �  @        H      O     p  j   y     �  "   �  4        K     Z  �
  z  7     1   @  1   r  /   �  r   �  
  G     R      d     �  (   �  +   �     �          '     8  5   L  5   �     �     �     �  B   �  h   <     �     �     �     �     
             4   2   A      t      �   .   �   N   �      -!  
   >!  ]   I!  O   �!    �!     #  z   #  s   �#  
   $  D   $     \$     l$  >   ~$     �$     �$  !   �$       %      !%     B%     Z%  @   k%     �%  ]   �%  O   &    g&     ~'     �'  #   �'  G   �'  .   (  .   H(  @   w(     �(      �(     �(  j   �(     T)  "   c)  4   �)     �)     �)  �
  �)  7   x4  1   �4  1   �4  /   5  r   D5  
  �5     �6      �6     �6  (   7  +   :7     f7     w7     �7     �7  Aktivace/deaktivace testovacího prostředí ComGate. Aktivace/deaktivace testovacího prostředí Comgate. ComGate exception ComGate platba kartou ComGate platba převodem Comgate je platební brána pro online platby v České republice. Comgate log', $this->plugin_slug ),
				__( 'Comgate log', $this->plugin_slug ),
				'manage_woocommerce Comgate platba převodem Comgate platební brána Comgate platební karta Comgate status = CANCELLED Comgate status = PAID Digitální zboží Druh zboží Error: objednávka není ve stavu pro zpracování Error: prázdné id platby Error: prázdné id, nebo refId Error: refId není platné číslo objednávky Every 12 hours' ),
    );
    return $schedules;
}
add_filter( 'cron_schedules Fyzické zboží Id obchodu Id obchodu - ' . $key, 'woo-comgate'),
                                'type'        => 'text Id obchodu - ' . $key, 'woo-comgate'),
                  'type'        => 'text Identifikátor propojení obchodu.' . (defined( 'ICL_LANGUAGE_CODE' ) ? ' Základní pro všechny případy které nespadají pod jazyky.' : ''),'woo-comgate')
                ),
                'secure_key' => array(
                    'title'       => __('Secure key Ikona platební metody: Nemáte zadaný licenční klíč. <br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Neplatný licenční klíč.<br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Notifikace Název platební metody. Zobrazí se při výběru platební metody. Objednávka č: Payments protocol Popis, který uživatel uvidí při výběru platební metody. Popis: Povolit ComGate pro země Povolit Comgate platbu převodem. Povolit Comgate platební kartu. Povolit Comgate platební metody Povolit způsob dopravy Povolit/Zakázat Pro povolení všech způsobů dopravy, zanechte pole prázdné. Redirect url Secure key - ' . $key, 'woo-comgate'),
                                'type'        => 'text Secure key - ' . $key, 'woo-comgate'),
                  'type'        => 'text Secure key e-shopu, které vám bylo přiděleno.' . (defined( 'ICL_LANGUAGE_CODE' ) ? ' Základní pro všechny případy které nespadají pod jazyky.' : ''), 'woo-comgate')
                ),
                'test' => array(
                    'title'       => __('Test mód Selhaná platba Selhaná platba, data requestu Stav objednávky - čeká na platbu Stav objednávky Completed - objednávka má pouze virtuální produkty Stav objednávky Failed - platba byla zrušena Stav objednávky Pending - čekání na platbu Stav objednávky Processing - objednávka má i hmotné produkty String There is no changelog available. Titulek: Toret plugins', $this->plugin_slug ),
			  __( 'Toret plugins', $this->plugin_slug ),
			  'manage_options Transaction ID Unknown update checker status "%s" Url ikony zobrazené při výběru platební metody. Url notifikace Vaše licence byla aktivována. View details' ) );
				if ( ! empty( $linkText ) ) {
					$viewDetailsLinkPosition = 'append';

					//Find the "Visit plugin site" link (if present).
					$visitPluginSiteLinkIndex = count( $pluginMeta ) - 1;
					if ( $pluginData['PluginURI'] ) {
						$escapedPluginUri = esc_url( $pluginData['PluginURI'] );
						foreach ( $pluginMeta as $linkIndex => $existingLink ) {
							if ( strpos( $existingLink, $escapedPluginUri ) !== false ) {
								$visitPluginSiteLinkIndex = $linkIndex;
								$viewDetailsLinkPosition  = apply_filters(
									$this->updateChecker->getUniqueName( 'view_details_link_position' ),
									'before'
								);
								break;
							}
						}
					}

					$viewDetailsLink = sprintf( '<a href="%s" class="thickbox open-plugin-details-modal" aria-label="%s" data-title="%s">%s</a>',
						esc_url( network_admin_url( 'plugin-install.php?tab=plugin-information&plugin=' . urlencode( $this->updateChecker->slug ) .
						                            '&TB_iframe=true&width=600&height=550' ) ),
						esc_attr( sprintf( __( 'More information about %s' ), $pluginData['Name'] ) ),
						esc_attr( $pluginData['Name'] ),
						$linkText
					);
					switch ( $viewDetailsLinkPosition ) {
						case 'before':
							array_splice( $pluginMeta, $visitPluginSiteLinkIndex, 0, $viewDetailsLink );
							break;
						case 'after':
							array_splice( $pluginMeta, $visitPluginSiteLinkIndex + 1, 0, $viewDetailsLink );
							break;
						case 'replace':
							$pluginMeta[ $visitPluginSiteLinkIndex ] = $viewDetailsLink;
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
		 *
		 * @return array
		 */
		public function addCheckForUpdatesLink( $pluginMeta, $pluginFile ) {
			if ( $this->isMyPluginFile( $pluginFile ) ) {
				$linkUrl = wp_nonce_url(
					add_query_arg(
						array(
							'puc_check_for_updates' => 1,
							'puc_slug'              => $this->updateChecker->slug,
						),
						self_admin_url( 'plugins.php' )
					),
					'puc_check_for_updates'
				);

				$linkText = apply_filters(
					$this->updateChecker->getUniqueName( 'manual_check_link' ),
					__( 'Check for updates Vyberte, druh zboží, jenž máte povolené v Comgate. Vyberte, které platební metody budou dostupné. Vyberte, pro které země bude ComGate dostupná. Vyberte, pro které země bude GoPay dostupná. Woo Comgate Payment', $this->plugin_slug ),
			__( 'Woo Comgate Payment', $this->plugin_slug ),
			'manage_options Zadaný licenční klíč neodpovídá URL webu. <br />Prosím, zkontrolujte si licenční klíč v sekci <a href="https://toret.cz/muj-ucet/">Můj účet</a>. V případě dalších problémů kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Zaplacená platba Zaplacená platba, data requestu Zaplaťte kreditní kartou. Zaplaťte převodem na bankovní účet. Zobrazit záznamy logu pro tuto objednávku Zrušená platba Zrušená platba, data requestu Čeká na platbu Čekání na platbu Aktivace/deaktivace testovacího prostředí ComGate. Aktivace/deaktivace testovacího prostředí Comgate. ComGate exception ComGate platba kartou ComGate platba převodem Comgate je platební brána pro online platby v České republice. Comgate log', $this->plugin_slug ),
				__( 'Comgate log', $this->plugin_slug ),
				'manage_woocommerce Comgate platba převodem Comgate platební brána Comgate platební karta Comgate status = CANCELLED Comgate status = PAID Digitální zboží Druh zboží Error: objednávka není ve stavu pro zpracování Error: prázdné id platby Error: prázdné id, nebo refId Error: refId není platné číslo objednávky Every 12 hours' ),
    );
    return $schedules;
}
add_filter( 'cron_schedules Fyzické zboží Id obchodu Id obchodu - ' . $key, 'woo-comgate'),
                                'type'        => 'text Id obchodu - ' . $key, 'woo-comgate'),
                  'type'        => 'text Identifikátor propojení obchodu.' . (defined( 'ICL_LANGUAGE_CODE' ) ? ' Základní pro všechny případy které nespadají pod jazyky.' : ''),'woo-comgate')
                ),
                'secure_key' => array(
                    'title'       => __('Secure key Ikona platební metody: Nemáte zadaný licenční klíč. <br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Neplatný licenční klíč.<br />Prosím, kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Notifikace Název platební metody. Zobrazí se při výběru platební metody. Objednávka č: Payments protocol Popis, který uživatel uvidí při výběru platební metody. Popis: Povolit ComGate pro země Povolit Comgate platbu převodem. Povolit Comgate platební kartu. Povolit Comgate platební metody Povolit způsob dopravy Povolit/Zakázat Pro povolení všech způsobů dopravy, zanechte pole prázdné. Redirect url Secure key - ' . $key, 'woo-comgate'),
                                'type'        => 'text Secure key - ' . $key, 'woo-comgate'),
                  'type'        => 'text Secure key e-shopu, které vám bylo přiděleno.' . (defined( 'ICL_LANGUAGE_CODE' ) ? ' Základní pro všechny případy které nespadají pod jazyky.' : ''), 'woo-comgate')
                ),
                'test' => array(
                    'title'       => __('Test mód Selhaná platba Selhaná platba, data requestu Stav objednávky - čeká na platbu Stav objednávky Completed - objednávka má pouze virtuální produkty Stav objednávky Failed - platba byla zrušena Stav objednávky Pending - čekání na platbu Stav objednávky Processing - objednávka má i hmotné produkty String There is no changelog available. Titulek: Toret plugins', $this->plugin_slug ),
			  __( 'Toret plugins', $this->plugin_slug ),
			  'manage_options Transaction ID Unknown update checker status "%s" Url ikony zobrazené při výběru platební metody. Url notifikace Vaše licence byla aktivována. View details' ) );
				if ( ! empty( $linkText ) ) {
					$viewDetailsLinkPosition = 'append';

					//Find the "Visit plugin site" link (if present).
					$visitPluginSiteLinkIndex = count( $pluginMeta ) - 1;
					if ( $pluginData['PluginURI'] ) {
						$escapedPluginUri = esc_url( $pluginData['PluginURI'] );
						foreach ( $pluginMeta as $linkIndex => $existingLink ) {
							if ( strpos( $existingLink, $escapedPluginUri ) !== false ) {
								$visitPluginSiteLinkIndex = $linkIndex;
								$viewDetailsLinkPosition  = apply_filters(
									$this->updateChecker->getUniqueName( 'view_details_link_position' ),
									'before'
								);
								break;
							}
						}
					}

					$viewDetailsLink = sprintf( '<a href="%s" class="thickbox open-plugin-details-modal" aria-label="%s" data-title="%s">%s</a>',
						esc_url( network_admin_url( 'plugin-install.php?tab=plugin-information&plugin=' . urlencode( $this->updateChecker->slug ) .
						                            '&TB_iframe=true&width=600&height=550' ) ),
						esc_attr( sprintf( __( 'More information about %s' ), $pluginData['Name'] ) ),
						esc_attr( $pluginData['Name'] ),
						$linkText
					);
					switch ( $viewDetailsLinkPosition ) {
						case 'before':
							array_splice( $pluginMeta, $visitPluginSiteLinkIndex, 0, $viewDetailsLink );
							break;
						case 'after':
							array_splice( $pluginMeta, $visitPluginSiteLinkIndex + 1, 0, $viewDetailsLink );
							break;
						case 'replace':
							$pluginMeta[ $visitPluginSiteLinkIndex ] = $viewDetailsLink;
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
		 *
		 * @return array
		 */
		public function addCheckForUpdatesLink( $pluginMeta, $pluginFile ) {
			if ( $this->isMyPluginFile( $pluginFile ) ) {
				$linkUrl = wp_nonce_url(
					add_query_arg(
						array(
							'puc_check_for_updates' => 1,
							'puc_slug'              => $this->updateChecker->slug,
						),
						self_admin_url( 'plugins.php' )
					),
					'puc_check_for_updates'
				);

				$linkText = apply_filters(
					$this->updateChecker->getUniqueName( 'manual_check_link' ),
					__( 'Check for updates Vyberte, druh zboží, jenž máte povolené v Comgate. Vyberte, které platební metody budou dostupné. Vyberte, pro které země bude ComGate dostupná. Vyberte, pro které země bude GoPay dostupná. Woo Comgate Payment', $this->plugin_slug ),
			__( 'Woo Comgate Payment', $this->plugin_slug ),
			'manage_options Zadaný licenční klíč neodpovídá URL webu. <br />Prosím, zkontrolujte si licenční klíč v sekci <a href="https://toret.cz/muj-ucet/">Můj účet</a>. V případě dalších problémů kontaktujte podporu na webu <a href="https://www.toret.cz">Toret.cz</a>. Zaplacená platba Zaplacená platba, data requestu Zaplaťte kreditní kartou. Zaplaťte převodem na bankovní účet. Zobrazit záznamy logu pro tuto objednávku Zrušená platba Zrušená platba, data requestu Čeká na platbu Čekání na platbu 