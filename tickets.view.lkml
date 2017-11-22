view: tickets {
  sql_table_name: zendesk.tickets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow_channelback {
    type: yesno
    sql: ${TABLE}.allow_channelback ;;
  }

  dimension: assignee_id {
    type: number
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: brand_id {
    type: number
    sql: ${TABLE}.brand_id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_at ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: forum_topic_id {
    type: number
    sql: ${TABLE}.forum_topic_id ;;
  }

  dimension: generated_timestamp {
    type: number
    sql: ${TABLE}.generated_timestamp ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: has_incidents {
    type: yesno
    sql: ${TABLE}.has_incidents ;;
  }

  dimension: is_public {
    type: yesno
    sql: ${TABLE}.is_public ;;
  }

  dimension: metric_setagent_wait_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-agent_wait_time_in_minutes-business` ;;
  }

  dimension: metric_setagent_wait_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-agent_wait_time_in_minutes-calendar` ;;
  }

  dimension_group: metric_setassigned {
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
    sql: ${TABLE}.`metric_set-assigned_at` ;;
  }

  dimension: metric_setassignee_stations {
    type: number
    sql: ${TABLE}.`metric_set-assignee_stations` ;;
  }

  dimension_group: metric_setassignee_updated {
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
    sql: ${TABLE}.`metric_set-assignee_updated_at` ;;
  }

  dimension_group: metric_setcreated {
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
    sql: ${TABLE}.`metric_set-created_at` ;;
  }

  dimension: metric_setfirst_resolution_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-first_resolution_time_in_minutes-business` ;;
  }

  dimension: metric_setfirst_resolution_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-first_resolution_time_in_minutes-calendar` ;;
  }

  dimension: metric_setfull_resolution_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-full_resolution_time_in_minutes-business` ;;
  }

  dimension: metric_setfull_resolution_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-full_resolution_time_in_minutes-calendar` ;;
  }

  dimension: metric_setgroup_stations {
    type: number
    sql: ${TABLE}.`metric_set-group_stations` ;;
  }

  dimension: metric_setid {
    type: number
    value_format_name: id
    sql: ${TABLE}.`metric_set-id` ;;
  }

  dimension_group: metric_setinitially_assigned {
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
    sql: ${TABLE}.`metric_set-initially_assigned_at` ;;
  }

  dimension_group: metric_setlatest_comment_added {
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
    sql: ${TABLE}.`metric_set-latest_comment_added_at` ;;
  }

  dimension: metric_seton_hold_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-on_hold_time_in_minutes-business` ;;
  }

  dimension: metric_seton_hold_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-on_hold_time_in_minutes-calendar` ;;
  }

  dimension: metric_setreopens {
    type: number
    sql: ${TABLE}.`metric_set-reopens` ;;
  }

  dimension: metric_setreplies {
    type: number
    sql: ${TABLE}.`metric_set-replies` ;;
  }

  dimension: metric_setreply_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-reply_time_in_minutes-business` ;;
  }

  dimension: metric_setreply_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-reply_time_in_minutes-calendar` ;;
  }

  dimension_group: metric_setrequester_updated {
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
    sql: ${TABLE}.`metric_set-requester_updated_at` ;;
  }

  dimension: metric_setrequester_wait_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-requester_wait_time_in_minutes-business` ;;
  }

  dimension: metric_setrequester_wait_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-requester_wait_time_in_minutes-calendar` ;;
  }

  dimension_group: metric_setsolved {
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
    sql: ${TABLE}.`metric_set-solved_at` ;;
  }

  dimension_group: metric_setstatus_updated {
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
    sql: ${TABLE}.`metric_set-status_updated_at` ;;
  }

  dimension_group: metric_setupdated {
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
    sql: ${TABLE}.`metric_set-updated_at` ;;
  }

  dimension: metric_seturl {
    type: string
    sql: ${TABLE}.`metric_set-url` ;;
  }

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: problem_id {
    type: number
    sql: ${TABLE}.problem_id ;;
  }

  dimension: raw_subject {
    type: string
    sql: ${TABLE}.raw_subject ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: requester_id {
    type: number
    sql: ${TABLE}.requester_id ;;
  }

  dimension: satisfaction_ratingscore {
    type: string
    sql: ${TABLE}.`satisfaction_rating-score` ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: submitter_id {
    type: number
    sql: ${TABLE}.submitter_id ;;
  }

  dimension: ticket_form_id {
    type: number
    sql: ${TABLE}.ticket_form_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: viachannel {
    type: string
    sql: ${TABLE}.`via-channel` ;;
  }

  dimension: viasourcefrom {
    type: string
    sql: ${TABLE}.`via-source-from` ;;
  }

  dimension: viasourcerel {
    type: string
    sql: ${TABLE}.`via-source-rel` ;;
  }

  dimension: viasourceto {
    type: string
    sql: ${TABLE}.`via-source-to` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      organizations.name,
      organizations.id,
      collaborator_ids.count,
      custom_fields.count,
      fields.count,
      follower_ids.count,
      followup_ids.count,
      tags.count
    ]
  }
}
