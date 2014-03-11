require "spec_helper"


feature 'List available reports', js: true do
  stub_authorization!

  context 'elements' do
    scenario 'has configuration tab' do
      visit spree.admin_reports_path
     
      # Title
      expect(page).to have_text(Spree.t(:report_per_variant))

      # Description
      expect(page).to have_text(Spree.t(:report_per_variant_description))
    end
  end

end
