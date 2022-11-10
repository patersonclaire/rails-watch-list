# frozen_string_literal: true

# lists controller
class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
  end

  def show; end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    pramas.require(list).permit(:name, :photo)
  end
end
