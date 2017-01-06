require 'rails_helper'

RSpec.describe EmailsList, type: :model do
  it{ should validate_presence_of(:email).with_message("Woops! Parece que olvidaste color el correo") }
end
