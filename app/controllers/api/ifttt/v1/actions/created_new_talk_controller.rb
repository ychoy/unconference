class Api::Ifttt::V1::Actions::CreatedNewTalkController < AppicationController
  before_action :return_errors_unless_valid_channel_key
  before_action :return_errors_unless_valid_action_fields, only: :created_new_talk

  def created_new_talk
    data = [ Talk.create.to_limited_json ]
    render plain: { data: data }.to_json
  end

  private
    def return_errors_unless_valid_channel_key
      unless request.headers["IFTTT_KEY"] == IFTTT_CHANNEL_KEY
        return render plain: { errors: [ { message: "401" } ] }.to_json, status: 401
      end
    end

    def return_errors_unless_valid_action_fields
      if params[:actionFields] && params[:actionFields][:invalid] == "true"
        return render plain: { errors: [ { status: "SKIP", message: "400" } ] }.to_json, status: 400
      end
    end
end

