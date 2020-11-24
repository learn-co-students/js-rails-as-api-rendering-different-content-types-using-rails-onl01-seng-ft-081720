class BirdsController < ApplicationController
  def index
    # Below standard json renders with a local variable (birds) NOT ERB's instance variable (@birds)
    # @birds = Bird.all
    birds = Bird.all

    # render 'birds/index.html.erb'

    # render plain: "Hello #{@birds[3].name}"

    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'

    # render json: { message: 'Hashes of data will get converted to JSON' }

    # render json: ['As','well','as','arrays']

    # Below renders an array of bird objects
    # render json: @birds

    # Below renders an object with 2 keys (birds & messages) and each points to an array
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }

    # Below uses to_json method to explicitly convert
    # render json: { birds: @birds, messages: ['Hey Birds', 'Got it! Birds'] }.to_json
    
    # Below standard json renders with a local variable (birds) NOT an instance variable (@birds)
    render json: birds
     


  end
end
