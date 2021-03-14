---
layout: default
---
{% comment %}
*
*  This redirects are performed by serving a data file with an HTTP-REFRESH
*  meta tag which configured via variable {{ page.redirect.from }}
*  Ref: https://github.com/jekyll/jekyll-redirect-from
*
*  You may see the running code here:
*  https://chetabahana.github.io/sequence.json
*
*  Addressing JSON object in Jekyll _data file
*  https://stackoverflow.com/a/55094996/4058484
*
{% endcomment %}{% include data.rb %}{%- if data.items -%}
{% assign my_tab = '    ' %}{{ my_tab }}{{ my_tab }}{
{%- for items in data.items[0] -%}
        {%- if items[1].first -%}
            {%- for item in items -%}
                {%- if forloop.first -%}
                    {{- my_tab }}{{ my_tab }}{{ my_tab }}{{ item | jsonify }}: {



                    {{- my_tab }}{{ my_tab }}{{ my_tab }}}
                {%- endif %}{% unless forloop.last %},{% endunless %}
            {%- endfor %}
        {% else %}
            {{ items[0] | jsonify }}: {{ items[1] | jsonify }}{% unless forloop.last %},{% endunless %}
        {%- endif -%}
{%- endfor %}
        }
{%- endif -%}
