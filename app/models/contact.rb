class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :email, uniqueness: true 
  
  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end 

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
   
end
