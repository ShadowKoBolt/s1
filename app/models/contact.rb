class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :telephone, :message

  validates :name, :message, presence: true
  validates :telephone, presence: true, unless: -> (contact) { contact.email.present? }
  validates :email, presence: true, unless: -> (contact) { contact.telephone.present? }
end
