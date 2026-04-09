SELECT
	*
FROM {{ source('raw', 'sales_data') }}