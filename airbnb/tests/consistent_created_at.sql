SELECT *
FROM {{ ref('fct_reviews') }}
INNER JOIN {{ ref('dim_listings_cleansed') }} USING (listing_id)
WHERE fct_reviews.review_date < dim_listings_cleansed.created_at 