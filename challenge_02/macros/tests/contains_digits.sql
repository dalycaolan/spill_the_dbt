{% test contains_digits(model, column_name) %}
  select *
  FROM {{ model }}
  WHERE REGEXP_MATCHES({{column_name}}, '[0-9]')
{% endtest %}