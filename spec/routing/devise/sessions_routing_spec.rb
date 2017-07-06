require 'rails_helper'

RSpec.describe 'Devise sessions routing', type: :routing do
  xit { expect(get: '/users/sign_in').to_not be_routable }
end
