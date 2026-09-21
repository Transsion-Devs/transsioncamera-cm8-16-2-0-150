.class public Lcom/ss/android/vesdk/VECameraConfigCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final abDefaultInfo:Ljava/lang/String; = "[{\"key\" : \"ve_camera_type\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"camera type\"},{\"key\": \"ve_is_in_camera2_blocklist\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"is in camera2 blocklist\"},{\"key\": \"ve_camera_wide_angle\",\"dataType\": 1,\"defaultVal\": -1,\"description\": \"wide angle\"},{\"key\": \"ve_camera_stablization\",\"dataType\": 1,\"defaultVal\": -1,\"description\": \"stablization\"},{\"key\": \"ve_camera_fps_range\",\"dataType\": 1,\"defaultVal\": 7,\"description\": \"camera lowest fps\"},{\"key\": \"ve_camera_focus_timeout\",\"dataType\": 1,\"defaultVal\": 2500,\"description\": \"camera focus timeout in ms\"},{\"key\": \"ve_camera_enable_previewing_fallback\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"camera enable previewing fallback\"},{\"key\":\"ve_enable_wide_fov_for_samsung\",\"dataType\":0,\"defaultVal\": false,\"description\": \"enable wide fov\"},{\"key\": \"ve_camera_open_close_sync\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"camera open close sync\"},{\"key\": \"ve_force_close_camera_when_timeout\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"if force close camera when close time out\"},{\"key\": \"frame_rate_strategy\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"frame rate strategy\"},{\"key\": \"is_use_setrecordinghint\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"is use setrecordinghint\"},{\"key\": \"ve_camera_fps_max\",\"dataType\": 1,\"defaultVal\": 30,\"description\": \"camera fps max limit\"},{\"key\": \"ve_enable_open_camera1_optimize\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"enable open camera1 optimize\"},{\"key\": \"ve_enable_open_camera1_crs\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable open camera1 crash\"},{\"key\": \"ve_enable_gc_for_camera_metadata\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"enable manual gc for camera metadata\"},{\"key\": \"ve_camera_scene_diff_fps_opt\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera scene diff fps opt\"},{\"key\": \"ve_enable_refactor_camera_focus\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable refactor camera focus\"},{\"key\": \"ve_enable_camera2_zsl_capture\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera2 zsl capture\"},{\"key\": \"ve_enable_yuv_buffer_capture\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera yuv buffer capture\"},{\"key\": \"ve_enable_camera_capture_stream\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"enable take picture via camera capture stream\"},{\"key\": \"ve_enable_camera_devices_cache\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera devices cache to optimize SelectCamera\"},{\"key\": \"ve_camera_ai_augmentation\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"ai augmentation\"},{\"key\": \"ve_enable_face_detection\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"enable face detection and strategy\"},{\"key\": \"ve_enable_camera_api2_detect\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera api2 detection\"},{\"key\": \"ve_enable_camera_metadata\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera metadata\"},{\"key\": \"ve_disable_camera_hdr\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"disable camera hdr\"},{\"key\": \"ve_enable_camera_noise_reduce\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable noise reduce for vendor camera\"},{\"key\": \"ve_support_camera_multicam_zoom\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera2 multicam zoom\"},{\"key\": \"ve_camera_zoom_ratio_max\",\"dataType\": 2,\"defaultVal\": -1,\"description\": \"camera2 multicam zoom ratio max value\"},{\"key\": \"ve_camera_zoom_ratio_min\",\"dataType\": 2,\"defaultVal\": -1,\"description\": \"camera2 multicam zoom ratio min value\"},{\"key\": \"ve_enable_camera_preview_template\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"camera session template of video mode\"},{\"key\": \"ve_enable_camera2_deferred_surface\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable deferred surface to createCaptureSession\"},{\"key\": \"ve_enable_camera2_monitor_gyroscope\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable monitor gyroscope for camera2 focus\"},{\"key\": \"ve_enable_collect_camera_capbilities\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable collect camera capbilities\"}]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestABInfo()Ljava/lang/String;
    .registers 4

    .line 248
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 250
    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "[{\"key\" : \"ve_camera_type\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"camera type\"},{\"key\": \"ve_is_in_camera2_blocklist\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"is in camera2 blocklist\"},{\"key\": \"ve_camera_wide_angle\",\"dataType\": 1,\"defaultVal\": -1,\"description\": \"wide angle\"},{\"key\": \"ve_camera_stablization\",\"dataType\": 1,\"defaultVal\": -1,\"description\": \"stablization\"},{\"key\": \"ve_camera_fps_range\",\"dataType\": 1,\"defaultVal\": 7,\"description\": \"camera lowest fps\"},{\"key\": \"ve_camera_focus_timeout\",\"dataType\": 1,\"defaultVal\": 2500,\"description\": \"camera focus timeout in ms\"},{\"key\": \"ve_camera_enable_previewing_fallback\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"camera enable previewing fallback\"},{\"key\":\"ve_enable_wide_fov_for_samsung\",\"dataType\":0,\"defaultVal\": false,\"description\": \"enable wide fov\"},{\"key\": \"ve_camera_open_close_sync\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"camera open close sync\"},{\"key\": \"ve_force_close_camera_when_timeout\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"if force close camera when close time out\"},{\"key\": \"frame_rate_strategy\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"frame rate strategy\"},{\"key\": \"is_use_setrecordinghint\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"is use setrecordinghint\"},{\"key\": \"ve_camera_fps_max\",\"dataType\": 1,\"defaultVal\": 30,\"description\": \"camera fps max limit\"},{\"key\": \"ve_enable_open_camera1_optimize\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"enable open camera1 optimize\"},{\"key\": \"ve_enable_open_camera1_crs\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable open camera1 crash\"},{\"key\": \"ve_enable_gc_for_camera_metadata\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"enable manual gc for camera metadata\"},{\"key\": \"ve_camera_scene_diff_fps_opt\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera scene diff fps opt\"},{\"key\": \"ve_enable_refactor_camera_focus\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable refactor camera focus\"},{\"key\": \"ve_enable_camera2_zsl_capture\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera2 zsl capture\"},{\"key\": \"ve_enable_yuv_buffer_capture\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera yuv buffer capture\"},{\"key\": \"ve_enable_camera_capture_stream\",\"dataType\": 0,\"defaultVal\": true,\"description\": \"enable take picture via camera capture stream\"},{\"key\": \"ve_enable_camera_devices_cache\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera devices cache to optimize SelectCamera\"},{\"key\": \"ve_camera_ai_augmentation\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"ai augmentation\"},{\"key\": \"ve_enable_face_detection\",\"dataType\": 1,\"defaultVal\": 0,\"description\": \"enable face detection and strategy\"},{\"key\": \"ve_enable_camera_api2_detect\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera api2 detection\"},{\"key\": \"ve_enable_camera_metadata\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera metadata\"},{\"key\": \"ve_disable_camera_hdr\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"disable camera hdr\"},{\"key\": \"ve_enable_camera_noise_reduce\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable noise reduce for vendor camera\"},{\"key\": \"ve_support_camera_multicam_zoom\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable camera2 multicam zoom\"},{\"key\": \"ve_camera_zoom_ratio_max\",\"dataType\": 2,\"defaultVal\": -1,\"description\": \"camera2 multicam zoom ratio max value\"},{\"key\": \"ve_camera_zoom_ratio_min\",\"dataType\": 2,\"defaultVal\": -1,\"description\": \"camera2 multicam zoom ratio min value\"},{\"key\": \"ve_enable_camera_preview_template\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"camera session template of video mode\"},{\"key\": \"ve_enable_camera2_deferred_surface\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable deferred surface to createCaptureSession\"},{\"key\": \"ve_enable_camera2_monitor_gyroscope\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable monitor gyroscope for camera2 focus\"},{\"key\": \"ve_enable_collect_camera_capbilities\",\"dataType\": 0,\"defaultVal\": false,\"description\": \"enable collect camera capbilities\"}]"

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 251
    :goto_d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 252
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    :cond_21
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
