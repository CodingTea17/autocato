RSpec::Matchers.module_eval do
  alias_matcher :having_content, :have_content
  alias_matcher :include_an_element, :include
end
