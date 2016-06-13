# encoding: utf-8

class ProjectPictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
