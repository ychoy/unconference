class Api::Ifttt::V1::Triggers:NewTalkController < ApplicationController
#  def index
#    render json: { data: events.map {|e| to_json(e) } }
#  end

#	def talks
#    Talk.where('created_at >= ?', talk.created_at).where(
#      kind:  'New Talk Was Created',
#      unconference_id: unconference_id,
#    ).order('created_at DESC').limit(limit)
#  end

#  def to_json(talk)
#    {
#      created_at: talk.created_at.to_time,
#      meta: {
#        id: talk.id,
#        timestamp: talk.created_at.to_i
#      }
#    }
#  end

  def new_talks_created

		return {
  		"data": [
    		{
      	  "title": "Street Graphics",
      	  "speaker_name": "Banksy",
      	  "posted_at": "2013-11-04T09:23:00-07:00",
      	  "meta": {
        	  "id": "14b9-1fd2-acaa-5df5",
        	  "timestamp": 1383597267
      	  }
    		},
 	 		]
		}
	end
end
