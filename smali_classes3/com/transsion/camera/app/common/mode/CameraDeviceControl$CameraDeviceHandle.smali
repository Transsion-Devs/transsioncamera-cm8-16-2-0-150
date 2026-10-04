.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDeviceHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/os/Looper;)V
    .registers 3

    .line 1108
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_be

    .line 1104
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1102
    :pswitch_1a
    const-string p0, "setLowConfigReduceLoading"

    return-object p0

    .line 1100
    :pswitch_1d
    const-string p0, "checkDisplayChanged"

    return-object p0

    .line 1098
    :pswitch_20
    const-string p0, "setBurstTag"

    return-object p0

    .line 1004
    :pswitch_23
    const-string/jumbo p0, "zoom_value_changed"

    return-object p0

    .line 1096
    :pswitch_27
    const-string p0, "setCaptureZSLTimestamps"

    return-object p0

    .line 1094
    :pswitch_2a
    const-string p0, "setCaptureTag"

    return-object p0

    .line 1092
    :pswitch_2d
    const-string/jumbo p0, "tripodModeChanged"

    return-object p0

    .line 1090
    :pswitch_31
    const-string p0, "switchOfflineSession"

    return-object p0

    .line 1088
    :pswitch_34
    const-string p0, "dualVideoFPSChange"

    return-object p0

    .line 1086
    :pswitch_37
    const-string p0, "reConfigureSession"

    return-object p0

    .line 1084
    :pswitch_3a
    const-string p0, "enablePreviewStream"

    return-object p0

    .line 1056
    :pswitch_3d
    const-string p0, "handleUpdateFocusMode"

    return-object p0

    .line 1070
    :pswitch_40
    const-string/jumbo p0, "updateSlavePreviewSurface"

    return-object p0

    .line 1068
    :pswitch_44
    const-string/jumbo p0, "update_slave_surface_support"

    return-object p0

    .line 1082
    :pswitch_48
    const-string p0, "setFaceDetectionListener"

    return-object p0

    .line 1080
    :pswitch_4b
    const-string/jumbo p0, "updateBackgroundPreviewSurface"

    return-object p0

    .line 1078
    :pswitch_4f
    const-string/jumbo p0, "update_background_surface_support"

    return-object p0

    .line 1076
    :pswitch_53
    const-string/jumbo p0, "update_background_surface_status"

    return-object p0

    .line 1074
    :pswitch_57
    const-string p0, "stopFaceDetection"

    return-object p0

    .line 1072
    :pswitch_5a
    const-string p0, "handleStopContinuousShotCount"

    return-object p0

    .line 1066
    :pswitch_5d
    const-string/jumbo p0, "updateAuxPreviewSurface"

    return-object p0

    .line 1064
    :pswitch_61
    const-string/jumbo p0, "update_aux_surface_support"

    return-object p0

    .line 1062
    :pswitch_65
    const-string/jumbo p0, "update_aux_surface_status"

    return-object p0

    .line 1060
    :pswitch_69
    const-string/jumbo p0, "unregister_frame_result_callback"

    return-object p0

    .line 1058
    :pswitch_6d
    const-string p0, "register_frame_result_callback"

    return-object p0

    .line 1054
    :pswitch_70
    const-string p0, "handleEnableVideoAutoFlash"

    return-object p0

    .line 1052
    :pswitch_73
    const-string p0, "handleTakePictureForRestriction"

    return-object p0

    .line 1050
    :pswitch_76
    const-string p0, "handlePostRestriction"

    return-object p0

    .line 1048
    :pswitch_79
    const-string p0, "handleShutterSoundPlay"

    return-object p0

    .line 1046
    :pswitch_7c
    const-string p0, "handleRestoreParameters"

    return-object p0

    .line 1042
    :pswitch_7f
    const-string/jumbo p0, "unInit"

    return-object p0

    .line 1044
    :pswitch_83
    const-string/jumbo p0, "videoSnapShot"

    return-object p0

    .line 1040
    :pswitch_87
    const-string p0, "stopRecording"

    return-object p0

    .line 1038
    :pswitch_8a
    const-string p0, "startRecording"

    return-object p0

    .line 1036
    :pswitch_8d
    const-string p0, "doRequestChangeSettingByKey"

    return-object p0

    .line 1034
    :pswitch_90
    const-string p0, "doRequestChangeCommand"

    return-object p0

    .line 1032
    :pswitch_93
    const-string p0, "doRequestChangeSettingValue"

    return-object p0

    .line 1030
    :pswitch_96
    const-string p0, "[CapturePerformance] stopContinuousShot"

    return-object p0

    .line 1028
    :pswitch_99
    const-string p0, "[CapturePerformance] startContinuousShot"

    return-object p0

    .line 1026
    :pswitch_9c
    const-string p0, "[CapturePerformance] cancelTakePicture"

    return-object p0

    .line 1024
    :pswitch_9f
    const-string p0, "[CapturePerformance] takePicture"

    return-object p0

    .line 1022
    :pswitch_a2
    const-string p0, "stopRepeating"

    return-object p0

    .line 1020
    :pswitch_a5
    const-string p0, "stopPreview"

    return-object p0

    .line 1018
    :pswitch_a8
    const-string p0, "startPreview"

    return-object p0

    .line 1016
    :pswitch_ab
    const-string p0, "setSessionDisplay"

    return-object p0

    .line 1014
    :pswitch_ae
    const-string/jumbo p0, "updateSessionSize"

    return-object p0

    .line 1012
    :pswitch_b2
    const-string p0, "switchMode"

    return-object p0

    .line 1010
    :pswitch_b5
    const-string p0, "closeCamera"

    return-object p0

    .line 1008
    :pswitch_b8
    const-string p0, "openCamera"

    return-object p0

    .line 1006
    :pswitch_bb
    const-string p0, "handleSwitchParameters"

    return-object p0

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_3
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 5

    .line 1130
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_22e

    .line 1334
    :pswitch_7
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[processMessage] the message has not been defined"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1331
    :pswitch_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$msetLowConfigReduceLoading(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1328
    :pswitch_1f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleCheckDisplayChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1325
    :pswitch_29
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleContinuousDone(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1200
    :pswitch_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleZoomValueChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1321
    :pswitch_39
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetCaptureZSLTimestamps(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;[J)V

    return-void

    .line 1317
    :pswitch_43
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetCaptureTag(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void

    .line 1314
    :pswitch_51
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleTripodModeChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1311
    :pswitch_5f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSwitchOfflineSession(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void

    .line 1308
    :pswitch_6d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Range;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleChangeDualVideoFPS(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/util/Range;)V

    return-void

    .line 1305
    :pswitch_77
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleReConfigureSession(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1301
    :pswitch_7d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleEnablePreviewStream(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1250
    :pswitch_8b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateFocusMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1278
    :pswitch_95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSlavePreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1274
    :pswitch_9f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSlaveSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1297
    :pswitch_ad
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetFaceDetectionListener(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void

    .line 1293
    :pswitch_b7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1289
    :pswitch_c1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleBackgroundSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1285
    :pswitch_cf
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateBackgroundSurfaceStatus(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1282
    :pswitch_dd
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopFaceDetection(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1188
    :pswitch_e3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopContinuousShotCount(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1270
    :pswitch_e9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1266
    :pswitch_f3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleAuxSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1262
    :pswitch_101
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateAuxSurfaceStatus(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1258
    :pswitch_10f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUnRegisterFrameResultCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 1254
    :pswitch_119
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleRegisterFrameResultCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 1246
    :pswitch_123
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleEnableVideoAutoFlash(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1242
    :pswitch_131
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleTakePictureForRestriction(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void

    .line 1238
    :pswitch_13b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandlerPostRestriction(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void

    .line 1230
    :pswitch_145
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_153

    .line 1231
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleShutterSoundPlay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1233
    :cond_153
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleShutterSoundPlay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void

    .line 1224
    :pswitch_15d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleRestoreParameters(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1216
    :pswitch_16b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUnInit(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1220
    :pswitch_171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSnapShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void

    .line 1212
    :pswitch_17b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopRecording(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1208
    :pswitch_181
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_18c

    move v1, v2

    :cond_18c
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStartRecording(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void

    .line 1204
    :pswitch_190
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleChangeParameterByKey(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;[Ljava/lang/String;)V

    return-void

    .line 1196
    :pswitch_19a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleConfigCommand(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1192
    :pswitch_1a4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleChangeParameter(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1184
    :pswitch_1ae
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopContinuousShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1180
    :pswitch_1b4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStartContinuousShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void

    .line 1176
    :pswitch_1c2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleCancelTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1172
    :pswitch_1c8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1168
    :pswitch_1ce
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopRepeating(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1164
    :pswitch_1d4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopPreview(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1160
    :pswitch_1da
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStartPreview(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1156
    :pswitch_1e0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1152
    :pswitch_1ea
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void

    .line 1148
    :pswitch_1f4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSwitchMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void

    .line 1140
    :pswitch_1fe
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fputmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    .line 1141
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmChangeParameterLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1142
    :try_start_20a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleCloseCamera(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 1143
    monitor-exit v0
    :try_end_210
    .catchall {:try_start_20a .. :try_end_210} :catchall_216

    .line 1144
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fputmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    :catchall_216
    move-exception p0

    .line 1143
    :try_start_217
    monitor-exit v0
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw p0

    .line 1136
    :pswitch_219
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleOpenCamera(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1132
    :pswitch_223
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSwitchParameters(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_223
        :pswitch_219
        :pswitch_1fe
        :pswitch_1f4
        :pswitch_1ea
        :pswitch_1e0
        :pswitch_1da
        :pswitch_1d4
        :pswitch_1ce
        :pswitch_1c8
        :pswitch_1c2
        :pswitch_1b4
        :pswitch_1ae
        :pswitch_1a4
        :pswitch_19a
        :pswitch_190
        :pswitch_181
        :pswitch_17b
        :pswitch_171
        :pswitch_16b
        :pswitch_15d
        :pswitch_145
        :pswitch_13b
        :pswitch_131
        :pswitch_123
        :pswitch_119
        :pswitch_10f
        :pswitch_7
        :pswitch_101
        :pswitch_f3
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_cf
        :pswitch_c1
        :pswitch_b7
        :pswitch_ad
        :pswitch_9f
        :pswitch_95
        :pswitch_8b
        :pswitch_7d
        :pswitch_77
        :pswitch_6d
        :pswitch_5f
        :pswitch_51
        :pswitch_43
        :pswitch_39
        :pswitch_2f
        :pswitch_29
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1115
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [Ljava/lang/String;

    const-string v3, " START, obj:"

    const-string v4, "[processMessage] "

    if-eqz v2, :cond_39

    .line 1116
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 1117
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1116
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5d

    .line 1119
    :cond_39
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_5d
    const/16 v2, -0x14

    .line 1122
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1123
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->processMessage(Landroid/os/Message;)V

    .line 1124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1125
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " END process time = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
