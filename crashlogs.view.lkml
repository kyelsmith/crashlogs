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
    drill_fields: [foldername, game_name, computer_name]
  }
}
