class AddEducationInternetPriceAndActiveToServicePartner < ActiveRecord::Migration
  def change
    add_column :service_partners, :internet_price, :decimal
    add_column :service_partners, :active, :boolean
  end
end
