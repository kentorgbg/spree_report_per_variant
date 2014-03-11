require 'spec_helper'

describe Spree::Admin::ReportsController, :type => :controller  do
  stub_authorization!

  describe 'GET index' do
    it 'should be ok' do
      spree_get :index
      response.should be_ok
    end
  end

  describe 'GET report_per_variant page' do
    it 'should be ok' do
      spree_get :report_per_variant
      response.should be_ok
    end
  end


end
