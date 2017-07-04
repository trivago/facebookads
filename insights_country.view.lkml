view: ad_insights_by_country {
  sql_table_name: at_test.facebook_ads_insights_country_1375720222652548 ;;
  ## STANDARD FIELDS

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}.adset_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${campaigns.name} ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  ## if using coordinates in `country_coordinates` view
  #   - dimension: country_location
  #     type: location
  #     sql_latitude: ${country_coordinates.latitude}
  #     sql_longitude: ${country_coordinates.longitude}

  dimension: country_iso {
    type: string
    map_layer_name: countries
    sql: ${country_coordinates.country_iso} ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }

  dimension: cpp {
    type: number
    sql: ${TABLE}.cpp ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: date_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: date_stop {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_stop ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
    value_format_name: usd
  }

  ## AGGREGATE MEASURES


  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: avg_cpc {
    type: average
    sql: ${TABLE}.cpc ;;
  }

  measure: avg_cpm {
    type: average
    sql: ${TABLE}.cpm ;;
  }

  measure: avg_cpp {
    type: average
    sql: ${TABLE}.cpp ;;
  }

  measure: avg_ctr {
    type: average
    sql: ${TABLE}.ctr ;;
  }

  measure: avg_frequency {
    type: average
    sql: ${TABLE}.frequency ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_reach {
    type: sum
    sql: ${TABLE}.reach ;;
  }

  measure: total_spend {
    type: sum
    sql: ${TABLE}.spend ;;
  }

  measure: total_actions {
    type: sum
    sql: ${TABLE}.total_actions ;;
  }
}

#############################################################################################


## ADDITIONAL FIELDS

#   - dimension: app_store_clicks
#     type: number
#     sql: ${TABLE}.app_store_clicks
#
#   - dimension: call_to_action_clicks
#     type: number
#     sql: ${TABLE}.call_to_action_clicks
#
#   - dimension: canvas_avg_view_percent
#     type: number
#     sql: ${TABLE}.canvas_avg_view_percent
#
#   - dimension: canvas_avg_view_time
#     type: number
#     sql: ${TABLE}.canvas_avg_view_time
#
#   - dimension: cost_per_estimated_ad_recallers
#     type: number
#     sql: ${TABLE}.cost_per_estimated_ad_recallers
#
#   - dimension: cost_per_total_action405fbef9027a163771ac7ebac9bd8abb
#     type: number
#     sql: ${TABLE}."cost_per_total_action#405fbef9027a163771ac7ebac9bd8abb"
#
#   - dimension: deeplink_clicks
#     type: number
#     sql: ${TABLE}.deeplink_clicks
#
#   - dimension: estimated_ad_recall_rate
#     type: number
#     sql: ${TABLE}.estimated_ad_recall_rate
#
#   - dimension: estimated_ad_recall_rate_lower_bound
#     type: number
#     sql: ${TABLE}.estimated_ad_recall_rate_lower_bound
#
#   - dimension: estimated_ad_recall_rate_upper_bound
#     type: number
#     sql: ${TABLE}.estimated_ad_recall_rate_upper_bound
#
#   - dimension: social_clicks
#     type: number
#     sql: ${TABLE}.social_clicks
#
#   - dimension: social_impressions
#     type: number
#     sql: ${TABLE}.social_impressions
#
#   - dimension: social_reach
#     type: number
#     sql: ${TABLE}.social_reach
#
#   - dimension: social_clicks
#     type: number
#     sql: ${TABLE}.social_clicks
#
#   - dimension: social_impressions
#     type: number
#     sql: ${TABLE}.social_impressions
#
#   - dimension: social_reach
#     type: number
#     sql: ${TABLE}.social_reach
#
#   - dimension: website_clicks
#     type: number
#     sql: ${TABLE}.website_clicks

## INLINE AND UNIQUE

#   - dimension: cost_per_inline_link_click
#     type: number
#     sql: ${TABLE}."cost_per_inline_link_click#01932ca7b21eb72c1e10d6cb906d6b36"
#
#   - dimension: cost_per_inline_post_engagement
#     type: number
#     sql: ${TABLE}."cost_per_inline_post_engagement#030e37f96d092f6c15fb7a41521aa227"
#
#   - dimension: cost_per_unique_click
#     type: number
#     sql: ${TABLE}."cost_per_unique_click#314b575e612d4acb829c87b1d81b7bbd"
#
#   - dimension: cost_per_unique_inline_link_click
#     type: number
#     sql: ${TABLE}."cost_per_unique_inline_link_click#46c5d5a01cf35fb31482787435b028ff"
#
#   - dimension: inline_link_click_ctr
#     type: number
#     sql: ${TABLE}."inline_link_click_ctr#2cf3b3cbfc8c2745f13ab21fdefd5ce7"
#
#   - dimension: inline_link_clicks
#     type: number
#     sql: ${TABLE}.inline_link_clicks
#
#   - dimension: inline_post_engagement
#     type: number
#     sql: ${TABLE}.inline_post_engagement
#
#   - dimension: total_action_value
#     type: number
#     sql: ${TABLE}.total_action_value
#
#   - dimension: actions
#     type: number
#     sql: ${TABLE}.total_actions
#
#   - dimension: total_unique_actions
#     type: number
#     sql: ${TABLE}.total_unique_actions
#
#   - dimension: unique_clicks
#     type: number
#     sql: ${TABLE}.unique_clicks
#
#   - dimension: unique_ctr
#     type: number
#     sql: ${TABLE}."unique_ctr#8eb4c1cfa3ad8ba37f49e372cf5d1cd3"
#
#   - dimension: unique_impressions
#     type: number
#     sql: ${TABLE}.unique_impressions
#
#   - dimension: unique_inline_link_click_ctr
#     type: number
#     sql: ${TABLE}."unique_inline_link_click_ctr#03ac8649f6f3371be49fa980213fe6cc"
#
#   - dimension: unique_inline_link_clicks
#     type: number
#     sql: ${TABLE}.unique_inline_link_clicks
#
#   - dimension: unique_link_clicks_ctr
#     type: number
#     sql: ${TABLE}."unique_link_clicks_ctr#aa48a871d5a64cab44a6be0bcd25a441"
#
#   - dimension: unique_social_clicks
#     type: number
#     sql: ${TABLE}.unique_social_clicks
#
#   - dimension: unique_social_impressions
#     type: number
#     sql: ${TABLE}.unique_social_impressions
