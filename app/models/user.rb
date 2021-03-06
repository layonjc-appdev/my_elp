class User < ApplicationRecord
  # Direct associations

  has_many   :reminders,
             :dependent => :destroy

  has_many   :restaurants,
             :dependent => :destroy

  has_many   :pics,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
