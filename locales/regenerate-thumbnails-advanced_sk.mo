��    `              F     m   c  7   �  )   	  D   3     x  b   �     �     �       0        E     S  
   a  �   l     �      	     3	     <	     Q	  ~   n	     �	     �	     
     
  E   #
  �   i
     +     2  M   ?     �     �     �     �     �     �               &     2     ;  
   G  	   R     \     a     u  (   x  @   �  �   �  7   �     
          &  
   /  	   :  	   D     N     \     k     }     �     �     �     �     �       
        #     6     L  5   k     �     �     �     �     �       	             -     F     M  
   Y  .   d     �     �     �     �     �     �  :   �  z   2     �     �     �  �  �  F     m   �  7   4  )   l  D   �     �  b   �     U     b     s  0   w     �     �  
   �  �   �     ^      u     �     �     �  ~   �     P     ]     r     x  E   �  �   �     �     �  M   �     �                     9     I     e     }     �     �     �  
   �  	   �     �     �     �  (   �  @     �   E  7   5     m     {     �  
   �  	   �  	   �     �     �     �     �                "     4     T     o  
   {     �     �     �  5   �                 4      O      ^      k   	   x      �      �      �      �   
   �   .   �      �      �      !     *!     7!     >!  :   Z!  z   �!     "     &"     ,"  �  0"  %s Activate ShortPixel %s to optimize your newly generated thumbnails. %s Don\'t redo existing %s  - prevent regenerating images that already have these sizes as a thumbnail file.  <b>%s</b> failed on metadata. Possible issue with image <b>%s</b> is missing or not an image file <b>%s</b> skipped. MimeType is an image, but reports non-displayable A fatal error occured! ARE YOU CONCERNED WITH YOUR SITE SPEED? Allow ShortPixel specialists to find the solution for you. Add New Size Advanced options All Are you sure you want to delete this image size? Center bottom Center center Center top Clean old metadata not defined in system sizes. Use after removing plugins / themes with old definitions. Will not remove thumbnails from disk Clean unknown metadata Click Resume Process to continue Cropping Default JPEG Quality Delete Unselected Thumbnails Delete thumbnails and metadata not selected in the settings. Will delete thumbnails from disk - be sure they are not in use.   Deselect All Don\'t redo existing Done! Find Out More For removing images that are gone on disk, but still in media library Get more Google love by compressing your site's images! Check out how much ShortPixel can save your site and get +50% credits when signing up as an Regenerate Thumbnails Advanced user! Forever! Height Hide Details If the main image does not exist, removes this image, thumbnails and metadata Image Size Name Image Size name Image Sizes Image thumbnails regenerated Incorrect nonce Interrupted process resumed Last Regenerated Image: Left bottom Left center Left top Max. Height Max. Width More info Name New Process started No No Attachment ID found, not regenerating No images found for this period and/or settings or none uploaded Not selected thumbnails will be removed from your site. Check your settings if this is intentional.'); ?></p>

      <p class='small'><?php _e('Regenerate Thumbnails Advanced will not prevent new media uploads from generating removed sizes Optimize your images with ShortPixel, get +50% credits! Past 3 Months Past 6 Months Past Day Past Month Past Week Past Year Pause Process Please wait... Prepared %s items Preparing Images and Thumbnails Preparing failed Process finished Process is paused Process is pausing, please wait Process stopped on request Public Name Regenerate Regenerate Options Regenerate Thumbnails Regenerate Thumbnails Advanced Regenerate Thumbnails Advanced is done with your task Regenerate period: Regenerate these thumbnails: Remove non-existent images Resume Process Right bottom Right center Right top Save Settings Save your settings first Saving See Details Select All Select the thumbnails you want to regenerate.  Settings Site error, Invalid Nonce Starting Process Stop Process String This can take a few seconds This will stop the regeneration process. You want to stop? Thumbnails successfully regenerated. <strong>Go to %s ShortPixel Bulk page %s to optimize the updated thumbnails.</strong> Unknown Error occured Width Yes [Data]');
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
        $single_type = array('integer %s Activate ShortPixel %s to optimize your newly generated thumbnails. %s Don\'t redo existing %s  - prevent regenerating images that already have these sizes as a thumbnail file.  <b>%s</b> failed on metadata. Possible issue with image <b>%s</b> is missing or not an image file <b>%s</b> skipped. MimeType is an image, but reports non-displayable A fatal error occured! ARE YOU CONCERNED WITH YOUR SITE SPEED? Allow ShortPixel specialists to find the solution for you. Add New Size Advanced options All Are you sure you want to delete this image size? Center bottom Center center Center top Clean old metadata not defined in system sizes. Use after removing plugins / themes with old definitions. Will not remove thumbnails from disk Clean unknown metadata Click Resume Process to continue Cropping Default JPEG Quality Delete Unselected Thumbnails Delete thumbnails and metadata not selected in the settings. Will delete thumbnails from disk - be sure they are not in use.   Deselect All Don\'t redo existing Done! Find Out More For removing images that are gone on disk, but still in media library Get more Google love by compressing your site's images! Check out how much ShortPixel can save your site and get +50% credits when signing up as an Regenerate Thumbnails Advanced user! Forever! Height Hide Details If the main image does not exist, removes this image, thumbnails and metadata Image Size Name Image Size name Image Sizes Image thumbnails regenerated Incorrect nonce Interrupted process resumed Last Regenerated Image: Left bottom Left center Left top Max. Height Max. Width More info Name New Process started No No Attachment ID found, not regenerating No images found for this period and/or settings or none uploaded Not selected thumbnails will be removed from your site. Check your settings if this is intentional.'); ?></p>

      <p class='small'><?php _e('Regenerate Thumbnails Advanced will not prevent new media uploads from generating removed sizes Optimize your images with ShortPixel, get +50% credits! Past 3 Months Past 6 Months Past Day Past Month Past Week Past Year Pause Process Please wait... Prepared %s items Preparing Images and Thumbnails Preparing failed Process finished Process is paused Process is pausing, please wait Process stopped on request Public Name Regenerate Regenerate Options Regenerate Thumbnails Regenerate Thumbnails Advanced Regenerate Thumbnails Advanced is done with your task Regenerate period: Regenerate these thumbnails: Remove non-existent images Resume Process Right bottom Right center Right top Save Settings Save your settings first Saving See Details Select All Select the thumbnails you want to regenerate.  Settings Site error, Invalid Nonce Starting Process Stop Process String This can take a few seconds This will stop the regeneration process. You want to stop? Thumbnails successfully regenerated. <strong>Go to %s ShortPixel Bulk page %s to optimize the updated thumbnails.</strong> Unknown Error occured Width Yes [Data]');
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