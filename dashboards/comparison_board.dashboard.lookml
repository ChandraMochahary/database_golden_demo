- dashboard: portfolio_manager
  title: Portfolio Manager
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ZLMR2YSYwRDdnb1vs41zS2
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 15
    col: 0
    width: 12
    height: 14
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 15
    col: 12
    width: 12
    height: 14
  - name: " (3)"
    type: text
    title_text: 'Alloy DB'
    subtitle_text: 'Records Read: 61,701,550'
    row: 0
    col: 0
    width: 12
    height: 3
  - title: Total Transactions
    name: Total Transactions
    model: lux_cc_next
    explore: event_logs
    type: single_value
    fields: [event_sessions.count]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    custom_color: "#34A853"
    single_value_title: Total Transactions
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
    listen: {}
    row: 6
    col: 12
    width: 6
    height: 4
  - name: " (4)"
    type: text
    title_text: 'PostgresSQL'
    subtitle_text: 'Records Read: 61,701,550'
    row: 0
    col: 12
    width: 12
    height: 3
  - title: Number of Clients
    name: Number of Clients
    model: lux_cc_next
    explore: event_logs
    type: single_value
    fields: [event_logs.user_count]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    custom_color: "#34A853"
    defaults_version: 1
    listen: {}
    row: 6
    col: 18
    width: 6
    height: 4
  - title: Top Accounts
    name: Top Accounts
    model: lux_cc_next
    explore: event_logs
    type: looker_grid
    fields: [event_sessions.count, account.account_name]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      event_sessions.count:
        is_active: true
        palette:
          palette_id: 0cbdcd82-57e8-5089-2e48-deeaf62f3f1f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f4ffe9"
          - "#7CB342"
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
    row: 10
    col: 18
    width: 6
    height: 5
  - title: Transactions by Industry
    name: Transactions by Industry
    model: lux_cc_next
    explore: event_logs
    type: looker_bar
    fields: [event_sessions.count, account.industry]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    series_colors:
      event_sessions.count: "#34A853"
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
    row: 10
    col: 12
    width: 6
    height: 5
  - title: Total Transactions
    name: Total Transactions (2)
    model: lux_next
    explore: event_logs
    type: single_value
    fields: [event_sessions.count]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    listen: {}
    row: 6
    col: 0
    width: 6
    height: 4
  - title: Number of Clients
    name: Number of Clients (2)
    model: lux_next
    explore: event_logs
    type: single_value
    fields: [event_logs.user_count]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    height: 4
  - title: Transactions by Industry
    name: Transactions by Industry (2)
    model: lux_next
    explore: event_logs
    type: looker_bar
    fields: [event_sessions.count, account.industry]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    row: 10
    col: 0
    width: 6
    height: 5
  - title: Top Accounts
    name: Top Accounts (2)
    model: lux_next
    explore: event_logs
    type: looker_grid
    fields: [event_sessions.count, account.account_name]
    filters:
      event_logs.timestamp_date: 2021/07/01 to 2021/07/08
      event_logs.sequence: "<100"
      event_sessions.session_start_date: 2021/07/01 to 2021/07/08
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
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
        palette:
          palette_id: 0cbdcd82-57e8-5089-2e48-deeaf62f3f1f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#FFFFFF"
          - "#4284F3"
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
    row: 10
    col: 6
    width: 6
    height: 5
