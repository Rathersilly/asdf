class SitsController < ApplicationController
  before_action :set_sit, only: %i[ show edit update destroy ]

  # GET /sits or /sits.json
  def index
    @sits = Sit.all
  end

  # GET /sits/1 or /sits/1.json
  def show
  end

  # GET /sits/new
  def new
    @sit = Sit.new
  end

  # GET /sits/1/edit
  def edit
  end

  # POST /sits or /sits.json
  def create
    
    @sit = Sit.new(sit_params)

    respond_to do |format|
      if @sit.save
        format.html { redirect_to @sit, notice: "Sit was successfully created." }
        format.json { render :show, status: :created, location: @sit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sits/1 or /sits/1.json
  def update
    respond_to do |format|
      if @sit.update(sit_params)
        format.html { redirect_to @sit, notice: "Sit was successfully updated." }
        format.json { render :show, status: :ok, location: @sit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sits/1 or /sits/1.json
  def destroy
    @sit.destroy
    respond_to do |format|
      format.html { redirect_to sits_url, notice: "Sit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sit
      @sit = Sit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sit_params
      d = params[:sit]
      $stderr.puts d.inspect.green
      date = DateTime.new(d["date(1i)"].to_i,
                            d["date(2i)"].to_i,
                            d["date(3i)"].to_i,
                            d["date(4i)"].to_i,
                            d["date(5i)"].to_i)
      til = DateTime.new(d["date(1i)"].to_i,
                            d["untiltime(2i)"].to_i,
                            d["untiltime(3i)"].to_i,
                            d["untiltime(4i)"].to_i,
                            d["untiltime(5i)"].to_i)
      dur = ((til - date) * 24*60).to_i
      $stderr.puts date.inspect.green
      $stderr.puts til.inspect.green
      params[:sit][:date] = date
      params[:sit][:untiltime] = til
      params[:sit][:duration] = dur
      $stderr.puts params.inspect.green
      params.require(:sit).permit(:person_id, :sitter_id, :date, :untiltime, :duration)
      
      
    end
end
