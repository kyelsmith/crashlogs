view: identifiers {
  sql_table_name: crashlogs.identifiers ;;

  dimension: identifier_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.identifier_id ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }

  dimension: zendesk_ticket_id {
    type: number
    sql: ${TABLE}.zendesk_ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [identifier_id, filename]
  }
}
