class Contact

  include ActiveModel::Model

  attr_accessor :name, :email, :body, :phone, :nickname

  validates_presence_of   :name, :email, :phone, :body
  validates_format_of     :email, :with => /@/

  # Hidden input in the form. Check that it is blank as only bots will fill this in.

  validates               :nickname, absence: true

end
