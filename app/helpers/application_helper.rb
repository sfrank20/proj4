module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "CS 441 - Project 4 - Survey Engine"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end

