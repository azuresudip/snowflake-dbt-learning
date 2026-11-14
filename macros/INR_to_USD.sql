{% macro IND_to_USD(column_name) %}
    ({{column_name}} / 100)
{% endmacro %}