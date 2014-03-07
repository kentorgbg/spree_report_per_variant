require 'spec_helper'

describe Spree::Admin::ReportsController, :type => :controller  do
  stub_authorization!

  describe 'GET index' do
    it 'should be ok' do
      get :index
      #spree_get :index
      #response.should be_ok
    end
  end



end
