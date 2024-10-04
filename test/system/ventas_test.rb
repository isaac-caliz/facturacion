require "application_system_test_case"

class VentasTest < ApplicationSystemTestCase
  setup do
    @venta = ventas(:one)
  end

  test "visiting the index" do
    visit ventas_url
    assert_selector "h1", text: "Ventas"
  end

  test "should create venta" do
    visit ventas_url
    click_on "New venta"

    fill_in "Cliente", with: @venta.cliente_id
    fill_in "Fecha", with: @venta.fecha
    fill_in "Total", with: @venta.total
    fill_in "Vendedor", with: @venta.vendedor_id
    click_on "Create Venta"

    assert_text "Venta was successfully created"
    click_on "Back"
  end

  test "should update Venta" do
    visit venta_url(@venta)
    click_on "Edit this venta", match: :first

    fill_in "Cliente", with: @venta.cliente_id
    fill_in "Fecha", with: @venta.fecha
    fill_in "Total", with: @venta.total
    fill_in "Vendedor", with: @venta.vendedor_id
    click_on "Update Venta"

    assert_text "Venta was successfully updated"
    click_on "Back"
  end

  test "should destroy Venta" do
    visit venta_url(@venta)
    click_on "Destroy this venta", match: :first

    assert_text "Venta was successfully destroyed"
  end
end
