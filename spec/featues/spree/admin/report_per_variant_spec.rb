require "spec_helper"


feature 'Report per variant', js: true do
  stub_authorization!

  scenario 'zero orders' do
    visit spree.report_per_variant_admin_reports_path

    # Title
    expect(page).to have_text(Spree.t(:report_per_variant))

    # The should not be any variants in the report
    page.should_not have_selector("table.admin-report tbody tr")

    # 5 table ehaders
    page.should have_selector("table.admin-report thead tr th", :count => 5)
  end


  scenario "one order with 2 variants with two unique products" do
    create(:order) 
    order = create(:completed_order_with_totals, :line_items_count => 2)

    visit spree.report_per_variant_admin_reports_path

    # Should be two result rows in admin-report table from the completed order
    page.should have_selector("table.admin-report tbody tr", :count => 2) 

    # Verify that first row is correct
    line_item = order.line_items.first

    columns = page.all('table.admin-report tbody td').map{|td| td.text}

    columns[0].should == line_item.variant.product_id.to_s
    columns[1].should == line_item.variant.product.name 
    columns[2].should == line_item.variant.id.to_s 
    columns[3].should == line_item.variant.sku 
    columns[4].should == "1" 

  end

  scenario "Two complete order with the same variant plus one other product" do

    #s = create(:stock_location_with_items)
    
    p1 = create(:product, :name => "Product 1")
    p2 = create(:product, :name => "Product 2")
    p3 = create(:product, :name => "Product 3")

    v1_p1 = create(:base_variant, :product => p1, :price => 100)
    v2_p1 = create(:base_variant, :product => p1, :price => 150)
    
    v1_p2 = create(:variant, :product => p2, :price => 10)


    line_item1 = create(:line_item, :variant => v1_p1, :quantity => 2)
    line_item2 = create(:line_item, :variant => v2_p1, :quantity => 1)
    
    line_item3 = create(:line_item, :variant => v1_p2, :quantity => 10)

    #order1 = create(:order_with_line_items, :line_items => [line_item1, line_item2], :state => "complete")
    #order2 = create(:order, :line_items => [line_item3], :state => "complete")
    
    # Funkar i testkörning
    #o1 = create(:order, :line_items => [line_item1])
    #o2 = create(:order, :line_items => [line_item2])
    #o3 = create(:order, :line_items => [line_item3])

    #o4 = create(:order, :line_items => [line_item1, line_item2])
    #o5 = create(:order, :line_items => [line_item2, line_item3])
    #o6 = create(:order, :line_items => [line_item3, line_item1])
    

    #o4 = create(:order_with_line_items, :line_items => [line_item1, line_item2], :state => "cart")


    #order1
    #require 'pry'; binding.pry
    
  end

end
