require_relative '../config/environment'
require '../lib/student'
require_relative'../lib/interactive_record'

require_relative "../lib/interactive_record.rb"
require_relative "../lib/song.rb"
require_relative "../config/environment.rb"


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed
end
