require_relative "base.rb"

module Site
	module Routes
		class Index < Base
			get '/' do
				render_page :index
			end

			post '/' do
				file = params[:file][:tempfile]
				filename = params[:file][:filename]
				replay = Tassadar::SC2::Replay.new(file) rescue redirect('/?res=invalidfile')
				replay_model = ReplayModel.new(name: filename)
				replay.players.each { |p| replay_model.players << Player.create(name: p.name, bnet_id: p.id)}
				replay_model.save
				FileUtils.cp(file.path, "./private/replays/#{replay_model.id}.SC2Replay")
				redirect "/#{replay_model.id}"
			end

			get '/:id' do
				@replay = ReplayModel.get(params[:id])
				@players = @replay.players
				render_page :replay
			end

			get '/:id/download' do
				replay = ReplayModel.get(params[:id])
				send_file "./private/replays/#{params[:id]}.SC2Replay", filename: replay.name, type: 'Application/octet-stream'
			end
		end
	end
end