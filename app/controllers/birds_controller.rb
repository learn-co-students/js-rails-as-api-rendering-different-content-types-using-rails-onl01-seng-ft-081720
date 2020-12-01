class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    # rendering plain text with a controller action
    # render plain: "Hello #{@birds[3].name}, Hello #{@birds[2].name} - #{@birds[2].species}"
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # we can pass string like above or hashes arrays and other datatypes ie below
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As',  'well', 'as', 'arrays']
    # or just write
    # render json: @birds

    # also could see more detailed nesting in the render json:
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json

    # we are rendering to erb, don't really need instance variables any more just add
    render json: birds
  end
end
