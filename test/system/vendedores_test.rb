require "application_system_test_case"

class VendedoresTest < ApplicationSystemTestCase
  setup do
    @vendedor = vendedores(:one)
  end

  test "visiting the index" do
    visit vendedores_url
    assert_selector "h1", text: "Vendedores"
  end

  test "should create vendedor" do
    visit vendedores_url
    click_on "New vendedor"

    fill_in "Apellido", with: @vendedor.apellido
    fill_in "Correo", with: @vendedor.correo
    fill_in "Fecha contratacion", with: @vendedor.fecha_contratacion
    fill_in "Nombre", with: @vendedor.nombre
    fill_in "Telefono", with: @vendedor.telefono
    click_on "Create Vendedor"

    assert_text "Vendedor was successfully created"
    click_on "Back"
  end

  test "should update Vendedor" do
    visit vendedor_url(@vendedor)
    click_on "Edit this vendedor", match: :first

    fill_in "Apellido", with: @vendedor.apellido
    fill_in "Correo", with: @vendedor.correo
    fill_in "Fecha contratacion", with: @vendedor.fecha_contratacion
    fill_in "Nombre", with: @vendedor.nombre
    fill_in "Telefono", with: @vendedor.telefono
    click_on "Update Vendedor"

    assert_text "Vendedor was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendedor" do
    visit vendedor_url(@vendedor)
    click_on "Destroy this vendedor", match: :first

    assert_text "Vendedor was successfully destroyed"
  end
end
