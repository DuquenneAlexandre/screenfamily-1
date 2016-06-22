# encoding: utf-8

class UserPictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave


end
