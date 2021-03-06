# == Schema Information
#
# Table name: emails_list
#
#  id         :integer          not null, primary key
#  email      :string
#  ip         :string
#  state      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EmailsList < ActiveRecord::Base
	validates_presence_of :email, message: "Woops! Parece que olvidaste color el correo"
	validates_uniqueness_of :email, message: "Este correo ya fue registrado"
	validates_format_of :email, with: Devise::email_regexp, message: "No enviaste un correo"
end
