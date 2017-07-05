require 'rails_helper'

RSpec.describe 'Devise registrations routing', type: :routing do
  # TODO: this spec can be used once we are ready to also remove the sign in
  # route
  xit { expect(get: '/users/sign_up').to_not be_routable }
end
