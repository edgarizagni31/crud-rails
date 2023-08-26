class Task
  attr_accessor :title, :description, :level, :status
  attr_reader :autor


  def initialize(title, description, level, status, author)
    @title = title
    @description = description
    @level = level
    @status = status
    @autor = author
  end
end
