class SittersController < ApplicationController
  before_action :set_sitter, only: %i[ show edit update destroy ]

  # GET /sitters or /sitters.json
  def index
    @sitters = Sitter.all
  end

  # GET /sitters/1 or /sitters/1.json
  def show
  end

  # GET /sitters/new
  def new
    @sitter = Sitter.new
  end

  # GET /sitters/1/edit
  def edit
  end

  # POST /sitters or /sitters.json
  def create
    @sitter = Sitter.new(sitter_params)

    respond_to do |format|
      if @sitter.save
        format.html { redirect_to @sitter, notice: "Sitter was successfully created." }
        format.json { render :show, status: :created, location: @sitter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitters/1 or /sitters/1.json
  def update
    respond_to do |format|
      if @sitter.update(sitter_params)
        format.html { redirect_to @sitter, notice: "Sitter was successfully updated." }
        format.json { render :show, status: :ok, location: @sitter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitters/1 or /sitters/1.json
  def destroy
    @sitter.destroy
    respond_to do |format|
      format.html { redirect_to sitters_url, notice: "Sitter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitter
      @sitter = Sitter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sitter_params
      params.fetch(:sitter, {})
    end
end
