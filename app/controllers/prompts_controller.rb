class PromptsController < ApplicationController
  def sample
    sample = Prompt.all.sample.content
    return sample
  end
end
