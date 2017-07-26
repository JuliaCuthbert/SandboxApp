module ApplicationHelper
  def global_links
    # caption => route
    {
      "Home Page" => welcome_index_path,
      "Stripe Integration" => stripe_index_path,
      "HandsOn Table Integration" => hands_on_table_index_path,
    }
  end

  def humanized_attribute(attribute)
    attribute.split('_').map(&:capitalize).join(' ')
  end

  def back_button(caption = "Back", destination = nil)
    destination ||= 'javascript:history.back()'
    button_to caption, destination
  end
end
