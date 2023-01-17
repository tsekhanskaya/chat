# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    @new_room = Room.new
    @rooms = Room.all
  end

  def create
    @new_room = current_user&.rooms&.build

    @new_room.broadcast_append_to :rooms if @new_room&.save
  end
end
