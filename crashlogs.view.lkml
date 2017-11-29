view: crashlogs {
  sql_table_name: crashlogs.crashlogs ;;

  dimension: crashlog_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.crashlog_id ;;
  }

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
    sql: SUBSTRING(${TABLE}.game_name, LOCATE("\\",${TABLE}.game_name)+1,LENGTH(${TABLE}.game_name)-LOCATE("\\",${TABLE}.game_name));;
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

  dimension: site_name_from_computer_name {
    type: string
    sql: SUBSTRING(computer_name, 1, 5) ;;
  }

  dimension: stack_trace {
    type: string
    sql: ${TABLE}.stack_trace ;;
  }

  dimension: zendesk_ticket_id {
    type: number
    sql: ${TABLE}.zendesk_ticket_id ;;
  }

  dimension: unity_version {
    type: string
    sql: ${TABLE}.unity_version ;;
  }

  measure: count {
    type: count
    drill_fields: [error_occurred_time, zendesk_ticket_id, game_name, game_version, unity_version, computer_name, site_name_from_computer_name, foldername]
  }
}
