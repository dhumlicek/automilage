require 'test_helper'

class MilagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @milage = milages(:one)
  end

  test "should get index" do
    get milages_url
    assert_response :success
  end

  test "should get new" do
    get new_milage_url
    assert_response :success
  end

  test "should create milage" do
    assert_difference('Milage.count') do
      post milages_url, params: { milage: { amount: @milage.amount, cost: @milage.cost, cpg: @milage.cpg, cpm: @milage.cpm, date: @milage.date, mpg: @milage.mpg, notes: @milage.notes, serviced: @milage.serviced, trip: @milage.trip, vehicle_id: @milage.vehicle_id } }
    end

    assert_redirected_to milage_url(Milage.last)
  end

  test "should show milage" do
    get milage_url(@milage)
    assert_response :success
  end

  test "should get edit" do
    get edit_milage_url(@milage)
    assert_response :success
  end

  test "should update milage" do
    patch milage_url(@milage), params: { milage: { amount: @milage.amount, cost: @milage.cost, cpg: @milage.cpg, cpm: @milage.cpm, date: @milage.date, mpg: @milage.mpg, notes: @milage.notes, serviced: @milage.serviced, trip: @milage.trip, vehicle_id: @milage.vehicle_id } }
    assert_redirected_to milage_url(@milage)
  end

  test "should destroy milage" do
    assert_difference('Milage.count', -1) do
      delete milage_url(@milage)
    end

    assert_redirected_to milages_url
  end
end
