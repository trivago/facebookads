view: adsets {
  sql_table_name: at_test.facebook_adsets_1375720222652548 ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  #   - dimension: bid_info__clicks
  #     type: number
  #     sql: ${TABLE}.bid_info__clicks
  #
  #   - dimension: budget_remaining
  #     type: number
  #     sql: ${TABLE}.budget_remaining

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_time ;;
  }

  dimension: daily_budget {
    type: number
    sql: ${TABLE}.daily_budget ;;
  }

  dimension: effective_status {
    type: string
    sql: ${TABLE}.effective_status ;;
  }

  dimension_group: end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_time ;;
  }

  dimension: lifetime_budget {
    type: number
    sql: ${TABLE}.lifetime_budget ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_time ;;
  }

  dimension: targeting__age_max {
    type: number
    sql: ${TABLE}.targeting__age_max ;;
  }

  dimension: targeting__age_min {
    type: number
    sql: ${TABLE}.targeting__age_min ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
