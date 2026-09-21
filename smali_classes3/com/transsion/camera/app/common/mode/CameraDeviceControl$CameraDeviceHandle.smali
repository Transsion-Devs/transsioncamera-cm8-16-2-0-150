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

    .line 1144
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_c2

    .line 1140
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

    .line 1138
    :pswitch_1a
    const-string p0, "setLowConfigReduceLoading"

    return-object p0

    .line 1136
    :pswitch_1d
    const-string p0, "checkDisplayChanged"

    return-object p0

    .line 1134
    :pswitch_20
    const-string p0, "setBurstTag"

    return-object p0

    .line 1038
    :pswitch_23
    const-string/jumbo p0, "zoom_value_changed"

    return-object p0

    .line 1132
    :pswitch_27
    const-string p0, "setCaptureZSLTimestamps"

    return-object p0

    .line 1130
    :pswitch_2a
    const-string p0, "setCaptureTag"

    return-object p0

    .line 1128
    :pswitch_2d
    const-string/jumbo p0, "tripodModeChanged"

    return-object p0

    .line 1126
    :pswitch_31
    const-string p0, "switchOfflineSession"

    return-object p0

    .line 1124
    :pswitch_34
    const-string p0, "dualVideoFPSChange"

    return-object p0

    .line 1122
    :pswitch_37
    const-string p0, "reConfigureSession"

    return-object p0

    .line 1120
    :pswitch_3a
    const-string p0, "enablePreviewStream"

    return-object p0

    .line 1092
    :pswitch_3d
    const-string p0, "handleUpdateFocusMode"

    return-object p0

    .line 1106
    :pswitch_40
    const-string/jumbo p0, "updateSlavePreviewSurface"

    return-object p0

    .line 1104
    :pswitch_44
    const-string/jumbo p0, "update_slave_surface_support"

    return-object p0

    .line 1118
    :pswitch_48
    const-string p0, "setFaceDetectionListener"

    return-object p0

    .line 1116
    :pswitch_4b
    const-string/jumbo p0, "updateBackgroundPreviewSurface"

    return-object p0

    .line 1114
    :pswitch_4f
    const-string/jumbo p0, "update_background_surface_support"

    return-object p0

    .line 1112
    :pswitch_53
    const-string/jumbo p0, "update_background_surface_status"

    return-object p0

    .line 1110
    :pswitch_57
    const-string p0, "stopFaceDetection"

    return-object p0

    .line 1108
    :pswitch_5a
    const-string p0, "handleStopContinuousShotCount"

    return-object p0

    .line 1080
    :pswitch_5d
    const-string/jumbo p0, "videoHDRSnapShot"

    return-object p0

    .line 1102
    :pswitch_61
    const-string/jumbo p0, "updateAuxPreviewSurface"

    return-object p0

    .line 1100
    :pswitch_65
    const-string/jumbo p0, "update_aux_surface_support"

    return-object p0

    .line 1098
    :pswitch_69
    const-string/jumbo p0, "update_aux_surface_status"

    return-object p0

    .line 1096
    :pswitch_6d
    const-string/jumbo p0, "unregister_frame_result_callback"

    return-object p0

    .line 1094
    :pswitch_71
    const-string p0, "register_frame_result_callback"

    return-object p0

    .line 1090
    :pswitch_74
    const-string p0, "handleEnableVideoAutoFlash"

    return-object p0

    .line 1088
    :pswitch_77
    const-string p0, "handleTakePictureForRestriction"

    return-object p0

    .line 1086
    :pswitch_7a
    const-string p0, "handlePostRestriction"

    return-object p0

    .line 1084
    :pswitch_7d
    const-string p0, "handleShutterSoundPlay"

    return-object p0

    .line 1082
    :pswitch_80
    const-string p0, "handleRestoreParameters"

    return-object p0

    .line 1076
    :pswitch_83
    const-string/jumbo p0, "unInit"

    return-object p0

    .line 1078
    :pswitch_87
    const-string/jumbo p0, "videoSnapShot"

    return-object p0

    .line 1074
    :pswitch_8b
    const-string p0, "stopRecording"

    return-object p0

    .line 1072
    :pswitch_8e
    const-string p0, "startRecording"

    return-object p0

    .line 1070
    :pswitch_91
    const-string p0, "doRequestChangeSettingByKey"

    return-object p0

    .line 1068
    :pswitch_94
    const-string p0, "doRequestChangeCommand"

    return-object p0

    .line 1066
    :pswitch_97
    const-string p0, "doRequestChangeSettingValue"

    return-object p0

    .line 1064
    :pswitch_9a
    const-string p0, "[CapturePerformance] stopContinuousShot"

    return-object p0

    .line 1062
    :pswitch_9d
    const-string p0, "[CapturePerformance] startContinuousShot"

    return-object p0

    .line 1060
    :pswitch_a0
    const-string p0, "[CapturePerformance] cancelTakePicture"

    return-object p0

    .line 1058
    :pswitch_a3
    const-string p0, "[CapturePerformance] takePicture"

    return-object p0

    .line 1056
    :pswitch_a6
    const-string p0, "stopRepeating"

    return-object p0

    .line 1054
    :pswitch_a9
    const-string p0, "stopPreview"

    return-object p0

    .line 1052
    :pswitch_ac
    const-string p0, "startPreview"

    return-object p0

    .line 1050
    :pswitch_af
    const-string p0, "setSessionDisplay"

    return-object p0

    .line 1048
    :pswitch_b2
    const-string/jumbo p0, "updateSessionSize"

    return-object p0

    .line 1046
    :pswitch_b6
    const-string p0, "switchMode"

    return-object p0

    .line 1044
    :pswitch_b9
    const-string p0, "closeCamera"

    return-object p0

    .line 1042
    :pswitch_bc
    const-string p0, "openCamera"

    return-object p0

    .line 1040
    :pswitch_bf
    const-string p0, "handleSwitchParameters"

    return-object p0

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_3
        :pswitch_69
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

    .line 1166
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_234

    .line 1374
    :pswitch_7
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[processMessage] the message has not been defined"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1371
    :pswitch_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$msetLowConfigReduceLoading(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1368
    :pswitch_1f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleCheckDisplayChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1365
    :pswitch_29
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleContinuousDone(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1236
    :pswitch_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleZoomValueChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1361
    :pswitch_39
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetCaptureZSLTimestamps(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;[J)V

    return-void

    .line 1357
    :pswitch_43
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetCaptureTag(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void

    .line 1354
    :pswitch_51
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleTripodModeChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1351
    :pswitch_5f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSwitchOfflineSession(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void

    .line 1348
    :pswitch_6d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Range;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleChangeDualVideoFPS(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/util/Range;)V

    return-void

    .line 1345
    :pswitch_77
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleReConfigureSession(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1341
    :pswitch_7d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleEnablePreviewStream(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1290
    :pswitch_8b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateFocusMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1318
    :pswitch_95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSlavePreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1314
    :pswitch_9f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSlaveSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1337
    :pswitch_ad
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetFaceDetectionListener(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void

    .line 1333
    :pswitch_b7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1329
    :pswitch_c1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleBackgroundSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1325
    :pswitch_cf
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateBackgroundSurfaceStatus(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1322
    :pswitch_dd
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopFaceDetection(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1224
    :pswitch_e3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopContinuousShotCount(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1260
    :pswitch_e9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSnapShotForVideoHDR(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1310
    :pswitch_ef
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1306
    :pswitch_f9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleAuxSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1302
    :pswitch_107
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateAuxSurfaceStatus(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1298
    :pswitch_115
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUnRegisterFrameResultCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 1294
    :pswitch_11f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleRegisterFrameResultCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 1286
    :pswitch_129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleEnableVideoAutoFlash(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1282
    :pswitch_137
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleTakePictureForRestriction(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void

    .line 1278
    :pswitch_141
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandlerPostRestriction(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void

    .line 1270
    :pswitch_14b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_159

    .line 1271
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleShutterSoundPlay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1273
    :cond_159
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleShutterSoundPlay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void

    .line 1264
    :pswitch_163
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleRestoreParameters(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    .line 1252
    :pswitch_171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUnInit(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1256
    :pswitch_177
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSnapShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void

    .line 1248
    :pswitch_181
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopRecording(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1244
    :pswitch_187
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_192

    move v1, v2

    :cond_192
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStartRecording(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void

    .line 1240
    :pswitch_196
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleChangeParameterByKey(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;[Ljava/lang/String;)V

    return-void

    .line 1232
    :pswitch_1a0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleConfigCommand(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1228
    :pswitch_1aa
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleChangeParameter(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1220
    :pswitch_1b4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopContinuousShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1216
    :pswitch_1ba
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStartContinuousShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void

    .line 1212
    :pswitch_1c8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleCancelTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1208
    :pswitch_1ce
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1204
    :pswitch_1d4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopRepeating(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1200
    :pswitch_1da
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStopPreview(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1196
    :pswitch_1e0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleStartPreview(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void

    .line 1192
    :pswitch_1e6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1188
    :pswitch_1f0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void

    .line 1184
    :pswitch_1fa
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSwitchMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void

    .line 1176
    :pswitch_204
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fputmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    .line 1177
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmChangeParameterLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1178
    :try_start_210
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleCloseCamera(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 1179
    monitor-exit v0
    :try_end_216
    .catchall {:try_start_210 .. :try_end_216} :catchall_21c

    .line 1180
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fputmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    return-void

    :catchall_21c
    move-exception p0

    .line 1179
    :try_start_21d
    monitor-exit v0
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_21c

    throw p0

    .line 1172
    :pswitch_21f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleOpenCamera(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    .line 1168
    :pswitch_229
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mhandleSwitchParameters(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_229
        :pswitch_21f
        :pswitch_204
        :pswitch_1fa
        :pswitch_1f0
        :pswitch_1e6
        :pswitch_1e0
        :pswitch_1da
        :pswitch_1d4
        :pswitch_1ce
        :pswitch_1c8
        :pswitch_1ba
        :pswitch_1b4
        :pswitch_1aa
        :pswitch_1a0
        :pswitch_196
        :pswitch_187
        :pswitch_181
        :pswitch_177
        :pswitch_171
        :pswitch_163
        :pswitch_14b
        :pswitch_141
        :pswitch_137
        :pswitch_129
        :pswitch_11f
        :pswitch_115
        :pswitch_7
        :pswitch_107
        :pswitch_f9
        :pswitch_ef
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

    .line 1150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1151
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [Ljava/lang/String;

    const-string v3, " START, obj:"

    const-string v4, "[processMessage] "

    if-eqz v2, :cond_39

    .line 1152
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

    .line 1153
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1152
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5d

    .line 1155
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

    .line 1158
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1159
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->processMessage(Landroid/os/Message;)V

    .line 1160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1161
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
