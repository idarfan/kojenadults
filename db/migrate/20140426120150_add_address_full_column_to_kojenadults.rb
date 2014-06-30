class AddAddressFullColumnToKojenadults < ActiveRecord::Migration
  def change          
          add_column :kojenadults, :address_full, :string
  end
end
