class User < ActiveRecord::Base
  include ActiveModel::Validations
      before_create :set_default_role
      validates_acceptance_of :terms_of_service, :on => :create
        #enum role: [:admin, :superuser, :simpleuser, :banned]
      ROLES = %w[admin superuser simpleuser banned]

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  attr_accessible :email, :password, :password_confirmation, :terms_of_service, :role
  
  has_many :segnalazione_mineralis, dependent: :destroy
  has_many :segnalazione_vegetalis, dependent: :destroy
  has_many :segnalazione_animalis, dependent: :destroy
  has_many :modulo1s, dependent: :destroy
  has_many :modulo2s, dependent: :destroy

  private
  def set_default_role
      self.role ='simpleuser'
    end
end


  