module ApplicationHelper
  def full_title(custom, default)
    if custom.empty?
      default
    else
      "#{custom} | #{default}"
    end
  end
end
