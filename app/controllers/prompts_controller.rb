class PromptsController < ApplicationController
  def sample
    @sample = Prompt.all.sample

    respond_to do |format|
      format.text do
        render partial: "sample", locals: { sample: @sample }, formats: [:html]
      end
    end
  end
end
