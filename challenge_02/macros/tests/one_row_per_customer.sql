{% test one_row_per_customer(model, column_name) %}
  SELECT {{ column_name }}, count(*) as count
  FROM {{ model }}
  group by {{ column_name }}
  having count(*)>1
{% endtest %}