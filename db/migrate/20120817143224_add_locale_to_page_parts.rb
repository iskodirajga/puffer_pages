class AddLocaleToPageParts < ActiveRecord::Migration
  def self.up
    add_column :page_parts, :locale, :string
    Page.update_all :locale => I18.default_locale
  end

  def self.down
    remove_column :page_parts, :locale
  end
end
