view: crashlogs {
  sql_table_name: crashlogs.crashlogs ;;

  dimension: analysis_version {
    type: number
    sql: ${TABLE}.analysis_version ;;
  }

  dimension: computer_name {
    type: string
    sql: ${TABLE}.computer_name ;;
  }

  dimension: computer_name_site {
    type: string
    sql: IF(SUBSTRING(${TABLE}.computer_name, 6, 1) = "-",
          LEFT(${TABLE}.computer_name,5),
          ${TABLE}.computer_name);;
  }

  dimension_group: error_occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.error_occurred_at ;;
  }

  dimension: foldername {
    type: string
    sql: ${TABLE}.foldername ;;
  }

  dimension: game_name {
    type: string
    sql: ${TABLE}.game_name ;;
  }

  dimension: game_version {
    type: string
    sql: ${TABLE}.game_version ;;
  }

  dimension: memory_in_use {
    type: number
    sql: ${TABLE}.memory_in_use ;;
  }

  dimension: site_id {
    type: number
    sql: ${TABLE}.site_id ;;
  }

  dimension: zendesk_ticket_id {
    type: number
    sql: ${TABLE}.zendesk_ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [analysis_version, computer_name, error_occurred_time, foldername, game_name, game_version, memory_in_use, site_id, zendesk_ticket_id]
  }

  measure: max {
    type: max
    drill_fields: [analysis_version, computer_name, error_occurred_time, foldername, game_name, game_version, memory_in_use, site_id, zendesk_ticket_id]
  }
}
