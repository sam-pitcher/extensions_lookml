view: user {
  sql_table_name: public."user" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: access_token {
    type: string
    sql: ${TABLE}."access_token" ;;
  }

  dimension: athlete_id {
    type: number
    sql: ${TABLE}."athlete_id" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: expires_at {
    type: string
    sql: ${TABLE}."expires_at" ;;
  }

  dimension: number_of_activities {
    type: number
    sql: ${TABLE}."number_of_activities" ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}."password_hash" ;;
  }

  dimension: refresh_token {
    type: string
    sql: ${TABLE}."refresh_token" ;;
  }

  dimension: strava_code {
    type: string
    sql: ${TABLE}."strava_code" ;;
  }

  dimension: timenow {
    type: string
    sql: ${TABLE}."timenow" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."username" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, username, activity.count, mappa.count]
  }
}
