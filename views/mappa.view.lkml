view: mappa {
  sql_table_name: public.mappa ;;
  drill_fields: [mappa_id]

  dimension: mappa_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."mappa_id" ;;
  }

  dimension: activity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."activity_id" ;;
  }

  dimension: altitude {
    type: string
    sql: ${TABLE}."altitude" ;;
  }

  dimension: altitude_url {
    type: string
    sql: ${TABLE}."altitude_url" ;;
  }

  dimension: avg_heartrate {
    type: string
    sql: ${TABLE}."avg_heartrate" ;;
  }

  dimension: avg_power {
    type: string
    sql: ${TABLE}."avg_power" ;;
  }

  dimension: avg_speed {
    type: string
    sql: ${TABLE}."avg_speed" ;;
  }

  dimension: distance {
    type: string
    sql: ${TABLE}."distance" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."duration" ;;
  }

  dimension: elevation {
    type: string
    sql: ${TABLE}."elevation" ;;
  }

  dimension: epoch {
    type: number
    sql: ${TABLE}."epoch" ;;
  }

  dimension: icon_url {
    type: string
    sql: ${TABLE}."icon_url" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_complete {
    type: yesno
    sql: ${TABLE}."is_complete" ;;
  }

  dimension: mappa_url {
    type: string
    sql: ${TABLE}."mappa_url" ;;
  }

  dimension: max_heartrate {
    type: string
    sql: ${TABLE}."max_heartrate" ;;
  }

  dimension: max_power {
    type: string
    sql: ${TABLE}."max_power" ;;
  }

  dimension: max_speed {
    type: string
    sql: ${TABLE}."max_speed" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: name_id {
    type: string
    sql: ${TABLE}."name_id" ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}."route" ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      mappa_id,
      name,
      user.id,
      user.username,
      activity.activity_id,
      activity.name
    ]
  }
}
