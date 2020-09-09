view: activity {
  sql_table_name: public.activity ;;
  drill_fields: [activity_id]

  dimension: activity_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."activity_id" ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}."activity_type" ;;
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

  dimension: elapsed_time {
    type: string
    sql: ${TABLE}."elapsed_time" ;;
  }

  dimension: elevation {
    type: string
    sql: ${TABLE}."elevation" ;;
  }

  dimension: end_lat {
    type: string
    sql: ${TABLE}."end_lat" ;;
  }

  dimension: end_lng {
    type: string
    sql: ${TABLE}."end_lng" ;;
  }

  dimension: epoch {
    type: number
    sql: ${TABLE}."epoch" ;;
  }

  dimension: gear_id {
    type: string
    sql: ${TABLE}."gear_id" ;;
  }

  dimension: icon_url {
    type: string
    sql: ${TABLE}."icon_url" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_commute {
    type: yesno
    sql: ${TABLE}."is_commute" ;;
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

  dimension: maxs {
    type: string
    sql: ${TABLE}."maxs" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: name_id {
    type: string
    sql: ${TABLE}."name_id" ;;
  }

  dimension: polyline {
    type: string
    sql: ${TABLE}."polyline" ;;
  }

  dimension: start_lat {
    type: string
    sql: ${TABLE}."start_lat" ;;
  }

  dimension: start_lng {
    type: string
    sql: ${TABLE}."start_lng" ;;
  }

  dimension: streams {
    type: string
    sql: ${TABLE}."streams" ;;
  }

  dimension: timenow {
    type: string
    sql: ${TABLE}."timenow" ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [activity_id, name, user.id, user.username, mappa.count]
  }
}
