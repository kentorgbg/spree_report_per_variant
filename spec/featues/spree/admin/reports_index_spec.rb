require "spec_helper"


feature 'List available reports', js: true do
  stub_authorization!

  context 'elements' do
    scenario 'has configuration tab' do
      visit spree.admin_reports_path
     
      # Title
      expect(page).to have_text(Spree.t(:my_new_report))

      # Description
      expect(page).to have_text(Spree.t(:my_new_report_description))
    end
  end

end
