# app/uploaders/photo_uploader.rb
class UploadUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else
end
