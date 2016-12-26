defmodule Au.Admin.Html do
  use Xain

  def panel(content, header, footer) when is_binary(content) and is_binary(header) and is_binary(footer) do
    panel(%{
    :header => header,
    :body => content,
    :footer => footer})
  end

  def panel(content, header) when is_binary(content) and is_binary(header) do
    panel(%{
    :header => header,
    :body => content})
  end

  def panel(content) when is_binary(content) do
    panel(%{:body => content})
  end

  def panel(opts) do
    markup do
      div ".panel.panel-default" do
        panel_header(opts[:header])
        panel_body(opts[:body])
        panel_footer(opts[:footer])
      end
    end
  end

  defmacro empty_block(content, do: expression) do
    quote do
      case is_nil(unquote(content)) do
        true -> unquote("")
        _ -> unquote(expression)
      end
    end
  end

  def panel_header(content) do
    empty_block content do
      div ".panel-heading" do
        content
      end
    end
  end

  def panel_body(content) do
    empty_block content do
      div ".panel-body" do
        content
      end
    end
  end

  def panel_footer(content) do
    empty_block content do
      div ".panel-footer" do
        content
      end
    end
  end

  
end