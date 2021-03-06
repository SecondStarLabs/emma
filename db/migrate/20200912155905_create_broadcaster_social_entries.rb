class CreateBroadcasterSocialEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :broadcaster_social_entries do |t|
      t.string :title
      t.belongs_to :broadcaster_theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
