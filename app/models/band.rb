class Band < ActiveRecord::Base
    searchkick
    belongs_to :user
    has_many :reviews
    audited
    has_attached_file :image, styles: { medium: "450x1100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
