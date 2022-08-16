class WelcomeController < ApplicationController

    def main
        @user = current_user
    end
end