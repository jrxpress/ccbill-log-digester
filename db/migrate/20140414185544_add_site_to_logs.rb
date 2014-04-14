class AddSiteToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :site, :string
  end
end
