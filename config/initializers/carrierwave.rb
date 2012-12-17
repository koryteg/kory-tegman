CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id ENV["AWS_ACCESS_KEY_ID"],
    :aws_secret_access_key ENV["AWS_SECRET_ACCESS_KEY"],
  }
  config.fog_directory  = 'korytegman'                     # required
  config.fog_host       = 'https://korytegman.s3.amazonaws.com'            # optional, defaults to nil
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end