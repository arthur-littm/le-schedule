class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @weeks = WorkDay.where('date > ?', Date.today) # won't work because we want to show the current week
    @weeks = WorkDay.all.group_by { |wd| wd.date.cweek }
  end
end
