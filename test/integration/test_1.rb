require 'test_helper'
class Test1 < ActionDispatch::IntegrationTest
        test 'Перенаправление на страницу аутентификации' do 
        get happynumber_input_url
        assert_response 302 
        follow_redirect!
        assert_select 'h1', 'Вход' 
    end
    
    test 'registration,signin and find' do
        post '/users', params: {user: {name: 'aaaa',email: 'aaaa@yandex.ru',password: '111',password_confirmation: '111'}}
        assert_response :redirect 
        follow_redirect!
        assert_select 'h1', 'Счастливые числа' 
    end
end