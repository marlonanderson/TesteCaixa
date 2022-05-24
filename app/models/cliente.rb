class Cliente < ActiveRecord::Base
  # Inclui módulos de projeto padrão. Outros disponíveis são:
  # :confirmable, :lockable, :timeoutable e :omniauthable
  devise :database_authenticatable,
				 :registerable,
                 :recoverable,
				 :rememberable,
				 :trackable,
				 :validatable
	has_many :contas
	validates :nome, 
				presence: true, 
				length: {minimum: 10}
end
