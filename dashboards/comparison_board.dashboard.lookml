- dashboard: join_queries
  title: Join Queries
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: q61ET6ugU5FKfHvxNyFuv9
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<!-- verbose inline css award winner 2020 -->\n<div style=\"margin:\
      \ auto; \">\n<a style=\"\n\tcolor: #fff;\n    background-color: #4285F4;\n \
      \   border-color: #4285F4;\n    float: left;\n    font-weight: 800;\n    text-align:\
      \ center;\n    vertical-align: middle;\n    cursor: pointer;\n    user-select:\
      \ none;\n    padding: 20px;\n    padding-left:300px;\n    padding-right:300px;\n\
      \    margin: 20px;\n    font-size: 10rem;\n    line-height: 15;\n    border-radius:\
      \ 5px;\"\n   >\n   Columnar Cache\n</a>"
    row: 29
    col: 0
    width: 12
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<!-- verbose inline css award winner 2020 -->\n<div style=\"margin:\
      \ auto; \">\n<a style=\"\n\tcolor: #fff;\n    background-color:  #34A852;\n\
      \    border-color:  #34A852;\n    float: left;\n    font-weight: 800;\n    text-align:\
      \ center;\n    vertical-align: middle;\n    cursor: pointer;\n    user-select:\
      \ none;\n    padding: 20px;\n    padding-left:260px;\n    padding-right:260px;\n\
      \    margin: 20px;\n    font-size: 10rem;\n    line-height: 15;\n    border-radius:\
      \ 5px;\"\n   >\n   Postgres\n</a>\n</div>"
    row: 14
    col: 12
    width: 12
    height: 4
  - title: Total Sessions
    name: Total Sessions
    model: lux_cc
    explore: event_logs
    type: single_value
    fields: [event_sessions.count]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/31
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/31
      account.account_name: a%,b%,c%,d%,e%
    limit: 500
    filter_expression: "${event_logs.client_id}=${client.id} AND ${event_sessions.client_id}=${client.id} "
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    note_state: collapsed
    note_display: below
    note_text: Total Sessions
    listen: {}
    row: 6
    col: 0
    width: 6
    height: 3
  - title: Number of Users
    name: Number of Users
    model: lux_cc
    explore: event_logs
    type: single_value
    fields: [event_logs.user_count]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/31
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/31
      account.account_name: a%,b%,c%,d%,e%
    limit: 500
    filter_expression: "${event_logs.client_id}=${client.id} AND ${event_sessions.client_id}=${client.id} "
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    defaults_version: 1
    listen: {}
    row: 6
    col: 6
    width: 6
    height: 3
  - title: Usage Trends
    name: Usage Trends
    model: lux_cc
    explore: event_logs
    type: looker_column
    fields: [event_logs.user_count, event_logs.timestamp_hour]
    fill_fields: [event_logs.timestamp_hour]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/31
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/31
      account.account_name: a%,b%,c%,d%,e%
    sorts: [event_logs.timestamp_hour desc]
    limit: 500
    filter_expression: "${event_logs.client_id}=${client.id} AND ${event_sessions.client_id}=${client.id} "
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: event_logs.user_count,
            id: event_logs.user_count, name: User Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 33
    col: 0
    width: 2
    height: 2
  - title: Usage Trends
    name: Usage Trends (2)
    model: pg13_cache
    explore: event_logs
    type: looker_column
    fields: [event_logs.user_count, event_logs.timestamp_hour]
    fill_fields: [event_logs.timestamp_hour]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/31
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/31
      account.account_name: a%,b%,c%,d%,e%
    sorts: [event_logs.timestamp_hour desc]
    limit: 500
    filter_expression: "${event_logs.client_id}=${client.id} AND ${event_sessions.client_id}=${client.id} "
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: event_logs.user_count,
            id: event_logs.user_count, name: User Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      event_logs.user_count: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 18
    col: 12
    width: 2
    height: 2
  - title: Sessions by Industry
    name: Sessions by Industry
    model: lux_cc
    explore: event_logs
    type: looker_bar
    fields: [event_sessions.count, account.industry]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/31
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/31
      account.account_name: a%,b%,c%,d%,e%
    sorts: [event_sessions.count desc]
    limit: 500
    filter_expression: "${event_logs.client_id}=${client.id} AND ${event_sessions.client_id}=${client.id} "
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: event_sessions.count,
            id: event_sessions.count, name: Number of Sessions}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 9
    col: 0
    width: 6
    height: 6
  - title: Top Accounts
    name: Top Accounts
    model: lux_cc
    explore: event_logs
    type: looker_grid
    fields: [event_sessions.count, account.account_name]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/31
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/31
      account.account_name: a%,b%,c%,d%,e%
    sorts: [event_sessions.count desc]
    limit: 500
    filter_expression: "${event_logs.client_id}=${client.id} AND ${event_sessions.client_id}=${client.id} "
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      event_sessions.count:
        is_active: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 9
    col: 6
    width: 6
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 15
    col: 0
    width: 12
    height: 14
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 12
    width: 12
    height: 14
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<!-- verbose inline css award winner 2020 -->\n<div style=\"margin:\
      \ auto; \">\n<a style=\"\n\tcolor: #fff;\n    background-color: #4285F4;\n \
      \   border-color: #4285F4;\n    float: center;\n    font-weight: 800;\n    text-align:\
      \ center;\n    vertical-align: middle;\n    cursor: pointer;\n    user-select:\
      \ none;\n    padding: 40px;\n    padding-left:20%;\n    padding-right:20%;\n\
      \    margin-left: 22%;\n    margin-right: 10%;\n    font-size: 2rem;\n    line-height:\
      \ 5;\n    border-radius: 5px;\"\n   >\n   AlloyDB\n</a>\n</div>"
    row: 0
    col: 0
    width: 12
    height: 6
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<!-- verbose inline css award winner 2020 -->\n<div style=\"margin:\
      \ auto; \">\n<a style=\"\n\tcolor: #fff;\n    background-color: #4285F4;\n \
      \   border-color: #4285F4;\n    float: left;\n    font-weight: 2000;\n    text-align:\
      \ center;\n    vertical-align: middle;\n    cursor: pointer;\n    user-select:\
      \ none;\n    font-size: 100px;\"\n   >\n   <title>Columnar Cache</title>\n</a>\n\
      \ <h1 tyle=\"color:red;font-size:400px;\">Columnar Cache</h1>"
    row: 35
    col: 0
    width: 12
    height: 5
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: "<!-- verbose inline css award winner 2020 -->\n<div style=\"margin:\
      \ auto; \">\n<a style=\"\n\tcolor: #fff;\n    background-color:  #34A852;\n\
      \    border-color:  #34A852;\n    float: left;\n    font-weight: 800;\n    text-align:\
      \ center;\n    vertical-align: middle;\n    cursor: pointer;\n    user-select:\
      \ none;\n    padding: 20px;\n    padding-left:260px;\n    padding-right:260px;\n\
      \    margin: 20px;\n    font-size: 10rem;\n    line-height: 15;\n    border-radius:\
      \ 5px;\"\n   >\n   Postgres\n</a>\n</div>"
    row: 20
    col: 12
    width: 12
    height: 5
