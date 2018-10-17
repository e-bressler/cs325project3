module FlashHelper

  def flash_messages(_opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class(msg_type.to_sym)} fade in") do
        concat(content_tag(:button, id: "close-button", class: "close", type: :button, data: { dismiss: 'alert' }, "aria-label" => :Close) do
          concat content_tag(:span, "&times;".html_safe, "aria-hidden" => true)
        end)
        concat message
      end)
    end
    nil
  end

end