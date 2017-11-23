view: identifiers {
  sql_table_name: crashlogs.identifiers ;;

  dimension: identifier_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.identifier_id ;;
  }

  dimension: zendesk_ticket_id {
    type: number
    sql: ${TABLE}.zendesk_ticket_id ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: edit_distance {
    type: string
    sql: ${TABLE}.edit_distance ;;
  }




  measure: count {
    type: count
    drill_fields: [identifier_id, zendesk_ticket_id, edit_distance, filename, string]
  }
}
