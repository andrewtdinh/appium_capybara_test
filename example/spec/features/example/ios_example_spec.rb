require_relative '../../spec_helper_test'
require './pages/home_page'

describe 'UICatalog smoke test' do
  it 'should detect the nav bar' do
    home_page = Pages::Home.new
    expect(home_page.navigation_bar.first).to be_truthy
  end
end