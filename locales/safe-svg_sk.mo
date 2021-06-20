��          4       L   �  L   N   �     @  �  G  N   �#     ;$  Full Size' ),
                    'thumbnail' => __( 'Thumbnail' ),
                    'medium'    => __( 'Medium' ),
                    'large'     => __( 'Large' ),
                ) );

                $sizes = array();

                foreach ( $possible_sizes as $size => $label ) {
                    $default_height = 2000;
                    $default_width  = 2000;

                    if ( 'full' === $size && $dimensions ) {
                        $default_height = $dimensions['height'];
                        $default_width  = $dimensions['width'];
                    }

                    $sizes[ $size ] = array(
                        'height'      => get_option( "{$size}_size_w", $default_height ),
                        'width'       => get_option( "{$size}_size_h", $default_width ),
                        'url'         => $response['url'],
                        'orientation' => 'portrait',
                    );
                }

                $response['sizes'] = $sizes;
                $response['icon']  = $response['url'];
            }

            return $response;
        }

        /**
         * Filters the image src result.
         * Here we're gonna spoof the image size and set it to 100 width and height
         *
         * @param array|false $image Either array with src, width & height, icon src, or false.
         * @param int $attachment_id Image attachment ID.
         * @param string|array $size Size of image. Image size or array of width and height values
         *                                    (in that order). Default 'thumbnail'.
         * @param bool $icon Whether the image should be treated as an icon. Default false.
         *
         * @return array
         */
        public function one_pixel_fix( $image, $attachment_id, $size, $icon ) {
            if ( get_post_mime_type( $attachment_id ) == 'image/svg+xml' ) {
                $image['1'] = false;
                $image['2'] = false;
            }

            return $image;
        }

        /**
         * If the featured image is an SVG we wrap it in an SVG class so we can apply our CSS fix.
         *
         * @param string $content Admin post thumbnail HTML markup.
         * @param int $post_id Post ID.
         * @param int $thumbnail_id Thumbnail ID.
         *
         * @return string
         */
        public function featured_image_fix( $content, $post_id, $thumbnail_id ) {
            $mime = get_post_mime_type( $thumbnail_id );

            if ( 'image/svg+xml' === $mime ) {
                $content = sprintf( '<span class="svg">%s</span>', $content );
            }

            return $content;
        }

        /**
         * Load our custom CSS sheet.
         */
        function load_custom_admin_style() {
            wp_enqueue_style( 'safe-svg-css', plugins_url( 'assets/safe-svg.css', __FILE__ ), array() );
        }

        /**
         * Override the default height and width string on an SVG
         *
         * @param string $html HTML content for the image.
         * @param int $id Attachment ID.
         * @param string $alt Alternate text.
         * @param string $title Attachment title.
         * @param string $align Part of the class name for aligning the image.
         * @param string|array $size Size of image. Image size or array of width and height values (in that order).
         *                            Default 'medium'.
         *
         * @return mixed
         */
        function get_image_tag_override( $html, $id, $alt, $title, $align, $size ) {
            $mime = get_post_mime_type( $id );

            if ( 'image/svg+xml' === $mime ) {
                if ( is_array( $size ) ) {
                    $width  = $size[0];
                    $height = $size[1];
                } elseif ( 'full' == $size && $dimensions = $this->svg_dimensions( get_attached_file( $id ) ) ) {
                    $width  = $dimensions['width'];
                    $height = $dimensions['height'];
                } else {
                    $width  = get_option( "{$size}_size_w", false );
                    $height = get_option( "{$size}_size_h", false );
                }

                if ( $height && $width ) {
                    $html = str_replace( 'width="1" ', sprintf( 'width="%s" ', $width ), $html );
                    $html = str_replace( 'height="1" ', sprintf( 'height="%s" ', $height ), $html );
                } else {
                    $html = str_replace( 'width="1"  Sorry, this file couldn't be sanitized so for security reasons wasn't uploaded String Full Size' ),
                    'thumbnail' => __( 'Thumbnail' ),
                    'medium'    => __( 'Medium' ),
                    'large'     => __( 'Large' ),
                ) );

                $sizes = array();

                foreach ( $possible_sizes as $size => $label ) {
                    $default_height = 2000;
                    $default_width  = 2000;

                    if ( 'full' === $size && $dimensions ) {
                        $default_height = $dimensions['height'];
                        $default_width  = $dimensions['width'];
                    }

                    $sizes[ $size ] = array(
                        'height'      => get_option( "{$size}_size_w", $default_height ),
                        'width'       => get_option( "{$size}_size_h", $default_width ),
                        'url'         => $response['url'],
                        'orientation' => 'portrait',
                    );
                }

                $response['sizes'] = $sizes;
                $response['icon']  = $response['url'];
            }

            return $response;
        }

        /**
         * Filters the image src result.
         * Here we're gonna spoof the image size and set it to 100 width and height
         *
         * @param array|false $image Either array with src, width & height, icon src, or false.
         * @param int $attachment_id Image attachment ID.
         * @param string|array $size Size of image. Image size or array of width and height values
         *                                    (in that order). Default 'thumbnail'.
         * @param bool $icon Whether the image should be treated as an icon. Default false.
         *
         * @return array
         */
        public function one_pixel_fix( $image, $attachment_id, $size, $icon ) {
            if ( get_post_mime_type( $attachment_id ) == 'image/svg+xml' ) {
                $image['1'] = false;
                $image['2'] = false;
            }

            return $image;
        }

        /**
         * If the featured image is an SVG we wrap it in an SVG class so we can apply our CSS fix.
         *
         * @param string $content Admin post thumbnail HTML markup.
         * @param int $post_id Post ID.
         * @param int $thumbnail_id Thumbnail ID.
         *
         * @return string
         */
        public function featured_image_fix( $content, $post_id, $thumbnail_id ) {
            $mime = get_post_mime_type( $thumbnail_id );

            if ( 'image/svg+xml' === $mime ) {
                $content = sprintf( '<span class="svg">%s</span>', $content );
            }

            return $content;
        }

        /**
         * Load our custom CSS sheet.
         */
        function load_custom_admin_style() {
            wp_enqueue_style( 'safe-svg-css', plugins_url( 'assets/safe-svg.css', __FILE__ ), array() );
        }

        /**
         * Override the default height and width string on an SVG
         *
         * @param string $html HTML content for the image.
         * @param int $id Attachment ID.
         * @param string $alt Alternate text.
         * @param string $title Attachment title.
         * @param string $align Part of the class name for aligning the image.
         * @param string|array $size Size of image. Image size or array of width and height values (in that order).
         *                            Default 'medium'.
         *
         * @return mixed
         */
        function get_image_tag_override( $html, $id, $alt, $title, $align, $size ) {
            $mime = get_post_mime_type( $id );

            if ( 'image/svg+xml' === $mime ) {
                if ( is_array( $size ) ) {
                    $width  = $size[0];
                    $height = $size[1];
                } elseif ( 'full' == $size && $dimensions = $this->svg_dimensions( get_attached_file( $id ) ) ) {
                    $width  = $dimensions['width'];
                    $height = $dimensions['height'];
                } else {
                    $width  = get_option( "{$size}_size_w", false );
                    $height = get_option( "{$size}_size_h", false );
                }

                if ( $height && $width ) {
                    $html = str_replace( 'width="1" ', sprintf( 'width="%s" ', $width ), $html );
                    $html = str_replace( 'height="1" ', sprintf( 'height="%s" ', $height ), $html );
                } else {
                    $html = str_replace( 'width="1"  Sorry, this file couldn't be sanitized so for security reasons wasn't uploaded String 