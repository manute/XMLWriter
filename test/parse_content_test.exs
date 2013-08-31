Code.require_file "test_helper.exs", __DIR__

defmodule ParseContentTest do
  use ExUnit.Case

  test "can parse list of users to a xml" do
    data = ["Jhon","Chuck","Jenna"]
  	xml = ParseContent.list_to_xml("user",data)
  	assert xml == "<?xml version='1.0'?>\n<user>Jhon</user>\n<user>Chuck</user>\n<user>Jenna</user>"
  end

   test "can parse list of products to a xml" do
    data = ["IBM","Mapfre","IBEX35"]
  	xml = ParseContent.list_to_xml("product",data)
  	assert xml == "<?xml version='1.0'?>\n<product>IBM</product>\n<product>Mapfre</product>\n<product>IBEX35</product>"
  end

end  