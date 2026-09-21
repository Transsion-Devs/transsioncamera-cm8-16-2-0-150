.class public Lcom/ss/android/ttve/monitor/ApplogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_BEHAVIOR:Ljava/lang/String; = "behavior"

.field public static final EVENT_TYPE_PERFORMANCE:Ljava/lang/String; = "performance"

.field public static final TAG:Ljava/lang/String; = "ApplogUtils"

.field public static final VESDK_EVECT_EDITOR_EXTRACT_FRAME_TIME:Ljava/lang/String; = "vesdk_event_editor_extract_frame_time"

.field public static final VESDK_EVENT_API:Ljava/lang/String; = "vesdk_api"

.field public static final VESDK_EVENT_CAMERA_ARCORE:Ljava/lang/String; = "vesdk_event_camera_arcore"

.field public static final VESDK_EVENT_CAMERA_EXPOSURE_COMPENSATION:Ljava/lang/String; = "vesdk_event_camera_exposure_compensation"

.field public static final VESDK_EVENT_CAMERA_FLASH_MODE:Ljava/lang/String; = "vesdk_event_camera_flash_mode"

.field public static final VESDK_EVENT_CAMERA_NIGHT_OPT:Ljava/lang/String; = "vesdk_event_camera_night_opt"

.field public static final VESDK_EVENT_CAMERA_STABLIZATION:Ljava/lang/String; = "vesdk_event_camera_stablization"

.field public static final VESDK_EVENT_CAMERA_TYPE:Ljava/lang/String; = "vesdk_event_camera_type"

.field public static final VESDK_EVENT_CAMERA_WIDE_ANGLE:Ljava/lang/String; = "vesdk_event_camera_wide_angle"

.field public static final VESDK_EVENT_CAMERA_ZOOM:Ljava/lang/String; = "vesdk_event_camera_zoom"

.field public static final VESDK_EVENT_COMMON_HW_RESOURCE_LIMIT_SIZE:Ljava/lang/String; = "vesdk_event_common_hw_resource_limit_size"

.field public static final VESDK_EVENT_DID_CHANGE_FLASH_MODE:Ljava/lang/String; = "vesdk_event_did_change_flash_mode"

.field public static final VESDK_EVENT_DID_START_CAMERA:Ljava/lang/String; = "vesdk_event_did_start_camera"

.field public static final VESDK_EVENT_DID_START_MIC:Ljava/lang/String; = "vesdk_event_did_start_mic"

.field public static final VESDK_EVENT_DID_STOP_CAMERA:Ljava/lang/String; = "vesdk_event_did_stop_camera"

.field public static final VESDK_EVENT_DID_STOP_MIC:Ljava/lang/String; = "vesdk_event_did_stop_mic"

.field public static final VESDK_EVENT_EDITOR_AMAZING_EFFECT:Ljava/lang/String; = "vesdk_event_editor_amazing_effect"

.field public static final VESDK_EVENT_EDITOR_AUDIO_FILTER:Ljava/lang/String; = "vesdk_event_editor_audio_filter"

.field public static final VESDK_EVENT_EDITOR_AUDIO_TRACK:Ljava/lang/String; = "vesdk_event_editor_audio_track"

.field public static final VESDK_EVENT_EDITOR_CANVAS:Ljava/lang/String; = "vesdk_event_editor_canvas"

.field public static final VESDK_EVENT_EDITOR_COLOR_FILTER:Ljava/lang/String; = "vesdk_event_editor_color_filter"

.field public static final VESDK_EVENT_EDITOR_COMPILE:Ljava/lang/String; = "vesdk_event_editor_compile"

.field public static final VESDK_EVENT_EDITOR_COMPILE_FINISH:Ljava/lang/String; = "vesdk_event_editor_compile_finish"

.field public static final VESDK_EVENT_EDITOR_EXTERNAL_VIDEO_TRACK:Ljava/lang/String; = "vesdk_event_editor_external_video_track"

.field public static final VESDK_EVENT_EDITOR_FILTER_EFFECT:Ljava/lang/String; = "vesdk_event_editor_filter_effect"

.field public static final VESDK_EVENT_EDITOR_FILTER_EFFECT_END:Ljava/lang/String; = "vesdk_event_editor_filter_effect_end"

.field public static final VESDK_EVENT_EDITOR_FIRST_FRAME_DRAW:Ljava/lang/String; = "vesdk_event_editor_first_frame_draw"

.field public static final VESDK_EVENT_EDITOR_IMAGE_STICKER:Ljava/lang/String; = "vesdk_event_editor_image_sticker"

.field public static final VESDK_EVENT_EDITOR_INFO_STICKER:Ljava/lang/String; = "vesdk_event_editor_info_sticker"

.field public static final VESDK_EVENT_EDITOR_INIT:Ljava/lang/String; = "vesdk_event_editor_init"

.field public static final VESDK_EVENT_EDITOR_INIT_MV:Ljava/lang/String; = "vesdk_event_editor_init_mv"

.field public static final VESDK_EVENT_EDITOR_INIT_VIDEO:Ljava/lang/String; = "vesdk_event_editor_init_video"

.field public static final VESDK_EVENT_EDITOR_LAST_SEEK_FINISH:Ljava/lang/String; = "vesdk_event_editor_last_seek_finish"

.field public static final VESDK_EVENT_EDITOR_OPT_CONFIG:Ljava/lang/String; = "vesdk_event_editor_opt_config"

.field public static final VESDK_EVENT_EDITOR_REVERSE_VIDEO:Ljava/lang/String; = "vesdk_event_editor_reverse_video"

.field public static final VESDK_EVENT_EDITOR_SCALE_ROTATE_TRANS:Ljava/lang/String; = "vesdk_event_editor_scale_rotate_trans"

.field public static final VESDK_EVENT_EDITOR_TRACK_FILTER_EFFECT:Ljava/lang/String; = "vesdk_event_editor_track_filter_effect"

.field public static final VESDK_EVENT_EDITOR_TRANSITION_CHANGE_BY_NAME:Ljava/lang/String; = "vesdk_event_editor_transition_change_by_name"

.field public static final VESDK_EVENT_EDITOR_TRANSITION_CHANGE_BY_PARAMS:Ljava/lang/String; = "vesdk_event_editor_transition_change_by_params"

.field public static final VESDK_EVENT_EDITOR_UPDATE_SCENE_TIME:Ljava/lang/String; = "vesdk_event_editor_update_scene_time"

.field public static final VESDK_EVENT_EDITOR_VIDEO_TRACK_TRANSFORM:Ljava/lang/String; = "vesdk_event_editor_video_track_transform"

.field public static final VESDK_EVENT_IMAGE_ADD_FILTER:Ljava/lang/String; = "vesdk_event_image_add_filter"

.field public static final VESDK_EVENT_IMAGE_ADD_INFO_STICKER:Ljava/lang/String; = "vesdk_event_image_add_info_sticker"

.field public static final VESDK_EVENT_IMAGE_EXPORT:Ljava/lang/String; = "vesdk_event_image_export"

.field public static final VESDK_EVENT_IMAGE_INIT:Ljava/lang/String; = "vesdk_event_image_init"

.field public static final VESDK_EVENT_IMAGE_SWITCH_LENS_HDR:Ljava/lang/String; = "vesdk_event_image_switch_lens_hdr"

.field public static final VESDK_EVENT_INIT:Ljava/lang/String; = "vesdk_event_init"

.field public static final VESDK_EVENT_KEY_SECOND_APP_ID:Ljava/lang/String; = "second_appid"

.field public static final VESDK_EVENT_KEY_SECOND_APP_NAME:Ljava/lang/String; = "second_appname"

.field public static final VESDK_EVENT_PHOTO_MOVIE_INIT:Ljava/lang/String; = "vesdk_event_photo_movie_init"

.field public static final VESDK_EVENT_RECORDER_BEAUTY_FACE:Ljava/lang/String; = "vesdk_event_recorder_beauty_face"

.field public static final VESDK_EVENT_RECORDER_BEAUTY_FACE_INTENSITY:Ljava/lang/String; = "vesdk_event_recorder_beauty_face_intensity"

.field public static final VESDK_EVENT_RECORDER_CAMERA_SENSOR_FRAME_INTERVAL:Ljava/lang/String; = "vesdk_event_camera_sensor_frame_interval"

.field public static final VESDK_EVENT_RECORDER_CHANGE_CAMERA:Ljava/lang/String; = "vesdk_event_recorder_change_camera"

.field public static final VESDK_EVENT_RECORDER_COMPOSER:Ljava/lang/String; = "vesdk_event_recorder_composer"

.field public static final VESDK_EVENT_RECORDER_FACE_MAKE_UP:Ljava/lang/String; = "vesdk_event_recorder_face_make_up"

.field public static final VESDK_EVENT_RECORDER_FACE_MAKE_UP_INTENSITY:Ljava/lang/String; = "vesdk_event_recorder_face_make_up_intensity"

.field public static final VESDK_EVENT_RECORDER_FACE_RESHAPE:Ljava/lang/String; = "vesdk_event_recorder_face_reshape"

.field public static final VESDK_EVENT_RECORDER_INIT_DUET:Ljava/lang/String; = "vesdk_event_recorder_init_duet"

.field public static final VESDK_EVENT_RECORDER_RECORD_FINISH:Ljava/lang/String; = "vesdk_event_recorder_record_finish"

.field public static final VESDK_EVENT_RECORDER_SHOT_SCREEN:Ljava/lang/String; = "vesdk_event_recorder_shot_screen"

.field public static final VESDK_EVENT_RECORDER_SINGLE_FILTER:Ljava/lang/String; = "vesdk_event_recorder_single_filter"

.field public static final VESDK_EVENT_RECORDER_SKINTONE:Ljava/lang/String; = "vesdk_event_recorder_skintone"

.field public static final VESDK_EVENT_RECORDER_SKINTONE_INTENSITY:Ljava/lang/String; = "vesdk_event_recorder_skintone_intensity"

.field public static final VESDK_EVENT_RECORDER_START_PREVIEW_ASYNC:Ljava/lang/String; = "vesdk_event_recorder_start_preview_async"

.field public static final VESDK_EVENT_RECORDER_START_RECORD_ASYNC:Ljava/lang/String; = "vesdk_event_recorder_start_record_async"

.field public static final VESDK_EVENT_RECORDER_SWITCH_EFFECT:Ljava/lang/String; = "vesdk_event_recorder_switch_effect"

.field public static final VESDK_EVENT_RECORDER_TAKE_PICTURE:Ljava/lang/String; = "vesdk_event_recorder_take_picture"

.field public static final VESDK_EVENT_RESULT_CODE_KEY:Ljava/lang/String; = "resultCode"

.field public static final VESDK_EVENT_RESULT_TIP_KEY:Ljava/lang/String; = "resultInfo"

.field public static final VESDK_EVENT_WILL_CHANGE_FLASH_MODE:Ljava/lang/String; = "vesdk_event_will_change_flash_mode"

.field public static final VESDK_EVENT_WILL_START_CAMERA:Ljava/lang/String; = "vesdk_event_will_start_camera"

.field public static final VESDK_EVENT_WILL_START_MIC:Ljava/lang/String; = "vesdk_event_will_start_mic"

.field public static final VESDK_EVENT_WILL_STOP_CAMERA:Ljava/lang/String; = "vesdk_event_will_stop_camera"

.field public static final VESDK_EVENT_WILL_STOP_MIC:Ljava/lang/String; = "vesdk_event_will_stop_mic"

.field public static final VESDK_EVERNT_EDITOR_CLIP_INSERT:Ljava/lang/String; = "vesdk_event_editor_clip_insert"

.field private static mListener:Lcom/ss/android/ttve/monitor/ApplogUtils$Listener; = null

.field private static s_bReportToBusiness:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 0

    .line 161
    invoke-static {}, Lcom/ss/android/ttve/monitor/ApplogUtilsInvoker;->nativeInit()V

    return-void
.end method

.method public static onClientEventJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 183
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_b
    const/4 p1, 0x1

    .line 187
    invoke-static {p0, v0, p2, p3, p1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V
    .registers 12

    .line 214
    const-string v0, "11.8.4.8-alpha.142-cy-tob-tob"

    if-nez p1, :cond_9

    .line 217
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_9
    move-object v3, p1

    .line 220
    :try_start_a
    const-string p1, "sdkVersion"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    move-object p1, v0

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    :goto_15
    sget-boolean p1, Lcom/ss/android/ttve/monitor/ApplogUtils;->s_bReportToBusiness:Z

    if-nez p1, :cond_1f

    if-eqz p4, :cond_1c

    goto :goto_1f

    :cond_1c
    move-object v1, p0

    move-object v2, p2

    goto :goto_27

    :cond_1f
    :goto_1f
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 226
    invoke-static/range {v1 .. v6}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEventReport(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_27
    if-eqz p3, :cond_45

    .line 230
    :try_start_29
    const-string p0, "second_appid"

    const-string p1, "1357"

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string p0, "second_appname"

    const-string p1, "video_editor_sdk"

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_37} :catch_38

    goto :goto_3d

    :catch_38
    move-exception v0

    move-object p0, v0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    :goto_3d
    const-string v5, "video_editor_sdk"

    const/4 v6, 0x0

    const-string v4, "1357"

    invoke-static/range {v1 .. v6}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEventReport(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_45
    return-void
.end method

.method public static onEventJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 170
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 174
    :goto_b
    invoke-static {p0, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private static onEventReport(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onEventReport "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ApplogUtils"

    invoke-static {p4, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string p3, "ApplogUtils-onEventReport"

    invoke-static {p3}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 244
    invoke-static {p0, p2, p1, p5}, Lcom/ss/android/ttve/monitor/AppLogCompat;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 245
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void
.end method

.method public static declared-synchronized setListener(Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;)V
    .registers 4

    const-class v0, Lcom/ss/android/ttve/monitor/ApplogUtils;

    monitor-enter v0

    .line 155
    :try_start_3
    sput-object p0, Lcom/ss/android/ttve/monitor/ApplogUtils;->mListener:Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;

    .line 156
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/ss/android/ttve/monitor/AppLogCompat;->setAppCallback(Ljava/lang/String;Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;Z)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 157
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static setReportToBusiness(Z)V
    .registers 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReportToBusiness "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplogUtils"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sput-boolean p0, Lcom/ss/android/ttve/monitor/ApplogUtils;->s_bReportToBusiness:Z

    return-void
.end method
