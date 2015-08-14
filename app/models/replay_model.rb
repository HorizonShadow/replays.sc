class ReplayModel
	include DataMapper::Resource

	property :id, Serial
	property :name, String

	has n, :players
end