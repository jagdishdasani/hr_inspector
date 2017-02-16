json.extract! candidate_detail, :id, :designation, :offer_date, :abandon_date, :not_join_before, :candidate_id, :created_at, :updated_at
json.url candidate_detail_url(candidate_detail, format: :json)