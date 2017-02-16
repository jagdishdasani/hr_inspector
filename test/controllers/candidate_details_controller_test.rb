require 'test_helper'

class CandidateDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidate_detail = candidate_details(:one)
  end

  test "should get index" do
    get candidate_details_url
    assert_response :success
  end

  test "should get new" do
    get new_candidate_detail_url
    assert_response :success
  end

  test "should create candidate_detail" do
    assert_difference('CandidateDetail.count') do
      post candidate_details_url, params: { candidate_detail: { abandon_date: @candidate_detail.abandon_date, candidate_id: @candidate_detail.candidate_id, designation: @candidate_detail.designation, not_join_before: @candidate_detail.not_join_before, offer_date: @candidate_detail.offer_date } }
    end

    assert_redirected_to candidate_detail_url(CandidateDetail.last)
  end

  test "should show candidate_detail" do
    get candidate_detail_url(@candidate_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_candidate_detail_url(@candidate_detail)
    assert_response :success
  end

  test "should update candidate_detail" do
    patch candidate_detail_url(@candidate_detail), params: { candidate_detail: { abandon_date: @candidate_detail.abandon_date, candidate_id: @candidate_detail.candidate_id, designation: @candidate_detail.designation, not_join_before: @candidate_detail.not_join_before, offer_date: @candidate_detail.offer_date } }
    assert_redirected_to candidate_detail_url(@candidate_detail)
  end

  test "should destroy candidate_detail" do
    assert_difference('CandidateDetail.count', -1) do
      delete candidate_detail_url(@candidate_detail)
    end

    assert_redirected_to candidate_details_url
  end
end
