class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]
  require 'securerandom'
  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new(:customer_id => params[:customer_id])
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  # POST /quotes.json

  def create
    @quote = Quote.new(quote_params)
    @quote.customer_id = params[:customer_id]
    @quote.amount = rand(100..1000)
      #The identifier is created using a string random and the customer ID
    @quote.identifier = "#{@quote.customer_id}#{SecureRandom.hex(2)}"


    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end


  def get_customer_details

    @quote = Quote.find_by_identifier(params[:identifier])
    @customer = Customer.find(@quote.customer_id)
    respond_to  do |format|
      if (@customer.email == params[:email])
       format.json {render action: 'show',status: :created, location: @customer }
      end
    end


  end
  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
     @quote = Quote.find_by_customer_id(params[:customer_id])
      #@customer = Customer.find(params[:customer_id])
      #@quote = @customer.quote
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:customer_id, :amount, :identifier)
    end
end
