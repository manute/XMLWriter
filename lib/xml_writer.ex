defmodule XmlWriter do
    
  def file(path, content , type) do
    File.write(path, generate_xml(content, type))
  end

  defp generate_xml(content, type) do
    ParseContent.list_to_xml(type, content)
  end
  
end
