class Jobtip < ActiveRecord::Base
	has_attached_file :image, styles: { :medium => "450x350", :small => "241x200", :large => "800x500"}
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
