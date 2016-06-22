# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :photo_home_project do
    cloudinary_transformation effect: "brightness:30",
      width: 500, height: 300, crop: :thumb
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30",
      width: 400, height: 400, crop: :thumb, gravity: :face
  end

  version :photo_home_project_index do
    cloudinary_transformation effect: "brightness:30",
      width: 500, height: 300, crop: :thumb
  end

  version :photo_home_project_show do
    cloudinary_transformation effect: "brightness:30",
      width: 500, height: 300, crop: :thumb
  end

  version :photo_project_show_caroussel do
    cloudinary_transformation effect: "brightness:30",
      width: 1500, height: 800, crop: :thumb
  end

end
