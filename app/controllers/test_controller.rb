class TestController < ApplicationController
  def index
  	@test=Test.all
  end
  def new
  	@test=Test.new
  end
  def create
	@test=Test.new(params[:test])
	if @test.save
		redirect_to :action=>'index'
	else
		render 'new'
	end
end
def show
	@test = Test.find(params[:id])
end
def edit
	@test=Test.find(params[:id])
end
def update
	@test =Test.find(params[:id])
	@test.update_attributes(params[:test])
	if @test.save
		redirect_to :action=>'index'
	else
		render 'new'
	end
end
def destroy
	@test = Test.find(params[:id])
	if @test.delete
		redirect_to :action=>'index'
	else
		render 'index'
	end
end

end


