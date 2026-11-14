{% macro clean_text(column_name) %}
    replace(trim({{column_name}}),' ','')
{% endmacro %}