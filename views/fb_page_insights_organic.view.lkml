# The name of this view in Looker is "Pc Grl Fbpage Insights Organic S"
view: page_insights {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `meta.pc_grl_fb-page_insights_organic_s` ;;
  drill_fields: [page_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: page_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.page_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Daily Follows" in Explore.

  dimension: daily_follows {
    type: number
    sql: ${TABLE}.daily_follows ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
  measure: count {
    type: count
    drill_fields: [page_id, page_name]
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
