require "application_system_test_case"

class VentadetallesTest < ApplicationSystemTestCase
  setup do
    @ventadetalle = ventadetalles(:one)
  end

  test "visiting the index" do
    visit ventadetalles_url
    assert_selector "h1", text: "Ventadetalles"
  end

  test "should create ventadetalle" do
    visit ventadetalles_url
    click_on "New ventadetalle"

    fill_in "Cantidad", with: @ventadetalle.cantidad
    fill_in "Precio", with: @ventadetalle.precio
    fill_in "Producto", with: @ventadetalle.producto_id
    fill_in "Venta", with: @ventadetalle.venta_id
    click_on "Create Ventadetalle"

    assert_text "Ventadetalle was successfully created"
    click_on "Back"
  end

  test "should update Ventadetalle" do
    visit ventadetalle_url(@ventadetalle)
    click_on "Edit this ventadetalle", match: :first

    fill_in "Cantidad", with: @ventadetalle.cantidad
    fill_in "Precio", with: @ventadetalle.precio
    fill_in "Producto", with: @ventadetalle.producto_id
    fill_in "Venta", with: @ventadetalle.venta_id
    click_on "Update Ventadetalle"

    assert_text "Ventadetalle was successfully updated"
    click_on "Back"
  end

  test "should destroy Ventadetalle" do
    visit ventadetalle_url(@ventadetalle)
    click_on "Destroy this ventadetalle", match: :first

    assert_text "Ventadetalle was successfully destroyed"
  end
end
