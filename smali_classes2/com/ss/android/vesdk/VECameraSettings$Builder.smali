.class public Lcom/ss/android/vesdk/VECameraSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings;-><init>(Lcom/ss/android/vesdk/VECameraSettings$1;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VECameraSettings;)V
    .registers 2

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    return-void
.end method


# virtual methods
.method public bindSurfaceLifecycleToCamera(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1709
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1502(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public build()Lcom/ss/android/vesdk/VECameraSettings;
    .registers 1

    .line 2028
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    return-object p0
.end method

.method public enableCameraPreviewIndependent(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1964
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3602(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public enableForceRestartWhenCameraError(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1699
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1402(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public enableFrontFacingVideoContinueFocus(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1634
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enableFrontFacingVideoContinueFocus"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public enablePreviewingFallback(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1986
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3802(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public enableRecord60Fps(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1859
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2702(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public enableRecordStream(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1849
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2602(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public enableRefactorFocusAndMeter(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1688
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1302(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public enableRetryOpenCamera(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1598
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$902(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public enableShutterSound(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1609
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enableShutterSound"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public enableSwitchFlashSleepToTakeEffect(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1645
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enableSwitchFlashSleepToTakeEffect"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public enableYuvBufferCapture(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1719
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1602(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public forceRunUpdateTexImg(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1622
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "forceRunUpdateTexImg"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public overrideWithCloudConfig()Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setCamera2RetryCnt(I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1889
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3002(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public setCameraAiNightVideo(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1566
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_ai_night_video"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setCameraAntiShake(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1522
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$502(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setCameraFacing(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 6

    .line 1475
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "wide_camera_id"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings;->access$102(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1476
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$202(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0
.end method

.method public setCameraFacing(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Ljava/lang/String;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1487
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$202(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 1488
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VECameraSettings;->access$102(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCameraModeType(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1942
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3402(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    return-object p0
.end method

.method public setCameraSuperAntiShake(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1555
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_super_Stabilization"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setCameraType(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1499
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 1500
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$402(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setCameraVideoAntiShake(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1544
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_video_stabilization"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setCameraVideoHDR(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1533
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # getter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_video_hdr"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setCameraZoomLimitFactor(F)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    move p1, v0

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_d

    move p1, v0

    .line 1752
    :cond_d
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1802(Lcom/ss/android/vesdk/VECameraSettings;F)F

    return-object p0
.end method

.method public setCaptureFlashStrategy(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1953
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3502(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    return-object p0
.end method

.method public setCaptureSize(II)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 5

    .line 1899
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3102(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public setDefaultCameraTypeInNewCameraTypeStrategy(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1996
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mDefaultCameraTypeInNewCameraStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3902(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0
.end method

.method public setDefaultZoomRatio(F)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 2006
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    iput p1, v0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultZoomRatio:F

    return-object p0
.end method

.method public setEnableFallback(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1656
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1002(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setEnableZsl(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1667
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1102(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setExtParameters(Landroid/os/Bundle;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1931
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$602(Lcom/ss/android/vesdk/VECameraSettings;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public setFps(I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1775
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mFps:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2002(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public setFpsMaxLimit(I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_5

    move p1, v0

    .line 1732
    :cond_5
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1702(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public setFpsRange([I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1797
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2202(Lcom/ss/android/vesdk/VECameraSettings;[I)[I

    .line 1798
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->DYNAMIC_FRAMERATE_WITHOUT_SELECT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$2302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    return-object p0
.end method

.method public setHwLevel(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1786
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2102(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    return-object p0
.end method

.method public setIsUseNewCameraTypeStrategy(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1511
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$402(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setMaxWidth(I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1909
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3202(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public setMaxWidthTakePictureSizeAccuracy(F)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1587
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$802(Lcom/ss/android/vesdk/VECameraSettings;F)F

    return-object p0
.end method

.method public setOptionFlag(B)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1826
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2502(Lcom/ss/android/vesdk/VECameraSettings;B)B

    return-object p0
.end method

.method public setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 4

    .line 1918
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    .line 1919
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string v0, "ve_enable_titan_nv21_buffer_render_chain"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1920
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VECameraSettings;->access$3302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    :cond_1d
    return-object p0
.end method

.method public setPreferOpenCameraByCameraId(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1974
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$3702(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setPreviewSize(II)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 5

    .line 1764
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1902(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public setRecordStreamFolderPath(Ljava/lang/String;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1869
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2802(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRetryCnt(I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1836
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$902(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public setRetryStartPreviewCnt(I)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1879
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2902(Lcom/ss/android/vesdk/VECameraSettings;I)I

    return-object p0
.end method

.method public setSceneMode(Ljava/lang/String;)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1809
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$2402(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setUseMaxWidthTakePicture(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1577
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$702(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method

.method public setUseSyncModeOnCamera2(Z)Lcom/ss/android/vesdk/VECameraSettings$Builder;
    .registers 3

    .line 1678
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings$Builder;->mExportCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    # setter for: Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->access$1202(Lcom/ss/android/vesdk/VECameraSettings;Z)Z

    return-object p0
.end method
