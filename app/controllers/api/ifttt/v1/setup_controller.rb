class Api::Ifttt::V1::SetupController < ActionController
	before_action :return_errors_unless_valid_channel_key

  def setup
    data = {
      samples: {
        triggers: {
          created_new_talk: { }
        }
      }
    }

  	render json: data
  end

  private
    def return_errors_unless_valid_channel_key
      unless request.headers["IFTTT__KEY"] == IFTTT_CHANNEL_KEY
        return render plain: { errors: [ { message: "401" } ] }.to_json, status: 401
      end
    end
end
