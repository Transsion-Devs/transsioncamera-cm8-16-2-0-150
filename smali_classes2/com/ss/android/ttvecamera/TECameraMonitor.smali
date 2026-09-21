.class public Lcom/ss/android/ttvecamera/TECameraMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;
    }
.end annotation


# static fields
.field public static final TE_PREVIEW_CAMERA_RESOLUTION:Ljava/lang/String; = "te_preview_camera_resolution"

.field public static final TE_RECORD_CAMERA2_CREATE_SESSION_COST:Ljava/lang/String; = "te_record_camera2_create_session_cost"

.field public static final TE_RECORD_CAMERA2_CREATE_SESSION_RET:Ljava/lang/String; = "te_record_camera2_create_session_ret"

.field public static final TE_RECORD_CAMERA_1_START_PREVIEW_COST:Ljava/lang/String; = "te_record_camera1_start_preview_cost"

.field public static final TE_RECORD_CAMERA_1_STOP_PREVIEW_COST:Ljava/lang/String; = "te_record_camera1_stop_preview_cost"

.field public static final TE_RECORD_CAMERA_2_CLOSE_SESSION_COST:Ljava/lang/String; = "te_record_camera2_close_session_cost"

.field public static final TE_RECORD_CAMERA_2_SET_REPEATING_REQUEST_COST:Ljava/lang/String; = "te_record_camera2_set_repeating_request_cost"

.field public static final TE_RECORD_CAMERA_CLOSE_COST:Ljava/lang/String; = "te_record_camera_close_cost"

.field public static final TE_RECORD_CAMERA_CLOSE_IN_MAIN_THREAD:Ljava/lang/String; = "te_record_camera_close_in_main_thread"

.field public static final TE_RECORD_CAMERA_COLLECT_CAPBILITIES_COST:Ljava/lang/String; = "te_record_camera_collect_capbilities_cost"

.field public static final TE_RECORD_CAMERA_DEPTH_CAPACITY:Ljava/lang/String; = "te_record_camera_depth_capacity"

.field public static final TE_RECORD_CAMERA_DIRECTION:Ljava/lang/String; = "te_record_camera_direction"

.field public static final TE_RECORD_CAMERA_ERR_RET:Ljava/lang/String; = "te_record_camera_err_ret"

.field public static final TE_RECORD_CAMERA_FRAME_RATE:Ljava/lang/String; = "te_record_camera_frame_rate"

.field public static final TE_RECORD_CAMERA_FRONT_BACK_MULTICAM_COMBOS:Ljava/lang/String; = "te_record_camera_front_back_multicam_combos"

.field public static final TE_RECORD_CAMERA_HARDWARE_LEVEL:Ljava/lang/String; = "te_record_camera_hardware_level"

.field public static final TE_RECORD_CAMERA_HIGH_SPEED_VIDEO_FPS_RANGE:Ljava/lang/String; = "te_record_camera_high_speed_video_fps_range"

.field public static final TE_RECORD_CAMERA_IS_SUPPORT_ARCORE:Ljava/lang/String; = "te_record_camera_is_support_arcore"

.field public static final TE_RECORD_CAMERA_LOGICAL_MULTI_CAMERA_CAPACITY:Ljava/lang/String; = "te_record_camera_logical_multi_camera_capacity"

.field public static final TE_RECORD_CAMERA_MANUAL_3A_CAPACITY:Ljava/lang/String; = "te_record_camera_manual_3a_capability"

.field public static final TE_RECORD_CAMERA_MAX_FPS:Ljava/lang/String; = "te_record_camera_max_fps"

.field public static final TE_RECORD_CAMERA_MAX_LAG_TASK_COST:Ljava/lang/String; = "te_record_camera_max_lag_task_cost"

.field public static final TE_RECORD_CAMERA_OPEN_COST:Ljava/lang/String; = "te_record_camera_open_cost"

.field public static final TE_RECORD_CAMERA_OPEN_INFO:Ljava/lang/String; = "te_record_camera_open_info"

.field public static final TE_RECORD_CAMERA_OPEN_RET:Ljava/lang/String; = "te_record_camera_open_ret"

.field public static final TE_RECORD_CAMERA_PREVIEW_FIRST_FRAME_COST:Ljava/lang/String; = "te_record_camera_preview_first_frame_cost"

.field public static final TE_RECORD_CAMERA_PREVIEW_RET:Ljava/lang/String; = "te_record_camera_preview_ret"

.field public static final TE_RECORD_CAMERA_PUSH_CLOSE_TASK_TIME:Ljava/lang/String; = "te_record_camera_push_close_task_time"

.field public static final TE_RECORD_CAMERA_PUSH_OPEN_TASK_TIME:Ljava/lang/String; = "te_record_camera_push_open_task_time"

.field public static final TE_RECORD_CAMERA_SIZE:Ljava/lang/String; = "te_record_camera_size"

.field public static final TE_RECORD_CAMERA_STABILIZATION:Ljava/lang/String; = "te_record_camera_stabilization"

.field public static final TE_RECORD_CAMERA_START:Ljava/lang/String; = "te_record_camera_task_time_out_count"

.field public static final TE_RECORD_CAMERA_SUPPORT_APERTURES:Ljava/lang/String; = "te_record_camera_support_apertures"

.field public static final TE_RECORD_CAMERA_SUPPORT_EXTENSIONS:Ljava/lang/String; = "te_record_camera_support_extensions"

.field public static final TE_RECORD_CAMERA_SUPPORT_FPS_RANGE:Ljava/lang/String; = "te_record_camera_support_fps_range"

.field public static final TE_RECORD_CAMERA_SUPPORT_PREVIEW_SIZE:Ljava/lang/String; = "te_record_camera_support_preview_size"

.field public static final TE_RECORD_CAMERA_TASK_TIME_OUT_COUNT:Ljava/lang/String; = "te_record_camera_task_time_out_count"

.field public static final TE_RECORD_CAMERA_TYPE:Ljava/lang/String; = "te_record_camera_type"

.field public static final TE_RECORD_SEND_CAPTURE_COMMAND_COST:Ljava/lang/String; = "te_record_send_capture_command_cost"

.field private static volatile mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perfDouble(Ljava/lang/String;D)V
    .registers 4

    .line 99
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    if-eqz v0, :cond_9

    .line 100
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;->perfDouble(Ljava/lang/String;D)V

    :cond_9
    return-void
.end method

.method public static perfLong(Ljava/lang/String;J)V
    .registers 4

    .line 93
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    if-eqz v0, :cond_9

    .line 94
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;->perfLong(Ljava/lang/String;J)V

    :cond_9
    return-void
.end method

.method public static perfRational(Ljava/lang/String;FF)V
    .registers 4

    .line 105
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    if-eqz v0, :cond_9

    .line 106
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;->perfRational(Ljava/lang/String;FF)V

    :cond_9
    return-void
.end method

.method public static perfString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 111
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    if-eqz v0, :cond_9

    .line 112
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static register(Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;)V
    .registers 1

    .line 89
    sput-object p0, Lcom/ss/android/ttvecamera/TECameraMonitor;->mMonitor:Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;

    return-void
.end method
