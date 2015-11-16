<div id="dialog_connect_results" class="connect-results">
    {% if text %}
        {% with m.search.paged[{rdf text=text cat=cat page=1 pagelen=(6*3)}] as result %}
            <div id="dialog_connect_loop_results" class="thumbnails">
                {% include "_action_dialog_connect_tab_find_linked_data_results_loop.tpl"
                    id
                    result=result
                %}
            </div>
            {# {% lazy
                action={
                    moreresults
                    result=result
                    target="dialog_connect_loop_results"
                    template="_action_dialog_connect_tab_find_linked_data_results_loop.tpl"
                    is_result_render
                    visible
                }
            %} #}
        {% endwith %}
    {% else %}
        {# No query text #}
    {% endif %}
</div>