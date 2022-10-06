class LineItemDatesController < ApplicationController
  before_action :authorized
  before_action :set_quote
  before_action :set_line_item_date, only: %i[ show edit update destroy ]

  # GET /line_item_dates or /line_item_dates.json
  def index
    @line_item_dates = @quote.line_item_dates.all
  end

  # GET /line_item_dates/1 or /line_item_dates/1.json
  def show
  end

  # GET /line_item_dates/new
  def new
    @line_item_date = @quote.line_item_dates.build
  end

  # GET /line_item_dates/1/edit
  def edit
  end

  # POST /line_item_dates or /line_item_dates.json
  def create
    @line_item_date = @quote.line_item_dates.build(line_item_date_params)

    respond_to do |format|
      if @line_item_date.save
        format.html { redirect_to quote_line_item_date_url(@quote, @line_item_date), notice: "Line item date was successfully created." }
        format.json { render :show, status: :created, location: @line_item_date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @line_item_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_item_dates/1 or /line_item_dates/1.json
  def update
    respond_to do |format|
      if @line_item_date.update(line_item_date_params)
        format.html { redirect_to quote_line_item_date_url(@line_item_date), notice: "Line item date was successfully updated." }
        format.json { render :show, status: :ok, location: @line_item_date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line_item_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_item_dates/1 or /line_item_dates/1.json
  def destroy
    @line_item_date.destroy

    respond_to do |format|
      format.html { redirect_to quote_line_item_dates_url, notice: "Line item date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_quote
      @quote = current_company.quotes.find(params[:quote_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item_date
      @line_item_date = @quote.line_item_dates.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_date_params
      params.require(:line_item_date).permit(:date)
    end
end
