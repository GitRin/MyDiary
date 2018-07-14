class WhatadaysController < ApplicationController
  before_action :set_whataday, only: [:show, :edit, :update, :destroy]

  # GET /whatadays
  # GET /whatadays.json
  def index
    @whatadays = Whataday.all
  end

  # GET /whatadays/1
  # GET /whatadays/1.json
  def show
  end

  # GET /whatadays/new
  def new
    @whataday = Whataday.new
  end

  # GET /whatadays/1/edit
  def edit
  end

  # POST /whatadays
  # POST /whatadays.json
  def create
    @whataday = Whataday.new(whataday_params)

    respond_to do |format|
      if @whataday.save
        format.html { redirect_to @whataday, notice: 'Whataday was successfully created.' }
        format.json { render :show, status: :created, location: @whataday }
      else
        format.html { render :new }
        format.json { render json: @whataday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whatadays/1
  # PATCH/PUT /whatadays/1.json
  def update
    respond_to do |format|
      if @whataday.update(whataday_params)
        format.html { redirect_to @whataday, notice: 'Whataday was successfully updated.' }
        format.json { render :show, status: :ok, location: @whataday }
      else
        format.html { render :edit }
        format.json { render json: @whataday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whatadays/1
  # DELETE /whatadays/1.json
  def destroy
    @whataday.destroy
    respond_to do |format|
      format.html { redirect_to whatadays_url, notice: 'Whataday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whataday
      @whataday = Whataday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whataday_params
      params.require(:whataday).permit(:when, :how)
    end
end
