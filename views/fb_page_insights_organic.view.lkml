view: fb_page_insights_organic {

  sql_table_name: `meta.pc_grl_fb-page_insights_organic_s` ;;
  drill_fields: [page_id]

  dimension: page_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.page_id ;;
  }

  dimension: daily_follows {
    type: number
    sql: ${TABLE}.daily_follows ;;
  }

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: fans {
    type: number
    sql: ${TABLE}.fans ;;
  }

  dimension: follows {
    type: number
    sql: ${TABLE}.follows ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: impressions_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.impressions_paid ;;
  }

  dimension: impressions_paid_unique {
    type: number
    sql: ${TABLE}.impressions_paid_unique ;;
  }

  dimension: impressions_unique {
    type: number
    sql: ${TABLE}.impressions_unique ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }

  dimension: post_engagements {
    type: number
    sql: ${TABLE}.post_engagements ;;
  }

  dimension: posts_impressions {
    type: number
    sql: ${TABLE}.posts_impressions ;;
  }

  dimension: posts_impressions_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.posts_impressions_paid ;;
  }

  dimension: posts_impressions_paid_unique {
    type: number
    sql: ${TABLE}.posts_impressions_paid_unique ;;
  }

  dimension: posts_impressions_unique {
    type: number
    sql: ${TABLE}.posts_impressions_unique ;;
  }

  measure: daily_follows_sum {
    type: sum
    sql: ${daily_follows} ;;
  }

  measure: impressions_sum {
    type: sum
    sql: ${impressions} ;;
  }

  measure: impressions_paid_sum {
    type: sum
    sql: ${impressions_paid} ;;
  }

  measure: impressions_paid_unique_sum {
    type: sum
    sql: ${impressions_paid_unique} ;;
  }

  measure: impressions_unique_sum {
    type: sum
    sql: ${impressions_unique} ;;
  }

  measure: post_engagements_sum {
    type: sum
    sql: ${post_engagements} ;;
  }

  measure: posts_impressions_sum {
    type: sum
    sql: ${posts_impressions} ;;
  }

  measure: posts_impressions_paid_sum {
    type: sum
    sql: ${posts_impressions_paid} ;;
  }

  measure: posts_impressions_paid_unique_sum {
    type: sum
    sql: ${posts_impressions_paid_unique} ;;
  }

  measure: posts_impressions_unique_sum {
    type: sum
    sql: ${posts_impressions_unique} ;;
  }

  measure: fans_max {
    type: max
    sql: ${fans} ;;
  }

  measure: follows_max {
    type: max
    sql: ${follows} ;;
  }
}
