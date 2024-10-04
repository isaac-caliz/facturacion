require "test_helper"

class VendedoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendedor = vendedores(:one)
  end

  test "should get index" do
    get vendedores_url
    assert_response :success
  end

  test "should get new" do
    get new_vendedor_url
    assert_response :success
  end

  test "should create vendedor" do
    assert_difference("Vendedor.count") do
      post vendedores_url, params: { vendedor: { apellido: @vendedor.apellido, correo: @vendedor.correo, fecha_contratacion: @vendedor.fecha_contratacion, nombre: @vendedor.nombre, telefono: @vendedor.telefono } }
    end

    assert_redirected_to vendedor_url(Vendedor.last)
  end

  test "should show vendedor" do
    get vendedor_url(@vendedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendedor_url(@vendedor)
    assert_response :success
  end

  test "should update vendedor" do
    patch vendedor_url(@vendedor), params: { vendedor: { apellido: @vendedor.apellido, correo: @vendedor.correo, fecha_contratacion: @vendedor.fecha_contratacion, nombre: @vendedor.nombre, telefono: @vendedor.telefono } }
    assert_redirected_to vendedor_url(@vendedor)
  end

  test "should destroy vendedor" do
    assert_difference("Vendedor.count", -1) do
      delete vendedor_url(@vendedor)
    end

    assert_redirected_to vendedores_url
  end
end
