require 'sinatra'

get '/' do
        erb :index
    end

post '/' do
        @user_name =    params[:user_name]
        @phone_number = params[:phone_number]
        @date_time =    params[:date_time]
        
        @title = 'Thank you!'
        @message = "Dear #{@user_name}, we`ll be waiting you at #{@date_time}"

        f = File.open 'Users.txt', 'a'
        f.write "/n User: #{@user_name}, Phone: #{@phone_number}, Date and time: #{@date_time} /n"
        f.close

        erb :message
    end     

    #xss