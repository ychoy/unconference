class Api:Ifttt::V1::StatusController < ActionController::Base
  before_action :return_errors_unless_valid_channel_key

  def status
    head :ok
  end

  private
    def return_errors_unless_valid_channel_key
      unless request.headers["IFTTT_KEY"] == IFTTT_CHANNEL_KEY
        return render plain: { errors: [ { message: "401" } ] }.to_json, status: 401
      end
    end

end
