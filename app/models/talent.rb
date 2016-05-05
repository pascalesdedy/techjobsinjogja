class Talent < ActiveRecord::Base
	has_attached_file :photo, styles: { :medium => "318x180", :small => "241x200" }
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
