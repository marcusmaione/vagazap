class Companies::ProfilesController < ApplicationController
    def show
      @company = current_company
    end
  end