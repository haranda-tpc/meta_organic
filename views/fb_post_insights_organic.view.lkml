view: fb_post_insights_organic {
  sql_table_name: `pr-mktg-analyt-prod.meta.pc_grl_fb-post_insights_organic_s` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: attachments {
    type: string
    sql: ${TABLE}.attachments ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension: created_time {
    type: string
    sql: ${TABLE}.created_time ;;
  }

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: likes {
    type: number
    sql:${TABLE}.likes ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: page_id {
    type: string
    sql: ${TABLE}.page_id ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }

  dimension: post_clicks {
    type: number
    sql: ${TABLE}.post_clicks ;;
  }

  dimension: post_impressions {
    type: number
    sql: ${TABLE}.post_impressions ;;
  }

  dimension: post_impressions_organic {
    type: number
    sql: ${TABLE}.post_impressions_organic ;;
  }

  dimension: post_impressions_organic_unique {
    type: number
    sql: ${TABLE}.post_impressions_organic_unique ;;
  }

  dimension: post_impressions_paid_unique {
    type: number
    sql: ${TABLE}.post_impressions_paid_unique ;;
  }

  dimension: post_impressions_unique {
    type: number
    sql: ${TABLE}.post_impressions_unique ;;
  }

  dimension: reactions {
    type: number
    sql: ${TABLE}.reactions ;;
  }

  dimension: scheduled_publish_time {
    type: string
    sql: ${TABLE}.scheduled_publish_time ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  measure: comments_sum {
    type: sum
    sql: ${comments} ;;
  }

  measure: likes_sum {
    type: sum
    sql: ${likes} ;;
  }
  measure: shares_sum {
    type: sum
    sql: ${shares} ;;
  }

  measure: reactions_sum {
    type: sum
    sql: ${reactions} ;;
  }

  measure: post_clicks_sum {
    type: sum
    sql: ${post_clicks} ;;
  }

  measure: post_impressions_sum {
    type: sum
    sql: ${post_impressions} ;;
  }

  measure: post_impressions_organic_sum {
    type: sum
    sql: ${post_impressions_organic} ;;
  }

  measure: post_impressions_organic_unique_sum {
    type: sum
    sql: ${post_impressions_organic_unique} ;;
  }

  measure: post_impressions_unique_sum {
    type: sum
    sql: ${post_impressions_unique} ;;
  }

  measure: post_impressions_paid_unique_sum {
    type: sum
    sql: ${post_impressions_paid_unique} ;;
  }

}
