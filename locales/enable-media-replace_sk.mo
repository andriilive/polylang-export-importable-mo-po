��    9      �      �  6   �  �   �  C   �  6        P     W  *   p     �     �     �  <   �  7   �     1  I   ?  5   �  B   �  9     �   <     �  T     3   V     �     �  �   �  &   ]	  	   �	  U   �	  +  �	  �     7   �  �     x   �  w       �     �  A   �     �       8        K     W     s  �  �     ?     G     S  i   e     �  |   �  n   S  �   �     E  E   c     �  )   �  +   �  �    6   �  �   �  C   �  6   0     g     n  *   �     �     �     �  <   �  7        H  I   V  5   �  B   �  9     �   S       T     3   m     �     �  �   �  &   t  	   �  U   �  +  �  �   '   7   �   �   $!  x   �!  w  -"     �#     �#  A   �#     
$     $  8   )$     b$     n$     �$  �  �$     V&     ^&     j&  i   |&     �&  |   �&  n   j'  �   �'     \(  E   z(     �(  )   �(  +   �(  �  ()  %s f %s exceeds the maximum upload size for this site. <a href="https://shortpixel.com/wp/af/VKG6LYN28044" target="_blank">ShortPixel</a> is an image optimization plugin and if you have it activated, upon replacing an image in Enable Media Replace, the image will be also automatically optimized. ALLOW ShortPixel %s SPECIALISTS TO %s FIND THE %s SOLUTION FOR YOU. ARE YOU %s CONCERNED WITH %s YOUR %s %s SITE SPEED? %s Cancel Choose Replacement Media Choose a file to upload from your computer Custom Date Date Options Dismiss EMR could not establish a proper destination for replacement Enable Media Replace is now compatible with ShortPixel! FIND OUT MORE Fail Safe :: Source Location returned empty string. Not replacing content Fail Safe :: Source Location seems to be a directory. File Upload seems to have failed. No files were returned by system File type does not meet security guidelines. Try another. Get more Google love by compressing your site's images! Check out how much ShortPixel can save your site and get +50% credits when signing up as an Enable Media Replace user! Forever! Hide Details In specificied directory there is already a file with the same name. Can\'t replace. Invalid Custom Date. Please custom date values (%s) Just replace the file Keep the date %s(%s)%s M j, Y @ H:i' ) , strtotime( $post->post_modified ) );
    	?>
    	<div class="misc-pub-section curtime">
    		<span id="timestamp"><?php echo esc_html__( 'Revised Maximum file size: <strong>%s</strong> More info NOTE: You are about to replace the media file "%s". There is no undo. Think about it! Note: If you check this option, the name and type of the file you are about to upload will replace the old file. All links pointing to the current file (%s) will be updated to point to the new file name. (If any other websites link to the file directly, those links will no longer work. Be careful.) Note: This option requires you to upload a file of the same type (%s) as the one you are replacing. The name of the attachment will stay the same (%s) no matter what the file you upload is called. Optimize your images with ShortPixel, get +50% credits! Original') . "</span></div>";
      }

    }


    foreach($meta['sizes'] as $size => $data)
    {
      $display_size = ucfirst(str_replace("_ Please note that if you upload a new image, only embeds/links of the original size image will be replaced in your posts. Put new Upload in Updated Folder: '); ?></label>
            <input type="text" name="location_dir" value="<?php echo $subdir ?>" />
          </div>
        <?php endif; ?>
      </div>

    </section>
  </div>
  <section class='form_controls wrapper'>
		<input id="submit" type="submit" class="button button-primary" disabled="disabled" value="<?php echo esc_attr__("Upload Replace Media Replace Media Upload Replace and Search feature is not compatible with Beaver Builder. Replace media Replace the date Replace the file, use new file name and update all links Replaced By Replaced Thumbnails Preview Replacement Options Replacement file is not the same filetype. This might cause unexpected issues')); ?></p></div>

    <div class='form-warning mimetype'><p><?php printf(__('Replacement file type doesn\'t seem to be allowed by WordPress. This might cause unexpected issues')); ?></p></div>

    <div class='emr_drop_area'>
      <div class='drop-wrapper'>

  		  <p><input type="file" name="userfile" id="userfile" /></p>
        <h1><?php _e('Drop File Here Revised See Details Set a Custom Date Specificed new directory does not exist. Path must be a relative path from the upload directory and exist String Target File could not be set. The source file might not be there. In case of search and replace, a filter might prevent this The uploaded file could not be moved to %1$s. This is most likely an issue with permissions, or upload failed. There was an issue with updating your image URLS: Search and replace have different amount of values. Aborting updating thumbnails Thumbnails were not generated To replace the current file, click the link and upload a replacement. Upload a new file When replacing the media, do you want to: You do not have permission to upload files. [Data]');
        }
        if (is_array($data) && count($data) > 0)
        {
          $dataType = $this->getDataType($data);
          if ($dataType == 1)  // singular
          {
              $this->data[] = print_r($data, true);
          }
          if ($dataType == 2) //array
          {
            foreach($data as $index => $item)
            {
              if (is_object($item) || is_array($item))
              {
                $this->data[] = print_r($item, true);
              }
            }
          }
        } // if
        elseif (! is_array($data)) // this leaves out empty default arrays
        {
           $this->data[] = print_r($data, true);
        }
    }

    public function getData()
    {
      return array('time' => $this->time, 'level' => $this->level, 'message' => $this->message, 'data' => $this->data, 'caller' => $this->caller);
    }

    /** Test Data Array for possible values
    *
    * Data can be a collection of several debug vars, a single var, or just an normal array. Test if array has single types,
    * which is a sign the array is not a collection.
    */
    protected function getDataType($data)
    {
        $single_type = array('integer %s f %s exceeds the maximum upload size for this site. <a href="https://shortpixel.com/wp/af/VKG6LYN28044" target="_blank">ShortPixel</a> is an image optimization plugin and if you have it activated, upon replacing an image in Enable Media Replace, the image will be also automatically optimized. ALLOW ShortPixel %s SPECIALISTS TO %s FIND THE %s SOLUTION FOR YOU. ARE YOU %s CONCERNED WITH %s YOUR %s %s SITE SPEED? %s Cancel Choose Replacement Media Choose a file to upload from your computer Custom Date Date Options Dismiss EMR could not establish a proper destination for replacement Enable Media Replace is now compatible with ShortPixel! FIND OUT MORE Fail Safe :: Source Location returned empty string. Not replacing content Fail Safe :: Source Location seems to be a directory. File Upload seems to have failed. No files were returned by system File type does not meet security guidelines. Try another. Get more Google love by compressing your site's images! Check out how much ShortPixel can save your site and get +50% credits when signing up as an Enable Media Replace user! Forever! Hide Details In specificied directory there is already a file with the same name. Can\'t replace. Invalid Custom Date. Please custom date values (%s) Just replace the file Keep the date %s(%s)%s M j, Y @ H:i' ) , strtotime( $post->post_modified ) );
    	?>
    	<div class="misc-pub-section curtime">
    		<span id="timestamp"><?php echo esc_html__( 'Revised Maximum file size: <strong>%s</strong> More info NOTE: You are about to replace the media file "%s". There is no undo. Think about it! Note: If you check this option, the name and type of the file you are about to upload will replace the old file. All links pointing to the current file (%s) will be updated to point to the new file name. (If any other websites link to the file directly, those links will no longer work. Be careful.) Note: This option requires you to upload a file of the same type (%s) as the one you are replacing. The name of the attachment will stay the same (%s) no matter what the file you upload is called. Optimize your images with ShortPixel, get +50% credits! Original') . "</span></div>";
      }

    }


    foreach($meta['sizes'] as $size => $data)
    {
      $display_size = ucfirst(str_replace("_ Please note that if you upload a new image, only embeds/links of the original size image will be replaced in your posts. Put new Upload in Updated Folder: '); ?></label>
            <input type="text" name="location_dir" value="<?php echo $subdir ?>" />
          </div>
        <?php endif; ?>
      </div>

    </section>
  </div>
  <section class='form_controls wrapper'>
		<input id="submit" type="submit" class="button button-primary" disabled="disabled" value="<?php echo esc_attr__("Upload Replace Media Replace Media Upload Replace and Search feature is not compatible with Beaver Builder. Replace media Replace the date Replace the file, use new file name and update all links Replaced By Replaced Thumbnails Preview Replacement Options Replacement file is not the same filetype. This might cause unexpected issues')); ?></p></div>

    <div class='form-warning mimetype'><p><?php printf(__('Replacement file type doesn\'t seem to be allowed by WordPress. This might cause unexpected issues')); ?></p></div>

    <div class='emr_drop_area'>
      <div class='drop-wrapper'>

  		  <p><input type="file" name="userfile" id="userfile" /></p>
        <h1><?php _e('Drop File Here Revised See Details Set a Custom Date Specificed new directory does not exist. Path must be a relative path from the upload directory and exist String Target File could not be set. The source file might not be there. In case of search and replace, a filter might prevent this The uploaded file could not be moved to %1$s. This is most likely an issue with permissions, or upload failed. There was an issue with updating your image URLS: Search and replace have different amount of values. Aborting updating thumbnails Thumbnails were not generated To replace the current file, click the link and upload a replacement. Upload a new file When replacing the media, do you want to: You do not have permission to upload files. [Data]');
        }
        if (is_array($data) && count($data) > 0)
        {
          $dataType = $this->getDataType($data);
          if ($dataType == 1)  // singular
          {
              $this->data[] = print_r($data, true);
          }
          if ($dataType == 2) //array
          {
            foreach($data as $index => $item)
            {
              if (is_object($item) || is_array($item))
              {
                $this->data[] = print_r($item, true);
              }
            }
          }
        } // if
        elseif (! is_array($data)) // this leaves out empty default arrays
        {
           $this->data[] = print_r($data, true);
        }
    }

    public function getData()
    {
      return array('time' => $this->time, 'level' => $this->level, 'message' => $this->message, 'data' => $this->data, 'caller' => $this->caller);
    }

    /** Test Data Array for possible values
    *
    * Data can be a collection of several debug vars, a single var, or just an normal array. Test if array has single types,
    * which is a sign the array is not a collection.
    */
    protected function getDataType($data)
    {
        $single_type = array('integer 