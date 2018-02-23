class RedactionsController < ApplicationController
  before_action :set_redaction, only: [:show, :edit, :update, :destroy]

  # GET /redactions
  # GET /redactions.json
  def index
    @redactions = Redaction.all
  end

  # GET /redactions/1
  # GET /redactions/1.json
  def show
  end

  # GET /redactions/new
  def new
    @redaction = Redaction.new
  end

  # GET /redactions/1/edit
  def edit
  end

  # POST /redactions
  # POST /redactions.json
  def create
    @redaction = Redaction.new(redaction_params)

    respond_to do |format|
      if @redaction.save
        format.html { redirect_to @redaction, notice: 'Redaction was successfully created.' }
        format.json { render :show, status: :created, location: @redaction }
      else
        format.html { render :new }
        format.json { render json: @redaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redactions/1
  # PATCH/PUT /redactions/1.json
  def update
    respond_to do |format|
      if @redaction.update(redaction_params)
        format.html { redirect_to @redaction, notice: 'Redaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @redaction }
      else
        format.html { render :edit }
        format.json { render json: @redaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redactions/1
  # DELETE /redactions/1.json
  def destroy
    @redaction.destroy
    respond_to do |format|
      format.html { redirect_to redactions_url, notice: 'Redaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redaction
      @redaction = Redaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redaction_params
      params.require(:redaction).permit(:h, :w, :axis)
    end
end
