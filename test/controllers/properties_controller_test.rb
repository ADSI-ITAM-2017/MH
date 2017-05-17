require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { balcony: @property.balcony, cable: @property.cable, city: @property.city, comment: @property.comment, electricity: @property.electricity, furnished: @property.furnished, gas: @property.gas, internet: @property.internet, kitchen: @property.kitchen, number: @property.number, parking_space: @property.parking_space, parties: @property.parties, pets: @property.pets, price: @property.price, ramps: @property.ramps, rooms: @property.rooms, security: @property.security, share: @property.share, state: @property.state, street: @property.street, type: @property.type, water: @property.water }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { balcony: @property.balcony, cable: @property.cable, city: @property.city, comment: @property.comment, electricity: @property.electricity, furnished: @property.furnished, gas: @property.gas, internet: @property.internet, kitchen: @property.kitchen, number: @property.number, parking_space: @property.parking_space, parties: @property.parties, pets: @property.pets, price: @property.price, ramps: @property.ramps, rooms: @property.rooms, security: @property.security, share: @property.share, state: @property.state, street: @property.street, type: @property.type, water: @property.water }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
