{%- comment -%}
*
*  get page for inclusion
*
{%- endcomment -%}
{%- if data == null -%}{%- include data.rb -%}{%- endif -%}
{%- if my_feed.redirect.from %}{% include {{ my_feed.path | remove_first: "_" | replace: ".md", ".html" }} %}{%- endif -%}
