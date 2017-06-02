class PhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  include CarrierWave::TinyPNG
  process convert: 'png'
  process :tinypng

  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :quality => 85

  version :thumb do
    process resize_to_fill: [370, 215]
  end

  def quality(percentage)
    manipulate! do |img|
      img.quality(percentage.to_s)
      img = yield(img) if block_given?
      img
    end
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
