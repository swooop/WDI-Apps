class TextsController < ApplicationController
  def index
    @texts = Text.all
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(params[:text])

    if @text.save
      redirect_to root_url, notice: "Text message to #{@text.tel} sent!"
    else
      redirect_to new_text_path, flash: { error: "Some kind of oops, soz" }
    end
  end
end
