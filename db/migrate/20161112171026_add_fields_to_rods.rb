class AddFieldsToRods < ActiveRecord::Migration
  def change
    add_column :rods, :color, :string
    add_column :rods, :retail, :decimal
    add_column :rods, :finish_technique, :string
    add_column :rods, :factory, :string
    add_column :rods, :fob, :decimal
    add_column :rods, :landed, :decimal
    add_column :rods, :amg_sell, :decimal
    add_column :rods, :total_fob, :decimal
    add_column :rods, :total_landed, :decimal
    add_column :rods, :total_amg_sell, :decimal
    add_column :rods, :total_retail_sales, :decimal
    add_column :rods, :amg_margin, :decimal
    add_column :rods, :retail_margin, :decimal
    add_column :rods, :first_shipment_quantity, :integer
    add_column :rods, :total_wave_2_quantity, :integer
    add_column :rods, :forty_hq_container_max, :integer
    add_column :rods, :brand, :string
    add_column :rods, :status, :string
    add_column :rods, :port, :string
    add_column :rods, :its_inspection_date, :date
    add_column :rods, :etd, :date
    add_column :rods, :eta_port, :date
    add_column :rods, :eta_warehouse, :date
    add_column :rods, :po, :string
    add_column :rods, :cartons_shipping, :integer
    add_column :rods, :quantity_shipping, :integer


  end
end
