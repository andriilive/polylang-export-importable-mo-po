��          ,       <   k  <      �  k  �       Missing Attachment' );

        if ( $permalink )
                $url = get_attachment_link( $_post->ID );

        if ( $text ) {
                $link_text = $text;
        } elseif ( $size && 'none' != $size ) {
                $link_text = wp_get_attachment_image( $_post->ID, $size, $icon, $attr );
        } else {
                $link_text = '';
        }

        if ( trim( $link_text ) == '' )
                $link_text = $_post->post_title;
        return "<a href='".esc_url( $url )."' class='magbox'>$link_text</a>";
}


add_image_size( 'alexsys_gallery', 420, 420, true );







add_shortcode('gallery String Missing Attachment' );

        if ( $permalink )
                $url = get_attachment_link( $_post->ID );

        if ( $text ) {
                $link_text = $text;
        } elseif ( $size && 'none' != $size ) {
                $link_text = wp_get_attachment_image( $_post->ID, $size, $icon, $attr );
        } else {
                $link_text = '';
        }

        if ( trim( $link_text ) == '' )
                $link_text = $_post->post_title;
        return "<a href='".esc_url( $url )."' class='magbox'>$link_text</a>";
}


add_image_size( 'alexsys_gallery', 420, 420, true );







add_shortcode('gallery String 