view: ad_actions_by_age_and_gender {
  sql_table_name: at_test.facebook_ads_insights_age_and_gender_1375720222652548 ;;
  #   - dimension: 1d_click
  #     type: number
  #     sql: ${TABLE}.1d_click
  #
  #   - dimension: 1d_view
  #     type: number
  #     sql: ${TABLE}.1d_view
  #
  #   - dimension: 28d_click
  #     type: number
  #     sql: ${TABLE}.28d_click
  #
  #   - dimension: 28d_view
  #     type: number
  #     sql: ${TABLE}.28d_view
  #
  #   - dimension: 7d_click
  #     type: number
  #     sql: ${TABLE}.7d_click
  #
  #   - dimension: 7d_view
  #     type: number
  #     sql: ${TABLE}.7d_view

  dimension: ad_id {
    type: string
    sql: ${TABLE}._rjm_source_key_ad_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}._rjm_source_key_adset_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}._rjm_source_key_campaign_id ;;
  }

  dimension: date_start {
    type: string
    sql: ${TABLE}._rjm_source_key_date_start ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}._rjm_source_key_gender ;;
  }

  dimension: action_destination_by_age_and_gender {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_type_by_age_and_gender {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value_by_age_and_gender {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count_by_age_and_gender {
    type: count
    drill_fields: []
  }
}
