require "test_helper"

class VentadetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ventadetalle = ventadetalles(:one)
  end

  test "should get index" do
    get ventadetalles_url
    assert_response :success
  end

  test "should get new" do
    get new_ventadetalle_url
    assert_response :success
  end

  test "should create ventadetalle" do
    assert_difference("Ventadetalle.count") do
      post ventadetalles_url, params: { ventadetalle: { cantidad: @ventadetalle.cantidad, precio: @ventadetalle.precio, producto_id: @ventadetalle.producto_id, venta_id: @ventadetalle.venta_id } }
    end

    assert_redirected_to ventadetalle_url(Ventadetalle.last)
  end

  test "should show ventadetalle" do
    get ventadetalle_url(@ventadetalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_ventadetalle_url(@ventadetalle)
    assert_response :success
  end

  test "should update ventadetalle" do
    patch ventadetalle_url(@ventadetalle), params: { ventadetalle: { cantidad: @ventadetalle.cantidad, precio: @ventadetalle.precio, producto_id: @ventadetalle.producto_id, venta_id: @ventadetalle.venta_id } }
    assert_redirected_to ventadetalle_url(@ventadetalle)
  end

  test "should destroy ventadetalle" do
    assert_difference("Ventadetalle.count", -1) do
      delete ventadetalle_url(@ventadetalle)
    end

    assert_redirected_to ventadetalles_url
  end
end
