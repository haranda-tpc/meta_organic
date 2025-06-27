view: ig_page_insights_organic {
  sql_table_name: `pr-mktg-analyt-prod.meta.pc_grl_ig-page-insights-organic-s` ;;

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

  dimension: ig_id {
    type: string
    sql: ${TABLE}.ig_id ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  measure: total_comments {
    type: sum
    sql: ${comments} ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  measure: total_likes {
    type: sum
    sql: ${likes} ;;
  }

  dimension: profile_views {
    type: number
    sql: ${TABLE}.profile_views ;;
  }

  measure: total_profile_views {
    type: sum
    sql: ${profile_views} ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  measure: total_reach {
    type: sum
    sql: ${reach} ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  measure: total_shares {
    type: sum
    sql: ${shares} ;;
  }

  dimension: total_interactions {
    type: number
    sql: ${TABLE}.total_interactions ;;
  }

  measure: total_total_interactions {
    type: sum
    sql: ${total_interactions} ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: total_views {
    type: sum
    sql: ${views} ;;
  }

  dimension: website_clicks {
    type: number
    sql: ${TABLE}.website_clicks ;;
  }

  measure: total_website_clicks {
    type: sum
    sql: ${website_clicks} ;;
  }
}
