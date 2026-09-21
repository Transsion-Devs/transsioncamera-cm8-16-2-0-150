.class Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V
    .registers 2

    .line 1564
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 1632
    const-string p1, "TECameraModeBase"

    const-string v0, "onConfigureFailed..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    const-wide/16 p0, 0x0

    .line 1635
    const-string v0, "te_record_camera2_create_session_ret"

    invoke-static {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    const/4 p0, 0x0

    .line 1636
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 8

    .line 1567
    const-string v0, "TECameraModeBase-onConfigured"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1569
    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-wide v3, v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionStartTimestamp:J

    sub-long v3, v0, v3

    .line 1571
    iput-wide v3, v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionConsume:J

    .line 1572
    iput-wide v0, v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFirstRepeatingRequestStartTimestamp:J

    const/4 v0, 0x0

    .line 1573
    iput-boolean v0, v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    .line 1575
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iput-object p1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1577
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_95

    .line 1579
    :try_start_23
    iget-boolean v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    if-nez v1, :cond_73

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 1580
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 1583
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 1584
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iput-boolean v2, v1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :catch_71
    move-exception p1

    goto :goto_92

    .line 1587
    :cond_73
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSessionFinalized:Z

    if-nez v0, :cond_95

    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    if-eqz v0, :cond_95

    .line 1588
    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 1589
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iput-boolean v2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSessionFinalized:Z

    .line 1590
    const-string p1, "TECameraModeBase"

    const-string v0, "finalizeOutputConfigurations in session onConfigured"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_91} :catch_71

    goto :goto_95

    .line 1593
    :goto_92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1598
    :cond_95
    :goto_95
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    if-eqz v0, :cond_a1

    iget-boolean v0, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSessionFinalized:Z

    if-eqz v0, :cond_cd

    .line 1600
    :cond_a1
    :try_start_a1
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updateCapture()I

    move-result p1

    if-eqz p1, :cond_cd

    .line 1602
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    .line 1604
    new-instance v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;-><init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;I)V

    .line 1610
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v1, :cond_c1

    .line 1611
    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_cd

    :catch_bf
    move-exception p1

    goto :goto_c5

    .line 1613
    :cond_c1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c4} :catch_bf

    goto :goto_cd

    .line 1617
    :goto_c5
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    .line 1618
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_cd
    :goto_cd
    const-wide/16 p0, 0x1

    .line 1622
    const-string v0, "te_record_camera2_create_session_ret"

    invoke-static {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1623
    const-string p0, "te_record_camera2_create_session_cost"

    invoke-static {p0, v3, v4}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1624
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1625
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1627
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method
