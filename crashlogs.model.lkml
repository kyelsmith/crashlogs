connection: "crashlogs-tincandev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

#explore: crashlogs {
#  join: zendesk_problems {
#    type: left_outer
#    sql_on: ${crashlogs.zendesk_ticket_id} = ${zendesk_problems.zendesk_ticket_id} ;;
#    relationship: many_to_one
#  }
#}

#explore: identifiers {
#  join: zendesk_problems {
#    type: left_outer
#    sql_on: ${identifiers.zendesk_ticket_id} = ${zendesk_problems.zendesk_ticket_id};;
#    relationship: many_to_one
#  }
#}

explore: zendesk_problems {
  join: identifiers {
    type: left_outer
    sql_on: ${zendesk_problems.zendesk_ticket_id} = ${identifiers.zendesk_ticket_id} ;;
    relationship: one_to_many
  }
  join: crashlogs {
    type: left_outer
    sql_on: ${zendesk_problems.zendesk_ticket_id} = ${crashlogs.zendesk_ticket_id} ;;
    relationship: one_to_many
  }
}
