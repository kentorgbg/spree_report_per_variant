require 'spec_helper'

describe Spree::Admin::ReportsController, :type => :controller  do
  stub_authorization!

  describe 'GET index' do
    it 'should be ok' do
      spree_get :index
      response.should be_ok
    end
  end

  describe 'GET my_new_report' do
    it 'should be ok' do
      spree_get :my_new_report
      response.should be_ok
    end
  end


end
