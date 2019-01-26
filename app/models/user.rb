class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end

  #def get_facebook_messages
  #  begin
  #    contact_fb
  #    @messages = retrieves_messages
  #  rescue => e
  #    flash[:error] = "Errpr ocurred contacting Facebook: #{e}"
  #  end
  #end
end
