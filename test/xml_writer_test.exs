Code.require_file "test_helper.exs", __DIR__

defmodule XmlWriterTest do
  use ExUnit.Case

  test "can write or edit an xml file of users names" do
  	response = XmlWriter.file("test_users.xml",["Jhon","Chuck","Jenna"],"user")
    assert(response==:ok)
  end

  test "can write or edit an xml file of products" do
  	response = XmlWriter.file("test_products.xml",["IBM","Mapfre","IBEX35"],"product")
    assert(response==:ok)
  end

end
