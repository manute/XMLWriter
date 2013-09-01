Code.require_file "test_helper.exs", __DIR__

defmodule XmlWriterTest do
  use ExUnit.Case

  @path "/Users/usuario/manu-projects/elixir/xml_writer/test_writed_xml"

  test "can write or edit an xml file of users names" do
    file_path = "#{@path}/test_users.xml"
  	response = XmlWriter.file(file_path,["Jhon","Chuck","Jenna"],"user")
    assert(response==:ok)
  end

  test "can write or edit an xml file of products" do
    file_path = "#{@path}/test_products.xml"
  	response = XmlWriter.file(file_path,["IBM","Mapfre","IBEX35"],"product")
    assert(response==:ok)
  end

  test "error if file directory doesn´t exist" do
  	response = XmlWriter.file("/not_exist/fail",[],"")
  	assert(response == {:error, :enoent})
  end

end
