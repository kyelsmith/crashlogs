view: zendesk_problems {
  sql_table_name: crashlogs.zendesk_problems ;;

  dimension_group: date_created {
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
    sql: ${TABLE}.date_created ;;
  }

  dimension_group: date_resolved {
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
    sql: ${TABLE}.date_resolved ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: severity_multiplier {
    type: number
    sql: ${TABLE}.severity_multiplier ;;
  }

  dimension: stack_trace_example {
    type: string
    sql: ${TABLE}.stack_trace_example ;;
  }

  dimension: zendesk_ticket_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.zendesk_ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
