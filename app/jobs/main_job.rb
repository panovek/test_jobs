class MainJob < ApplicationJob
  def perform
    4.times {
      100000.times { ChildJob.perform_later("asdfasdfasdf", options: { a: 1, b: 2 }) }
    }
  end
end
