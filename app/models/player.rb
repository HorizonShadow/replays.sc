class Player
	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :bnet_id, String

	belongs_to :replay_model
end