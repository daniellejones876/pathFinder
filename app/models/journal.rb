class Journal < ApplicationRecord
  belongs_to :logbook
  belongs_to :prompt, optional: true
end
