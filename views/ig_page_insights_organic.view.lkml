view: ig_page_insights_organic {
  sql_table_name: `pr-mktg-analyt-prod.meta.pc_grl_ig-page-insights-organic-s` ;;

  dimension: ig_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ig_id ;;
  }

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  measure: comments_sum {
    type: sum
    sql: ${comments} ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  measure: likes_sum {
    type: sum
    sql: ${likes} ;;
  }

  dimension: profile_views {
    type: number
    sql: ${TABLE}.profile_views ;;
  }

  measure: profile_views_sum {
    type: sum
    sql: ${profile_views} ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  measure: reach_sum {
    type: sum
    sql: ${reach} ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  measure: shares_sum {
    type: sum
    sql: ${shares} ;;
  }

  dimension: total_interactions {
    type: number
    sql: ${TABLE}.total_interactions ;;
  }

  measure: total_interactions_sum {
    type: sum
    sql: ${total_interactions} ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: views_sum {
    type: sum
    sql: ${views} ;;
  }

  dimension: website_clicks {
    type: number
    sql: ${TABLE}.website_clicks ;;
  }

  measure: website_clicks_sum {
    type: sum
    sql: ${website_clicks} ;;
  }
}
