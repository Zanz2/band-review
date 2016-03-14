class Band < ActiveRecord::Base
    searchkick
    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }
    audited
    belongs_to :user
    has_many :reviews
    
    has_attached_file :image, styles: { medium: "450x1100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
