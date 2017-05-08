class Api::Ifttt::V1::Triggers::NewTalkCreatedController < ApplicationController
	before_action :return_errors_unless_valid_channel_key

  def new_talk_created
    data = Talk.all.sort_by(&:created_at).reverse.map(&:to_json).first(params[:limit] || 50)
    render plain: { data: data }.to_json
  end

  private
    def return_errors_unless_valid_channel_key
      unless request.headers["IFTTT_KEY"] == IFTTT_CHANNEL_KEY
        return render plain: { errors: [ { message: "401" } ] }.to_json, status: 401
      end
    end

end
