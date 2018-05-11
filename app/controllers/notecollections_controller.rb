class NotecollectionsController < ApplicationController
  before_action :set_notecollection, only: [:show, :edit, :update, :destroy]

  # GET /notecollections
  # GET /notecollections.json
  def index
    @notecollections = Notecollection.all
  end

  # GET /notecollections/1
  # GET /notecollections/1.json
  def show
  end

  # GET /notecollections/new
  def new
    @notecollection = Notecollection.new
  end

  # GET /notecollections/1/edit
  def edit
  end

  # POST /notecollections
  # POST /notecollections.json
  def create
    @notecollection = Notecollection.new(notecollection_params)

    respond_to do |format|
      if @notecollection.save
        format.html { redirect_to @notecollection, notice: 'Notecollection was successfully created.' }
        format.json { render :show, status: :created, location: @notecollection }
      else
        format.html { render :new }
        format.json { render json: @notecollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notecollections/1
  # PATCH/PUT /notecollections/1.json
  def update
    respond_to do |format|
      if @notecollection.update(notecollection_params)
        format.html { redirect_to @notecollection, notice: 'Notecollection was successfully updated.' }
        format.json { render :show, status: :ok, location: @notecollection }
      else
        format.html { render :edit }
        format.json { render json: @notecollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notecollections/1
  # DELETE /notecollections/1.json
  def destroy
    @notecollection.destroy
    respond_to do |format|
      format.html { redirect_to notecollections_url, notice: 'Notecollection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notecollection
      @notecollection = Notecollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notecollection_params
      params.require(:notecollection).permit(:name, :comment)
    end
end