CarrierWave.configure do |config|

	  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIX372C7EW7VWASDA',			 # required
    :aws_secret_access_key  => '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',          # required
    :region                 => 'us-east-1',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'fake.twitter'                      # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}

end 