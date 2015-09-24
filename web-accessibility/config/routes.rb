Rails.application.routes.draw do
 root 'capstone#index'

 get '/capstone', to: 'capstone#index'
 get '/capstone/twilio', to: 'capstone#twilio'
 get '/capstone/email', to: 'capstone#email'
 get '/capstone/translate', to: 'capstone#translate'
 get '/capstone/css', to: 'capstone#css'
end
