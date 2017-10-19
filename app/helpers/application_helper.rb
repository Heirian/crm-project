# frozen_string_literal: true

module ApplicationHelper
  # APP title method
  def full_title(page_title = '')
    base_title = 'IBC-SPro'
    return base_title if page_title.empty?
    base_title + ' | ' + page_title
  end
end
