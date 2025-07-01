view: ig_post_insights_organic{
  sql_table_name: `pr-mktg-analyt-prod.meta.pc_grl_ig-post-insights-organic-s` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: caption {
    type: string
    sql: ${TABLE}.caption ;;
  }
  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: ig_id {
    type: string
    sql: ${TABLE}.ig_id ;;
  }
  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }
  dimension: media_product_type {
    type: string
    sql: ${TABLE}.media_product_type ;;
  }
  dimension: media_type {
    type: string
    sql: ${TABLE}.media_type ;;
  }
  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }
  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }
  dimension: saved {
    type: number
    sql: ${TABLE}.saved ;;
  }
  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.timestamp ;;
  }
  dimension: total_interactions {
    type: number
    sql: ${TABLE}.total_interactions ;;
  }
  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: comments_max {
    type: max
    sql: ${TABLE}.comments ;;
  }

  measure: likes_max {
    type: max
    sql: ${TABLE}.likes ;;
  }

  measure: reach_max {
    type: max
    sql: ${TABLE}.reach ;;
  }

  measure: saved_max {
    type: max
    sql: ${TABLE}.saved ;;
  }

  measure: shares_max {
    type: max
    sql: ${TABLE}.shares ;;
  }

  measure: total_interactions_max {
    type: max
    sql: ${TABLE}.total_interactions ;;
  }

  measure: views_max {
    type: max
    sql: ${TABLE}.views ;;
  }
}
