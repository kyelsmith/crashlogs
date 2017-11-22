view: collaborator_ids {
  sql_table_name: zendesk.collaborator_ids ;;

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [tickets.id]
  }
}
