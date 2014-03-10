require "spec_helper"


feature 'List available reports', js: true do
  stub_authorization!

  context 'elements' do
    scenario 'has configuration tab' do
      visit spree.admin_reports_path
      #click_link 'Configuration'
      #expect(page).to have_text 'SOCIAL AUTHENTICATION METHODS'
    end
  end

end
