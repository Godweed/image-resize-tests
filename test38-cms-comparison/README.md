# Settings used for this simulation

* CodeIgniter: `mogrify -path OUTPUT_PATH -quality 90 -resize OUTPUT_WIDTH INPUT_PATH`
* Craft CMS: `mogrify -path OUTPUT_PATH -filter Lanczos -resize OUTPUT_WIDTH INPUT_PATH`
* Drupal: `mogrify -path OUTPUT_PATH -resize OUTPUT_WIDTH INPUT_PATH`
* Perch: `mogrify -path OUTPUT_PATH -thumbnail OUTPUT_WIDTH -unsharp 0x0.4+2+0.05 -interlace plane INPUT_PATH`
* TYPO3.CMS: `mogrify -path OUTPUT_PATH -geometry OUTPUT_WIDTH +profile -quality 70 -type TrueColor -colorspace RGB INPUT_PATH`
* WordPress: `mogrify -path OUTPUT_PATH -scale OUTPUT_WIDTH INPUT_PATH`

# Mean file size results

* CodeIgniter: 340,461.33 bytes
* Craft CMS: 425,258.90 bytes
* Drupal: 397,587.52 bytes
* Perch: 416,789.61 bytes
* TYPO3.CMS: 359,111.58 bytes
* WordPress: 385,795.24 bytes
