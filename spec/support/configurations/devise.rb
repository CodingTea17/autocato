module DeviseControllerMacros
  def attributes_with_fks_for(*args)
    FactoryGirl.build_stubbed(*args).attributes.delete_if do |k, _v|
      %w[id type created_at updated_at].member?(k)
    end
  end

  def log_in(user, *other_args)
    sign_in user, *other_args
    @current_user = user
  end

  def create_and_login_user(*args)
    log_in create(:user, *args)
  end

  attr_reader :current_user
end

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include DeviseControllerMacros, type: :controller
end
