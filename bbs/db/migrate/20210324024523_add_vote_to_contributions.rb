class AddVoteToContributions < ActiveRecord::Migration[6.1]
  def change
    add_column :contributions, :vote, :string, default: nil;
  end
end
