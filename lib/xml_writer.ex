defmodule XmlWriter do
  
  @path "/Users/usuario/manu-projects/elixir/xml_writer/test_writed_xml"
  
  def file(name, content , type) do
    full_path(name) |> File.write( generate_xml(content, type))
  end

  defp full_path(file_name) do
  	"#{@path}/#{file_name}"
  end

  defp generate_xml(content, type) do
    ParseContent.list_to_xml(type, content)
  end
  
end
