class Tweet < ActiveRecord::Base
  default_scope { order("published_at desc") }

  mount_uploader :image, ImageUploader

  def self.published
    where(published: true).where("published_at is not null").recent_first
  end

  def self.recent_first
    order("published_at desc")
  end

end
