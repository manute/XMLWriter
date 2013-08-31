defmodule ParseContent do
  
  @header_xml "<?xml version='1.0'?>"
  
  def list_to_xml(type, data) do
    "#{@header_xml}\n#{xml_body(type, data)}"
  end
  
  defp xml_body(type, data) do  	
  	 Enum.map_join(data, "\n", parse_body(&1, type))
  end

  defp parse_body(tag_data, tag_name) do
  	"<#{tag_name}>#{tag_data}</#{tag_name}>"
  end
  
end