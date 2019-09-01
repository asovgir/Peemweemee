json.extract! bet, :id, :is_complete, :category_id, :bet_name, :bet_description, :user_id, :date_completed, :betcoin_wager, :ticket_wager, :created_at, :updated_at
json.url bet_url(bet, format: :json)
