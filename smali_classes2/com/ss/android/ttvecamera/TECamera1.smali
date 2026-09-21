.class public Lcom/ss/android/ttvecamera/TECamera1;
.super Lcom/ss/android/ttvecamera/TECameraBase;
.source "SourceFile"


# static fields
.field private static final MIN_GAP_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "TECamera1"


# instance fields
.field mCameraDevice:Landroid/hardware/Camera;

.field private mCameraLightOn:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mExposureCompensation:I

.field private mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

.field private mHasPreviewBufferFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNumberOfCameras:I

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mStartPreviewTime:J

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedVideoSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUseFaceAE:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomValue:F


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V
    .registers 7

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ttvecamera/TECameraBase;-><init>(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V

    .line 38
    const-string p2, ""

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mDefaultFocusMode:Ljava/lang/String;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    .line 40
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPreviewSizes:Ljava/util/List;

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPictureSizes:Ljava/util/List;

    .line 42
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedVideoSizes:Ljava/util/List;

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    const/high16 p4, 0x42c80000    # 100.0f

    .line 44
    iput p4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    .line 45
    iput p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mExposureCompensation:I

    .line 46
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mHasPreviewBufferFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mStartPreviewTime:J

    .line 49
    iput p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mUseFaceAE:I

    .line 50
    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    .line 62
    new-instance p2, Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 p4, 0x1

    invoke-direct {p2, p1, p4}, Lcom/ss/android/ttvecamera/TECameraSettings;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 63
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    invoke-direct {p1, p4}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;-><init>(I)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    .line 64
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/TECamera1;)Landroid/hardware/Camera$Parameters;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/TECamera1;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mUseFaceAE:I

    return p0
.end method

.method private applyCaptureScene()V
    .registers 3

    .line 667
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    if-eqz v0, :cond_18

    .line 669
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 670
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 672
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    return-void
.end method

.method private applyRecordScene()V
    .registers 3

    .line 678
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    if-eqz v0, :cond_18

    .line 680
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 681
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 683
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    return-void
.end method

.method public static convertRanges(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameRateRange;",
            ">;"
        }
    .end annotation

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1770
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1771
    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_28
    return-object v0
.end method

.method public static convertSizes(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1761
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1762
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1763
    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_26
    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera1;
    .registers 5

    .line 57
    new-instance v0, Lcom/ss/android/ttvecamera/TECamera1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECamera1;-><init>(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V

    return-object v0
.end method

.method private getNearestZoomIndex(I)I
    .registers 7

    .line 1450
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    sub-int v3, v0, v2

    if-le v3, v1, :cond_23

    add-int v3, v2, v0

    .line 1452
    div-int/lit8 v3, v3, 0x2

    .line 1453
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p1, v4, :cond_21

    move v2, v3

    goto :goto_9

    :cond_21
    move v0, v3

    goto :goto_9

    .line 1460
    :cond_23
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-le v1, p0, :cond_49

    return v0

    :cond_49
    return v2
.end method

.method private getSupportedFpsRanges()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameRateRange;",
            ">;"
        }
    .end annotation

    .line 1846
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1850
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    .line 1851
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECamera1;->convertRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedVideoSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_18

    .line 1838
    :cond_b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedVideoSizes:Ljava/util/List;

    return-object v0

    .line 1835
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedVideoSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1836
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedVideoSizes:Ljava/util/List;

    return-object p0
.end method

.method private initCamera()I
    .registers 13

    .line 1506
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const-string v1, "TECamera1"

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 1508
    const-string v0, "initCamera: Camera is not opened!"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v3, -0x191

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1513
    :cond_16
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 1516
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1524
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_6c

    .line 1525
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1526
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v2

    move v7, v5

    :goto_31
    const/16 v9, 0x3e8

    if-ge v7, v3, :cond_57

    .line 1529
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1530
    aget v10, v8, v5

    if-lt v10, v9, :cond_41

    move v11, v2

    goto :goto_42

    :cond_41
    move v11, v5

    :goto_42
    if-lt v10, v9, :cond_46

    .line 1533
    div-int/lit16 v10, v10, 0x3e8

    .line 1534
    :cond_46
    aget v8, v8, v2

    if-lt v8, v9, :cond_4c

    div-int/lit16 v8, v8, 0x3e8

    :cond_4c
    filled-new-array {v10, v8}, [I

    move-result-object v8

    .line 1535
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v8, v11

    goto :goto_31

    .line 1537
    :cond_57
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    invoke-interface {v3, v6}, Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;->config(Ljava/util/List;)[I

    move-result-object v3

    if-eqz v8, :cond_6d

    if-eqz v3, :cond_6d

    .line 1539
    aget v6, v3, v5

    mul-int/2addr v6, v9

    aput v6, v3, v5

    .line 1540
    aget v6, v3, v2

    mul-int/2addr v6, v9

    aput v6, v3, v2

    goto :goto_6d

    :cond_6c
    move-object v3, v4

    :cond_6d
    :goto_6d
    if-nez v3, :cond_97

    .line 1545
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->getFpsUnitFactor(Ljava/util/List;)I

    move-result v3

    .line 1546
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v7, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    iget v8, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    invoke-virtual {v6, v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->mulFactor(I)[I

    move-result-object v3

    invoke-static {v7, v8, v3, v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->getFpsRange(II[ILjava/util/List;)[I

    move-result-object v3

    if-nez v3, :cond_97

    .line 1549
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_97

    .line 1550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [I

    :cond_97
    if-eqz v3, :cond_3f8

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected FPS Range: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v6, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    aget v7, v3, v5

    aget v8, v3, v2

    invoke-direct {v6, v7, v8}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    invoke-virtual {v6}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x79

    invoke-interface {v0, v7, v5, v6, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1560
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    if-eqz v0, :cond_f1

    .line 1561
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;->getPreviewSize(Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 1563
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-object v0, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto :goto_101

    .line 1565
    :cond_e0
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 1566
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1565
    invoke-static {v6, v7}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    iput-object v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto :goto_101

    .line 1570
    :cond_f1
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 1571
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1570
    invoke-static {v6, v7}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    iput-object v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1579
    :goto_101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preview Size:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    .line 1584
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    const/16 v7, 0x100

    const/16 v8, 0x11

    if-eqz v6, :cond_137

    if-eqz v0, :cond_137

    .line 1586
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    move v0, v8

    goto :goto_138

    :cond_137
    move v0, v7

    .line 1589
    :goto_138
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    if-ne v0, v7, :cond_146

    .line 1593
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1596
    :cond_146
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v7, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    if-eqz v7, :cond_16a

    .line 1597
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 1598
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 1599
    invoke-virtual {v7}, Lcom/ss/android/ttvecamera/TECameraSettings;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v7

    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v9, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    iget v8, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 1597
    invoke-static {v0, v7, v9, v8}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;IF)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iput-object v0, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto/16 :goto_1e0

    .line 1602
    :cond_16a
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    if-eqz v6, :cond_1c6

    .line 1603
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1604
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-ne v0, v8, :cond_1ac

    if-eqz v6, :cond_1ac

    .line 1607
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_185
    :goto_185
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1608
    iget v9, v8, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    rem-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_185

    iget v9, v8, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    rem-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_185

    .line 1609
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_185

    .line 1612
    :cond_1a1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 1613
    const-string v0, "final pic sizes is empty..."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_1ac
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 1618
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1620
    :cond_1b5
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;->getPictureSize(Ljava/util/List;Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    goto :goto_1c7

    :cond_1c6
    move-object v0, v4

    :goto_1c7
    if-eqz v0, :cond_1ce

    .line 1624
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-object v0, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto :goto_1e0

    .line 1626
    :cond_1ce
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 1627
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v8, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1626
    invoke-static {v6, v8, v7}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    iput-object v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1638
    :goto_1e0
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v0, :cond_208

    .line 1639
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget v7, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v6, v7, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Picture Size:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20d

    .line 1642
    :cond_208
    const-string v0, "No closest supported picture size"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :goto_20d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v7, v6, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v6, v6, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v0, v7, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1646
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    if-eqz v0, :cond_22e

    const-string v6, "enable_dim_light_quality"

    .line 1647
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22e

    aget v0, v3, v5

    aget v6, v3, v2

    if-gt v0, v6, :cond_247

    .line 1649
    :cond_22e
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    aget v6, v3, v5

    aget v3, v3, v2

    invoke-virtual {v0, v6, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1650
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsUseHint:Z

    if-eqz v0, :cond_247

    .line 1651
    const-string v0, "use setRecordingHint"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1656
    :cond_247
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mImageFormat:I

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 1659
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mExposureCompensation:I

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1662
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    const-string v3, ""

    if-eqz v0, :cond_28e

    .line 1663
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    const-string v6, "te_record_camera_stabilization"

    if-eqz v0, :cond_289

    .line 1664
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    const-wide/16 v7, 0x1

    .line 1665
    invoke-static {v6, v7, v8}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1666
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v6, 0x71

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v6, v2, v3, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_28e

    :cond_289
    const-wide/16 v7, 0x0

    .line 1668
    invoke-static {v6, v7, v8}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1673
    :cond_28e
    :goto_28e
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v8, "enableFrontFacingVideoContinueFocus"

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v6, v7, v2}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->selectFocusMode(ILandroid/hardware/Camera$Parameters;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mDefaultFocusMode:Ljava/lang/String;

    if-eq v0, v3, :cond_2ac

    .line 1675
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_2c4

    .line 1677
    :cond_2ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Supported Focus Mode for Facing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    :goto_2c4
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    .line 1682
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    .line 1683
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    .line 1684
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    .line 1687
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    if-eqz v0, :cond_376

    .line 1688
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v2, "zsl-values"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "zsl"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "off"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "on"

    if-eqz v2, :cond_321

    if-eqz v0, :cond_321

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_321

    .line 1690
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_321
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mZslSupport:Z

    if-nez v2, :cond_376

    .line 1693
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    if-eqz v2, :cond_376

    .line 1695
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_376

    .line 1696
    invoke-static {}, Lcom/ss/android/ttvecamera/TECamera1MTKUtils;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_376

    .line 1697
    invoke-static {}, Lcom/ss/android/ttvecamera/TECamera1MTKUtils;->isSupportZsdMode()Z

    move-result v0

    if-eqz v0, :cond_376

    .line 1700
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v2, "zsd-mode-values"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "zsd-mode"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36a

    if-eqz v0, :cond_36a

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 1702
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_36a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mZslSupport:Z

    .line 1707
    :cond_376
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mZslSupport:Z

    if-eqz v0, :cond_37d

    const-string v0, "Enable"

    goto :goto_37f

    :cond_37d
    const-string v0, "Disable"

    :goto_37f
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s zsl"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    .line 1711
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_3b1

    .line 1712
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    .line 1713
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mMaxZoom:F

    .line 1714
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1715
    iput v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    goto :goto_3b6

    .line 1717
    :cond_3b1
    const-string v0, "camera don\'t support zoom"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :goto_3b6
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v2, "enableShutterSound"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e9

    .line 1724
    :try_start_3c2
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z
    :try_end_3cf
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3cf} :catch_3d0

    goto :goto_3e9

    :catch_3d0
    move-exception v0

    .line 1726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport enableShutterSound, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_3e9
    :goto_3e9
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1733
    :try_start_3f0
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_3f5
    .catchall {:try_start_3f0 .. :try_end_3f5} :catchall_3f5

    .line 1736
    :catchall_3f5
    iput-boolean v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    return v5

    .line 1555
    :cond_3f8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "fps config failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private innerOpen(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 13

    .line 91
    const-string v0, "TECamera1"

    const-string v1, "TECamera1-innerOpen"

    invoke-static {v1}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 93
    iput v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mExposureCompensation:I

    .line 94
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    const/16 v2, -0x191

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 96
    :try_start_10
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v6, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreferOpenCameraByCameraId:Z

    if-eqz v6, :cond_3a

    iget-object v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 97
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 98
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 99
    invoke-static {v6, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 101
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v6, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    .line 102
    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    goto :goto_a5

    :catch_37
    move-exception p1

    goto/16 :goto_1e2

    .line 105
    :cond_3a
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    iput v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    .line 106
    const-string v6, "te_record_camera_size"

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "innerOpen mNumberOfCameras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", current mDefaultCameraID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v6, v1

    .line 109
    :goto_6e
    iget v7, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    if-ge v6, v7, :cond_a5

    .line 110
    invoke-static {v6, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "innerOpen cameraInfo facing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mCameraSettings.mFacing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v8, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v9, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v7, v9, :cond_a2

    .line 113
    iput v6, v8, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    goto :goto_a5

    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 119
    :cond_a5
    :goto_a5
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c2

    iget v8, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    if-lez v8, :cond_c2

    iget-boolean v8, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    if-nez v8, :cond_b5

    goto :goto_c2

    .line 120
    :cond_b5
    const-string p1, "innerOpen: camera info check error"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "CameraIDError"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c2
    :goto_c2
    if-ne v6, v7, :cond_d5

    .line 124
    iget v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    if-lez v6, :cond_d5

    iget-boolean v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    if-eqz v5, :cond_d5

    .line 125
    const-string v5, "innerOpen: camera info check, set CameraID to 0"

    invoke-static {v0, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v1, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    .line 128
    :cond_d5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "innerOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v6, "will start camera1"

    const/16 v8, 0x6a

    invoke-interface {v5, v8, v1, v6, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v5, "TECamera1-innerOpen-openCamera"

    invoke-static {v5}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    if-ltz v5, :cond_108

    .line 133
    invoke-static {p1, v5}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->openCamera(Lcom/bytedance/bpea/basics/Cert;I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_12f

    .line 135
    :cond_108
    invoke-static {p1, v5}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->openCamera(Lcom/bytedance/bpea/basics/Cert;I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    .line 136
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 137
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    .line 138
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v5, v1

    .line 139
    :goto_11a
    iget v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mNumberOfCameras:I

    if-ge v5, v6, :cond_12f

    .line 140
    invoke-static {v5, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 141
    iget v6, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    if-ne v6, v8, :cond_12c

    .line 142
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v5, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    goto :goto_12f

    :cond_12c
    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    .line 147
    :cond_12f
    :goto_12f
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "innerOpen mNewFacing: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "innerOpen mCameraSettings.mDefaultCameraID: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_160} :catch_37

    .line 167
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v5, 0x6b

    const-string v6, "did start camera1"

    invoke-interface {p1, v5, v1, v6, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-nez p1, :cond_195

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open Camera Failed with ID:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    if-ne p1, v7, :cond_18d

    const/16 v2, -0x195

    .line 171
    :cond_18d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p1, v4, v2, v3, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    return v2

    .line 178
    :cond_195
    :try_start_195
    const-string p1, "TECamera1-initCamera"

    invoke-static {p1}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECamera1;->initCamera()I

    move-result p1
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19e} :catch_1b8

    .line 180
    :try_start_19e
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    .line 182
    const-string v2, "TECamera1-fillFeatures"

    invoke-static {v2}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->fillFeatures()Landroid/os/Bundle;

    .line 184
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    .line 186
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v3, "TECamera1 features is ready"

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v2, v4, v1, v3, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1b5} :catch_1b6

    goto :goto_1d7

    :catch_1b6
    move-exception v1

    goto :goto_1bc

    :catch_1b8
    move-exception p1

    move v10, v1

    move-object v1, p1

    move p1, v10

    .line 189
    :goto_1bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open init Camera Failed!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 198
    :goto_1d7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v4, p1, p0, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return p1

    .line 153
    :goto_1e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open Camera Failed!: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21d

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fail to connect to camera service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    const/16 v2, -0x19a

    goto :goto_21d

    .line 158
    :cond_20f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera initialization failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21d

    const/16 v2, -0x197

    .line 162
    :cond_21d
    :goto_21d
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 163
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p1, v4, v2, v3, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    .line 164
    iput-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    return v2
.end method


# virtual methods
.method public cancelFocus()V
    .registers 3

    .line 955
    const-string v0, "TECamera1"

    const-string v1, "cancelFocus..."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_e

    .line 958
    :try_start_b
    invoke-virtual {p0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_e

    :catchall_e
    :cond_e
    return-void
.end method

.method public close(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 12

    .line 462
    const-string v0, "te_record_camera1_stop_preview_cost"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    .line 463
    const-string v2, "Camera close start..."

    const-string v3, "TECamera1"

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v4, 0x0

    if-eqz v2, :cond_d7

    .line 466
    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_8e

    .line 469
    :try_start_16
    const-string v2, "Camera close torch..."

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 471
    const-string v6, "off"

    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 474
    const-string v2, "Camera stopPreview..."

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 476
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 478
    const-string v2, "Camera stopPreview end..."

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {v0, v8, v9}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 482
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v0

    if-ne v0, v5, :cond_65

    .line 485
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_8c

    :catch_63
    move-exception v0

    goto :goto_74

    .line 489
    :cond_65
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8c

    .line 490
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_73} :catch_63

    goto :goto_8c

    .line 493
    :goto_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close camera failed: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_8c
    :goto_8c
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    .line 499
    :cond_8e
    :try_start_8e
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 500
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v2, "will close camera1"

    const/16 v6, 0x6c

    invoke-interface {v0, v6, v1, v2, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/Camera;)V

    .line 502
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v0, "did close camera1"

    const/16 v2, 0x6d

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_aa} :catch_ab

    goto :goto_c4

    :catch_ab
    move-exception p1

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera release failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_c4
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mHasPreviewBufferFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 507
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    .line 508
    const-string p1, "Camera closed end!"

    invoke-static {v3, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p1, v5, p0, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraClosed(ILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    .line 511
    :cond_d7
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-void
.end method

.method protected collectCameraCapabilities()V
    .registers 12

    .line 1861
    const-string v0, "="

    const-string v1, "TECamera1-collectCameraCapabilities"

    invoke-static {v1}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->isNeedCollectCameraCapabilities()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1863
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void

    .line 1867
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1869
    :try_start_15
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_aa

    .line 1870
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v4, "camera_id"

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1871
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1872
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v4, "camera_zoom_max_ability"

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1874
    :cond_41
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_aa

    .line 1876
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    new-instance v5, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;

    sget-object v6, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->PREVIEW_SIZE:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    sget-object v7, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;->STRING:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v9, v9, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;-><init>(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;Ljava/lang/Object;)V

    .line 1876
    invoke-virtual {v4, v5}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->addCapability(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;)V

    .line 1879
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1880
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1881
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1882
    const-string v7, "width"

    iget v8, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1883
    const-string v7, "height"

    iget v5, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1884
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_78

    .line 1886
    :cond_a3
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v5, "preview_size_lit"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_aa} :catch_aa

    .line 1893
    :catch_aa
    :cond_aa
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 1894
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1896
    :try_start_c9
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    if-eqz v3, :cond_14a

    .line 1898
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_131

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1899
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget v9, v7, v8

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v7, v0

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v0

    if-eq v9, v10, :cond_10e

    .line 1901
    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    :cond_10e
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1904
    const-string v10, "fps_min"

    aget v8, v7, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1905
    const-string v8, "fps_max"

    aget v7, v7, v0

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1906
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d4

    .line 1908
    :cond_131
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    new-instance v6, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;

    sget-object v7, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->FPS_RANGE:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    sget-object v8, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;->STRING:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;

    .line 1910
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v8, v4}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;-><init>(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;Ljava/lang/Object;)V

    .line 1908
    invoke-virtual {v3, v6}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->addCapability(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;)V

    .line 1911
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    const-string v4, "fps_range_list"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_14a} :catch_14a

    .line 1917
    :catch_14a
    :cond_14a
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCapabilityCollector:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->upload()V

    .line 1918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectCameraCapabilities consume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TECamera1"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const-string v1, "te_record_camera_collect_capbilities_cost"

    invoke-static {v1, v3, v4}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1921
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHaveCollectedCapbilities:Z

    .line 1923
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method public enableCaf()V
    .registers 5

    .line 967
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_52

    .line 968
    const-string v1, "enableCaf..."

    const-string v2, "TECamera1"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_11
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 971
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 972
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: focusAtPoint failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x19b

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_52
    return-void
.end method

.method protected fillFeatures()Landroid/os/Bundle;
    .registers 6

    .line 1779
    const-string v0, "camera_torch_supported"

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 1780
    invoke-super {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->fillFeatures()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 1782
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "support_preview_sizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1783
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "support_picture_sizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1784
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "support_video_sizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1785
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedFpsRanges()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "camera_support_fps_range"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1786
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    const-string v3, "camera_preview_size"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v2, 0x0

    .line 1788
    :try_start_57
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_69

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz p0, :cond_69

    .line 1789
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_69

    const/4 p0, 0x1

    goto :goto_6a

    :catch_67
    move-exception p0

    goto :goto_6e

    :cond_69
    move p0, v2

    .line 1790
    :goto_6a
    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6d} :catch_67

    return-object v1

    .line 1792
    :goto_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get camera torch information failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TECamera1"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8b
    return-object v1
.end method

.method public focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)V
    .registers 14

    .line 829
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const-string v1, "TECamera1"

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 831
    const-string v0, "focusAtPoint: camera is null."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 v3, -0x1b7

    invoke-interface {p1, v3, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 833
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p1, v2, v3, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_21
    const/4 v3, 0x0

    .line 840
    :try_start_22
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 841
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->isSupportedFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 842
    const-string v0, "Error: not support focus."

    .line 843
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v6, -0x19c

    invoke-interface {v4, v6, v6, v0, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 845
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5, v7}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->isSupportedMetering(ILandroid/hardware/Camera$Parameters;)Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedMetering()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 846
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCameraMeteringArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 847
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCameraMeteringArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    move-result-object v4

    .line 848
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v6

    .line 849
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v8

    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    move-object v10, v9

    iget v9, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v10, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v10, v2, :cond_7b

    move v10, v2

    goto :goto_7c

    :cond_7b
    move v10, v3

    .line 847
    :goto_7c
    invoke-interface/range {v4 .. v10}, Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;->calculateArea(IIIIIZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_ae

    :catch_84
    move-exception v0

    goto/16 :goto_1c7

    .line 852
    :cond_87
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v6

    .line 853
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getDisplayDensity()F

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v9

    iget-object v10, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v10, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v11

    .line 852
    invoke-virtual/range {v4 .. v11}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->calculateMeteringArea(IIFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 855
    :goto_ae
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    .line 857
    :cond_b6
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-interface {v4, v6, v5, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    return-void

    .line 862
    :cond_c2
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedMetering()Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->isSupportedMetering(ILandroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 864
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCameraMeteringArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 865
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCameraMeteringArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    move-result-object v4

    .line 866
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v6

    .line 867
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v8

    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    move-object v10, v9

    iget v9, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v10, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v10, v2, :cond_fd

    move v10, v2

    goto :goto_fe

    :cond_fd
    move v10, v3

    .line 865
    :goto_fe
    invoke-interface/range {v4 .. v10}, Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;->calculateArea(IIIIIZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_12d

    .line 870
    :cond_106
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    .line 871
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v6

    .line 872
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getDisplayDensity()F

    move-result v7

    .line 873
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v9

    iget-object v10, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v10, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 874
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v11

    .line 870
    invoke-virtual/range {v4 .. v11}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->calculateMeteringArea(IIFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 880
    :cond_12d
    :goto_12d
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isNeedFocus()Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 881
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCameraFocusArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    move-result-object v0

    if-eqz v0, :cond_163

    .line 882
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCameraFocusArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    move-result-object v4

    .line 883
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v6

    .line 884
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v8

    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    move-object v10, v9

    iget v9, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    iget v10, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v10, v2, :cond_15a

    move v10, v2

    goto :goto_15b

    :cond_15a
    move v10, v3

    .line 882
    :goto_15b
    invoke-interface/range {v4 .. v10}, Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;->calculateArea(IIIIIZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_18a

    .line 888
    :cond_163
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mFocusManager:Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;

    .line 889
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getHeight()I

    move-result v6

    .line 890
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getDisplayDensity()F

    move-result v7

    .line 891
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getY()I

    move-result v9

    iget-object v10, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v10, v10, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 892
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v11

    .line 888
    invoke-virtual/range {v4 .. v11}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->calculateFocusArea(IIFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 899
    :goto_18a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 900
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v4, "auto"

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 901
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    if-eqz v0, :cond_1a8

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 902
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    move v3, v2

    .line 905
    :cond_1a8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 906
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v4, Lcom/ss/android/ttvecamera/TECamera1$4;

    invoke-direct {v4, p0, p1}, Lcom/ss/android/ttvecamera/TECamera1$4;-><init>(Lcom/ss/android/ttvecamera/TECamera1;Lcom/ss/android/ttvecamera/TEFocusSettings;)V

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_1f3

    .line 895
    :cond_1ba
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 896
    const-string v0, "focus is not enable!"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_1c6} :catch_84

    return-void

    .line 938
    :goto_1c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: focusAtPoint failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 v4, -0x19b

    invoke-interface {p1, v4, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 941
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p1, v2, v4, v0, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    :goto_1f3
    if-eqz v3, :cond_203

    .line 946
    :try_start_1f5
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 947
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_203} :catch_203

    :catch_203
    :cond_203
    return-void
.end method

.method public forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 447
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force close camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera1"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :try_start_1b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_25

    .line 451
    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/Camera;)V

    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    :cond_25
    return-void

    .line 455
    :catch_26
    const-string p0, "force close camera failed"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBestPreviewSize(FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 5

    .line 1742
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_d

    .line 1743
    const-string p0, "TECamera1"

    const-string p1, "getBestPreviewSize: Camera is not opened!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1746
    :cond_d
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_17

    .line 1747
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    :cond_17
    if-eqz p2, :cond_22

    .line 1751
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0

    .line 1753
    :cond_22
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSizeByRadio(Ljava/util/List;F)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0
.end method

.method public getCameraCapbilitiesForBytebench()Lorg/json/JSONObject;
    .registers 1

    .line 1856
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraCapabilitiesMap:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getCameraCaptureSize()[I
    .registers 2

    .line 553
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_19

    .line 555
    :try_start_4
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 557
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 558
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    .line 559
    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    filled-new-array {v0, p0}, [I

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 562
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getFOV()[F
    .registers 6

    .line 761
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "TECamera1"

    if-nez v0, :cond_1c

    .line 763
    const-string v0, "getFOV: camera device is null."

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v4, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 765
    new-array p0, v1, [F

    fill-array-data p0, :array_5e

    return-object p0

    .line 768
    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_54

    .line 773
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    .line 774
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result p0

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p0, v1, v2

    .line 775
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera1:verticalFOV = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",horizontalFOV = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_54
    move-exception p0

    .line 770
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 771
    new-array p0, v1, [F

    fill-array-data p0, :array_66

    return-object p0

    :array_5e
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data

    :array_66
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data
.end method

.method public getFlashMode()I
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_44

    .line 623
    :try_start_4
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 624
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 626
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 629
    :goto_12
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    goto :goto_45

    .line 631
    :cond_1c
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x3

    goto :goto_45

    .line 633
    :cond_26
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 p0, 0x0

    goto :goto_45

    .line 635
    :cond_30
    const-string v0, "torch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 p0, 0x2

    goto :goto_45

    .line 637
    :cond_3a
    const-string v0, "red-eye"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x4

    goto :goto_45

    :cond_44
    const/4 p0, -0x1

    :goto_45
    return p0
.end method

.method public getFrameOrientation()I
    .registers 6

    .line 571
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mDeviceRotation:I

    if-gez v0, :cond_a

    .line 573
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 576
    :cond_a
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 577
    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    const/4 v2, 0x1

    .line 579
    :try_start_14
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 581
    iget v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    if-ne v3, v2, :cond_2d

    .line 582
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    rsub-int v0, v1, 0x21c

    .line 583
    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    goto :goto_36

    :catch_2b
    move-exception v0

    goto :goto_39

    .line 585
    :cond_2d
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I

    .line 588
    :goto_36
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraRotation:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_2b

    return p0

    .line 590
    :goto_39
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrameOrientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v3, -0x195

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getPictureSize()[I
    .registers 2

    .line 648
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 650
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 651
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception p0

    .line 653
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    move-object p0, v0

    :goto_13
    if-nez p0, :cond_16

    return-object v0

    .line 661
    :cond_16
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    .line 662
    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFps()[I
    .registers 3

    .line 521
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_21

    .line 523
    :try_start_4
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    const/4 v0, 0x2

    .line 524
    new-array v0, v0, [I

    .line 525
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    const/4 p0, 0x0

    .line 526
    aget v1, v0, p0

    div-int/lit16 v1, v1, 0x3e8

    aput v1, v0, p0

    const/4 p0, 0x1

    .line 527
    aget v1, v0, p0

    div-int/lit16 v1, v1, 0x3e8

    aput v1, v0, p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception p0

    .line 530
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1825
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_c

    .line 1826
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1827
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPictureSizes:Ljava/util/List;

    return-object p0

    .line 1829
    :cond_c
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPictureSizes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_c

    .line 1816
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1817
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPreviewSizes:Ljava/util/List;

    return-object p0

    .line 1820
    :cond_c
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSupportedPreviewSizes:Ljava/util/List;

    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .registers 3

    .line 1035
    const-string v0, "TECamera1"

    const-string v1, "isAutoExposureLockSupported..."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_18

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz p0, :cond_18

    .line 1037
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoFocusLockSupported()Z
    .registers 5

    .line 1069
    const-string v0, "TECamera1"

    const-string v1, "isAutoFocusLockSupported..."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2d

    iget-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v3, :cond_2d

    .line 1073
    :try_start_14
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "fixed"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_21

    if-eqz p0, :cond_36

    return v1

    .line 1078
    :catch_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, -0x1b1

    const-string v2, "isAutoFocusLockSupported failed"

    invoke-interface {v0, v1, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 1082
    :cond_2d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x1b7

    const-string v3, "setAutoFocusLock failed. \uff1a Camera is null."

    invoke-interface {p0, v1, v2, v3, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportWhileBalance()Z
    .registers 4

    const/4 v0, 0x0

    .line 1120
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1b

    .line 1121
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 1122
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p0

    goto :goto_1c

    :cond_1b
    return v0

    .line 1124
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported whileBalance!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TECamera1"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 3

    .line 985
    const-string v0, "TECamera1"

    const-string v1, "isSupportedExposureCompensation..."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v0, :cond_1c

    .line 987
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->isSupportExposureCompensation()Z

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isTorchSupported()Z
    .registers 3

    .line 1159
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFeatures()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    .line 1163
    :cond_12
    const-string v1, "camera_torch_supported"

    .line 1164
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public open(IIIIIZLcom/bytedance/bpea/basics/Cert;)I
    .registers 9

    .line 71
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Open camera facing = "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "TECamera1"

    invoke-static {v0, p6}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput p1, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 73
    iget-object p1, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 74
    iput p3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 75
    iget-object p1, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iput p4, p1, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    .line 76
    iput p5, p6, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 79
    invoke-direct {p0, p7}, Lcom/ss/android/ttvecamera/TECamera1;->innerOpen(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 3

    .line 84
    invoke-super {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 85
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 86
    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    .line 87
    invoke-direct {p0, p2}, Lcom/ss/android/ttvecamera/TECamera1;->innerOpen(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public queryShaderZoomStep(Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)V
    .registers 10

    .line 1341
    const-string v0, "TECamera1"

    if-nez p1, :cond_a

    .line 1342
    const-string p0, "ShaderZoomCallback is null, do nothing!"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1346
    :cond_a
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 1348
    const-string p1, "queryShaderZoomStep : Camera is null!"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1354
    :cond_1e
    :try_start_1e
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 1355
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1356
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    const/16 v4, 0x63

    if-le v3, v4, :cond_33

    move v3, v4

    .line 1358
    :cond_33
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    if-gtz v3, :cond_40

    const/4 v1, 0x0

    .line 1360
    invoke-interface {p1, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;->getShaderStep(F)V

    return-void

    :catch_3e
    move-exception p1

    goto :goto_6a

    .line 1362
    :cond_40
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1363
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    sub-float/2addr v1, v3

    .line 1364
    invoke-interface {p1, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;->getShaderStep(F)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_69} :catch_3e

    :cond_69
    return-void

    .line 1368
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query shader zoom step failed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1369
    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)V
    .registers 13

    .line 1308
    const-string v1, "TECamera1"

    if-nez p1, :cond_a

    .line 1309
    const-string p0, "ZoomCallback is null, do nothing!"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1313
    :cond_a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 1315
    const-string p1, "queryZoomAbility : Camera is null!"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v0, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v2, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1321
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mMaxZoom:F

    if-eqz p2, :cond_52

    .line 1324
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    float-to-int v3, v3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v8, p2, v3

    .line 1325
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v6

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v7

    .line 1326
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v9

    const/4 v5, 0x1

    move-object v4, p1

    .line 1325
    invoke-interface/range {v4 .. v9}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onZoomSupport(IZZFLjava/util/List;)V

    return-void

    :catch_4f
    move-exception v0

    move-object p1, v0

    goto :goto_69

    :cond_52
    move-object v3, p1

    .line 1328
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v6

    .line 1329
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    int-to-float v7, p1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x1

    .line 1328
    invoke-interface/range {v3 .. v8}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onZoomSupport(IZZFLjava/util/List;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_68} :catch_4f

    return-void

    .line 1332
    :goto_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Query zoom ability failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1333
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v0, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v2, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoExposureLock(Z)V
    .registers 6

    .line 1044
    const-string v0, "setAutoExposureLock..."

    const-string v1, "TECamera1"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_58

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_58

    iget-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v3, :cond_58

    .line 1047
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1049
    const-string p1, "Current camera doesn\'t support ae lock."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, -0x1aa

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1054
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1055
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p1

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: setAutoExposureLock failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1058
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, -0x1ab

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1063
    :cond_58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/4 p1, 0x1

    const/16 v1, -0x1b7

    const-string v2, "setAutoExposureLock failed. \uff1a Camera is null."

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoFocusLock(Z)V
    .registers 5

    .line 1089
    const-string v0, "setAutoFocusLock..."

    const-string v1, "TECamera1"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_65

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_65

    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v2, :cond_65

    .line 1092
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->isAutoFocusLockSupported()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1094
    const-string p1, "Current camera doesn\'t support af lock."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, -0x1b1

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_28
    if-eqz p1, :cond_34

    .line 1100
    :try_start_2a
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v0, "fixed"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_3b

    :catch_32
    move-exception p1

    goto :goto_43

    .line 1102
    :cond_34
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v0, "continuous-video"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1104
    :goto_3b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_32

    return-void

    .line 1106
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: setAutoFocusLock failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, -0x1ab

    invoke-interface {v0, v1, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1112
    :cond_65
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/4 p1, 0x1

    const/16 v1, -0x1b7

    const-string v2, "setAutoFocusLock failed. \uff1a Camera is null."

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExposureCompensation(I)Z
    .registers 9

    .line 994
    iput p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mExposureCompensation:I

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation... value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera1"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v2, -0x19d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_c1

    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->isSupportExposureCompensation()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 999
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget v5, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    if-gt p1, v5, :cond_a6

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    if-ge p1, v0, :cond_3f

    goto :goto_a6

    .line 1005
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1006
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1007
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    iput v0, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EC = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", EV = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    iget v5, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    int-to-float v5, v5

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    mul-float/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_83} :catch_87

    const/4 p0, 0x0

    move-object p1, p0

    move p0, v4

    goto :goto_e5

    :catch_87
    move-exception p1

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: setExposureCompensation failed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1012
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, -0x1

    goto :goto_e5

    .line 1000
    :cond_a6
    :goto_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1001
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x19f

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return v4

    .line 1015
    :cond_c1
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p1, :cond_d3

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_d3

    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-nez v0, :cond_ce

    goto :goto_d3

    :cond_ce
    const/16 v2, -0x19e

    .line 1021
    const-string p1, "Unsupported exposure compensation!"

    goto :goto_dd

    .line 1018
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v5, -0x1b7

    const-string v6, "setExposureCompensation \uff1a Camera is null."

    invoke-interface {v0, v3, v5, v6, p1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    move-object p1, v6

    .line 1023
    :goto_dd
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    move p0, v2

    :goto_e5
    if-nez p0, :cond_e8

    goto :goto_e9

    :cond_e8
    move v3, v4

    :goto_e9
    if-nez v3, :cond_ff

    .line 1028
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExposureCompensation failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ff
    return v3
.end method

.method public setFeatureParameters(Landroid/os/Bundle;)V
    .registers 5

    .line 1801
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->setFeatureParameters(Landroid/os/Bundle;)V

    if-nez p1, :cond_6

    goto :goto_41

    .line 1803
    :cond_6
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFeatures:Ljava/util/Map;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 1804
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1805
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$Parameters;->isValid(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_1a

    .line 1808
    :cond_31
    const-string v2, "support_light_soft"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1809
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1a

    :cond_41
    :goto_41
    return-void
.end method

.method public setPictureSize(II)V
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 599
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 600
    iput p2, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 601
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->stopCapture()V

    .line 602
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->startCapture()V

    return-void
.end method

.method public setPreviewFpsRange()V
    .registers 7

    .line 538
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_5

    return-void

    .line 541
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->getFpsUnitFactor(Ljava/util/List;)I

    move-result v1

    .line 543
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    iget v4, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    invoke-virtual {v2, v1}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->mulFactor(I)[I

    move-result-object v1

    invoke-static {v3, v4, v1, v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->getFpsRange(II[ILjava/util/List;)[I

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {v1, v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 545
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    aget v5, v0, v2

    aget v0, v0, v4

    invoke-direct {v3, v5, v0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x79

    invoke-interface {v1, v4, v2, v0, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setSceneMode(I)V
    .registers 3

    .line 607
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->setSceneMode(I)V

    if-nez p1, :cond_9

    .line 609
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECamera1;->applyCaptureScene()V

    return-void

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 611
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECamera1;->applyRecordScene()V

    return-void

    .line 613
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "un support scene"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSurface(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public setWhileBalance(ZLjava/lang/String;)V
    .registers 7

    .line 1132
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v0, 0x1

    const-string v1, "TECamera1"

    if-eqz p1, :cond_6b

    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-nez v2, :cond_c

    goto :goto_6b

    :cond_c
    const/16 v2, -0x1a8

    .line 1140
    :try_start_e
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 1141
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1142
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1143
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1144
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    :catch_2d
    move-exception p1

    goto :goto_4b

    .line 1146
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupportWBList has no value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v0, v2, p1, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4a} :catch_2d

    return-void

    .line 1151
    :goto_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set WhileBalance failed: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1152
    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v0, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1134
    :cond_6b
    :goto_6b
    const-string p1, "setWhileBalance : Camera is null!"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v0, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCapture()V
    .registers 12

    .line 209
    const-string v0, "te_record_camera1_start_preview_cost"

    const-string v1, "TECamera1-startCapture"

    invoke-static {v1}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 210
    const-string v1, "Camera startPreview..."

    const-string v2, "TECamera1"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v1, :cond_18

    .line 212
    const-string p0, "Camera is previewing..."

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_18
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_318

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 219
    :try_start_1e
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    if-eqz v4, :cond_297

    .line 222
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    if-eqz v5, :cond_2e

    .line 223
    invoke-virtual {v4, v5}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V

    goto :goto_2e

    :catch_2a
    move-exception v0

    move-object v4, v0

    goto/16 :goto_29f

    .line 226
    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v4, :cond_3a

    .line 227
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 230
    :cond_3a
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v5, v4, v6}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->initProvider(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result v4

    if-eqz v4, :cond_65

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init provider failed, ret = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_65
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6b} :catch_2a

    const-string v5, "SurfaceTexture is null"

    if-ne v4, v1, :cond_8c

    .line 238
    :try_start_6f
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 242
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_d6

    .line 239
    :cond_83
    invoke-static {v2, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_8c
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_27c

    .line 244
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;

    if-eqz v4, :cond_274

    .line 246
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v6}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    if-eqz v6, :cond_26b

    .line 252
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mHasPreviewBufferFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_c2

    const/4 v5, 0x3

    .line 253
    invoke-virtual {v4, v5}, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->getBuffers(I)[[B

    move-result-object v5

    .line 254
    array-length v6, v5

    move v7, v3

    :goto_b6
    if-ge v7, v6, :cond_c2

    aget-object v8, v5, v7

    .line 255
    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9, v8}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 259
    :cond_c2
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;->getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 260
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 266
    :goto_d6
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    if-eqz v4, :cond_14f

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_14f

    .line 267
    iget v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    .line 268
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_110

    .line 269
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    goto :goto_13c

    .line 270
    :cond_110
    iget v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_13c

    .line 271
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    .line 273
    :cond_13c
    :goto_13c
    iget v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/ss/android/ttvecamera/TECamera1;->getNearestZoomIndex(I)I

    move-result v4

    .line 274
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 275
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 278
    :cond_14f
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    if-eqz v4, :cond_1bc

    .line 281
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v5, v6, :cond_16f

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-eq v5, v6, :cond_1af

    .line 282
    :cond_16f
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget v6, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v7, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 283
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v6, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    if-eqz v6, :cond_1a8

    .line 284
    iget-boolean v6, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    if-nez v6, :cond_199

    .line 285
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v8, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    iget v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    invoke-static {v6, v4, v8, v7}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;IF)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    iput-object v6, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto :goto_19b

    .line 287
    :cond_199
    iput-boolean v3, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 289
    :goto_19b
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v7, v6, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v6, v6, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v5, v7, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 291
    :cond_1a8
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 293
    :cond_1af
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v7, 0x32

    invoke-interface {v5, v7, v3, v4, v6}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_1bc
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v5, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    if-eqz v5, :cond_1fe

    .line 297
    iput-boolean v3, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 298
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v6, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 299
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force set picture size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v5, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v5, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1fe
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v5, Lcom/ss/android/ttvecamera/TECamera1$1;

    invoke-direct {v5, p0}, Lcom/ss/android/ttvecamera/TECamera1$1;-><init>(Lcom/ss/android/ttvecamera/TECamera1;)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 334
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera1;->getFrameOrientation()I

    move-result v5

    iput v5, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera rotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 338
    const-string v6, "Camera startPreview start"

    invoke-static {v2, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 340
    const-string v6, "Camera startPreview end"

    invoke-static {v2, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v7, "useCameraFaceDetect"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mUseFaceAE:I

    .line 342
    invoke-virtual {p0, v6}, Lcom/ss/android/ttvecamera/TECamera1;->useFaceAEStrategy(I)V

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mStartPreviewTime:J

    sub-long/2addr v6, v4

    .line 345
    invoke-static {v0, v6, v7}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 348
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    .line 350
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v9, "TECamera1 preview"

    iget-object v10, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewSuccess(IIILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_318

    .line 247
    :cond_26b
    invoke-static {v2, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_274
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v4, "Provider is null"

    invoke-direct {v0, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_27c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported camera provider type : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mProviderMgr:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProviderType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_297
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v4, "ProviderManager is null"

    invoke-direct {v0, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_29f} :catch_2a

    .line 352
    :goto_29f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreview: Error "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2dc

    .line 355
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setParameters failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    const/16 v0, -0x192

    :goto_2cb
    move v2, v0

    goto :goto_2df

    .line 357
    :cond_2cd
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "startPreview failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    const/16 v0, -0x19a

    goto :goto_2cb

    :cond_2dc
    const/16 v0, -0x1a9

    goto :goto_2cb

    .line 361
    :goto_2df
    invoke-static {v4}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 362
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    const/4 v5, 0x0

    .line 364
    :try_start_2e5
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    if-nez v0, :cond_307

    .line 365
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v6, "preview error will close camera1"

    const/16 v7, 0x6c

    invoke-interface {v0, v7, v3, v6, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0, v6}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/Camera;)V

    .line 367
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v6, "preview error did close camera1"

    const/16 v7, 0x6d

    invoke-interface {v0, v7, v3, v6, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_302} :catch_303

    goto :goto_307

    :catch_303
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    :cond_307
    :goto_307
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mRetryStartPreviewCount:I

    if-nez v0, :cond_30d

    .line 373
    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    .line 375
    :cond_30d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 379
    :cond_318
    :goto_318
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method public startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 7

    .line 1378
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    const-string v2, "TECamera1"

    if-nez v0, :cond_1b

    .line 1379
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -439. Reason: mCameraDevice is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string p1, "startZoom : Camera is null!"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v0, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v1, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1387
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 1388
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1389
    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -421. Reason: camera is not support zoom"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string p1, "Camera is not support zoom!"

    .line 1391
    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v3, -0x1a5

    invoke-interface {p2, v1, v3, p1, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_43
    move-exception p1

    goto :goto_84

    .line 1396
    :cond_45
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    .line 1398
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_71

    if-eqz p2, :cond_71

    invoke-interface {p2}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->enableSmooth()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1399
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 1400
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v0, Lcom/ss/android/ttvecamera/TECamera1$6;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/ttvecamera/TECamera1$6;-><init>(Lcom/ss/android/ttvecamera/TECamera1;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    return-void

    .line 1409
    :cond_71
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1410
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    if-eqz p2, :cond_83

    int-to-float p1, p1

    .line 1412
    invoke-interface {p2, v1, p1, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onChange(IFZ)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_83} :catch_43

    :cond_83
    return-void

    .line 1416
    :goto_84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -420. Reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start zoom failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1418
    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v0, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p2, v1, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopCameraFaceDetect()V
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_13

    .line 438
    :try_start_8
    invoke-virtual {p0}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    .line 440
    :catch_c
    const-string p0, "TECamera1"

    const-string v0, "camera stop face detect failed"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public stopCapture()V
    .registers 10

    .line 384
    const-string v0, "te_record_camera1_stop_preview_cost"

    const-string v1, "Camera stopPreview..."

    const-string v2, "TECamera1"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_60

    const/4 v1, 0x0

    .line 387
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    .line 388
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mHasPreviewBufferFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 393
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 394
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 396
    invoke-static {v0, v5, v6}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 399
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_32

    goto :goto_4b

    :catch_32
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera stopcapture failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    const-wide/16 v0, 0x0

    .line 403
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mStartPreviewTime:J

    .line 404
    const-string v0, "Camera preview stopped!"

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v7, "TECamera1 preview stoped"

    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewStopped(IIILjava/lang/String;Ljava/lang/Object;)V

    :cond_60
    return-void
.end method

.method public stopZoom(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 6

    .line 1427
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    const-string v2, "TECamera1"

    if-nez v0, :cond_1b

    .line 1428
    const-string p1, "[VE_UI_TEST]Failed event: STOP_ZOOM. Code: -439. Reason: mCameraDevice is null"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string p1, "stopZoom : Camera is null!"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1436
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1438
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->enableSmooth()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1439
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopSmoothZoom()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    goto :goto_36

    :cond_35
    return-void

    .line 1442
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VE_UI_TEST]Failed event: STOP_ZOOM. Code: -420. Reason: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop zoom failed : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1444
    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x1a4

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public switchCameraMode(I)V
    .registers 4

    .line 691
    const-string p1, "TECamera1"

    const-string v0, "Does not support switch mode for camera1"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0xc8

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {p1, v1, v1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public switchFlashMode(I)V
    .registers 16
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$FlashMode;
        .end annotation
    .end param

    .line 1212
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const-string v1, "TECamera1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2b

    .line 1213
    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -439. Reason: mCameraDevice is null"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v8, "switchFlashMode failed: Camera is not ready!"

    invoke-static {v1, v8}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x1b7

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v1, v8, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1217
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-nez p1, :cond_21

    move v7, v2

    goto :goto_22

    :cond_21
    move v7, v3

    :goto_22
    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v5, 0x1

    const/16 v6, -0x1b7

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1223
    :cond_2b
    iget-wide v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mStartPreviewTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v4, 0xc8

    if-eqz v0, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/ss/android/ttvecamera/TECamera1;->mStartPreviewTime:J

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_4d

    .line 1224
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4d

    .line 1225
    new-instance v1, Lcom/ss/android/ttvecamera/TECamera1$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECamera1$5;-><init>(Lcom/ss/android/ttvecamera/TECamera1;I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1235
    :cond_4d
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    .line 1237
    :try_start_4f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 1238
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5b} :catch_72

    if-eqz v0, :cond_f0

    .line 1241
    const-string v6, "off"

    const/4 v7, 0x0

    if-eqz p1, :cond_80

    if-eq p1, v3, :cond_7b

    const/4 v8, 0x2

    if-eq p1, v8, :cond_78

    const/4 v8, 0x3

    if-eq p1, v8, :cond_75

    const/4 v8, 0x4

    if-eq p1, v8, :cond_6f

    move-object v8, v7

    goto :goto_81

    .line 1256
    :cond_6f
    :try_start_6f
    const-string v8, "red-eye"

    goto :goto_81

    :catch_72
    move-exception v0

    goto/16 :goto_151

    .line 1253
    :cond_75
    const-string v8, "auto"

    goto :goto_81

    .line 1250
    :cond_78
    const-string v8, "torch"

    goto :goto_81

    .line 1246
    :cond_7b
    const-string v8, "on"

    .line 1247
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    goto :goto_81

    :cond_80
    move-object v8, v6

    :goto_81
    if-eqz v8, :cond_f0

    .line 1267
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 1268
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "camera1 will change flash mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x68

    invoke-interface {v0, v10, v2, v9, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1269
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v9}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1271
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v6, "enableSwitchFlashSleepToTakeEffect"

    .line 1272
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_bd} :catch_72

    if-eqz v0, :cond_c7

    .line 1275
    :try_start_bf
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_c2} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_72

    goto :goto_c7

    :catch_c3
    move-exception v0

    .line 1277
    :try_start_c4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1280
    :cond_c7
    :goto_c7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera1 did change flash mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x69

    invoke-interface {v0, v5, v2, v4, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1281
    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-nez p1, :cond_e5

    move v11, v2

    goto :goto_e6

    :cond_e5
    move v11, v3

    :goto_e6
    const-string v12, "torch success"

    iget-object v13, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchSuccess(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ef} :catch_72

    return-void

    .line 1286
    :cond_f0
    const-string v4, "Camera does not support flash mode: "

    if-eqz v0, :cond_111

    .line 1287
    :try_start_f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "support list: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10f
    move-object v8, v0

    goto :goto_121

    .line 1289
    :cond_111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10f

    .line 1291
    :goto_121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -419. Reason: not support flash mode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-static {v1, v8}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, -0x1a3

    invoke-interface {v0, v3, v5, v8, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1294
    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-nez p1, :cond_147

    move v7, v2

    goto :goto_148

    :cond_147
    move v7, v3

    :goto_148
    iget-object v9, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v5, 0x1

    const/16 v6, -0x1a3

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_150} :catch_72

    return-void

    .line 1297
    :goto_151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -419. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch flash mode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1299
    invoke-static {v1, v9}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x1a2

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v1, v9, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1301
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-nez p1, :cond_18c

    move v8, v2

    goto :goto_18d

    :cond_18c
    move v8, v3

    :goto_18d
    iget-object v10, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x1

    const/16 v7, -0x1a2

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 7

    .line 698
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_16

    .line 700
    const-string p1, "TECamera1"

    const-string p2, "takePicture : camera is null"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 p3, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p3, p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 706
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 707
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, p1, :cond_31

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v0, p2, :cond_88

    goto :goto_31

    :catch_2f
    move-exception p1

    goto :goto_97

    .line 708
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    .line 709
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECamera1;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 710
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraSettings;->getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v2, p1, p2}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    .line 708
    invoke-static {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    .line 711
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    iget v0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p2, v0, p1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 712
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object p1

    .line 713
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    if-eqz p2, :cond_73

    if-eqz p1, :cond_73

    const/16 p2, 0x11

    .line 715
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 716
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    goto :goto_81

    .line 718
    :cond_73
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 719
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 721
    :goto_81
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_88
    const/4 p1, 0x0

    .line 723
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    .line 724
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    new-instance p2, Lcom/ss/android/ttvecamera/TECamera1$2;

    invoke-direct {p2, p0, p3}, Lcom/ss/android/ttvecamera/TECamera1$2;-><init>(Lcom/ss/android/ttvecamera/TECamera1;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_96} :catch_2f

    return-void

    .line 745
    :goto_97
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_a5

    const/16 p2, -0x3e8

    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->createException(Ljava/lang/Exception;I)Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onTakenFail(Ljava/lang/Exception;)V

    :cond_a5
    return-void
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 6

    .line 782
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const-string v1, "TECamera1"

    if-nez v0, :cond_16

    .line 784
    const-string p1, "takePicture: camera is null."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, -0x1b7

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 790
    :try_start_17
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 793
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v3, Lcom/ss/android/ttvecamera/TECamera1$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/ss/android/ttvecamera/TECamera1$3;-><init>(Lcom/ss/android/ttvecamera/TECamera1;JLcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception v0

    .line 819
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_54

    const/16 v1, -0x3e8

    .line 821
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttvecamera/TECameraBase;->createException(Ljava/lang/Exception;I)Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onTakenFail(Ljava/lang/Exception;)V

    :cond_54
    return-void
.end method

.method public toggleTorch(Z)V
    .registers 12

    const/4 v0, 0x0

    .line 1171
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraLightOn:Z

    .line 1173
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v8, 0x1

    const-string v9, "TECamera1"

    if-nez v2, :cond_27

    .line 1174
    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -439. Reason: mCameraDevice is null"

    invoke-static {v9, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v4, "toggleTorch : Camera is not ready!"

    invoke-static {v9, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x1b7

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v8, v2, v4, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1178
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1183
    :cond_27
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v2, v8, :cond_4c

    .line 1184
    const-string v0, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -416. Reason: not support torch"

    invoke-static {v9, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v4, "Front camera does not support torch!"

    invoke-static {v9, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v3, -0x1a0

    invoke-interface {v0, v3, v3, v4, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1188
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x1a0

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1193
    :cond_4c
    :try_start_4c
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera1 will change flash mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x68

    invoke-interface {v2, v6, v0, v4, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1194
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_74

    .line 1195
    const-string v4, "torch"

    goto :goto_76

    :catch_72
    move-exception v0

    goto :goto_b4

    :cond_74
    const-string v4, "off"

    :goto_76
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1196
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1197
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera1 did change flash mode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x69

    invoke-interface {v2, v6, v0, v4, v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1198
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleTorch "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchSuccess(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_b3} :catch_72

    return-void

    .line 1200
    :goto_b4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -417. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggle torch failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1202
    invoke-static {v9, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v2, -0x1a1

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v8, v2, v4, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1204
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public useFaceAEStrategy(I)V
    .registers 4

    .line 411
    const-string v0, "Camera start face detect"

    const-string v1, "TECamera1"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mIsRunning:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_4e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_29

    .line 415
    :try_start_1a
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    if-ne p1, v0, :cond_4e

    .line 416
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 417
    const-string p0, "use faceae for front"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3b

    .line 420
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mFacing:I

    if-nez p1, :cond_4e

    .line 421
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 422
    const-string p0, "use faceae for rear"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4e

    .line 425
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 426
    const-string p0, "use faceae for all"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_48} :catch_49

    return-void

    .line 429
    :catch_49
    const-string p0, "camera start face detect failed"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 7

    .line 1469
    const-string v0, "TECamera1"

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_d0

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_c

    goto/16 :goto_d0

    .line 1473
    :cond_c
    iget v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    const/4 p1, 0x0

    .line 1475
    :try_start_12
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_33

    .line 1476
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_a4

    .line 1479
    :cond_33
    :goto_33
    iget p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_60

    .line 1480
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    .line 1483
    :cond_60
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_99

    .line 1484
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1485
    iget v1, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomValue:F

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/ss/android/ttvecamera/TECamera1;->getNearestZoomIndex(I)I

    move-result v1

    .line 1486
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    if-eq v2, v1, :cond_d0

    .line 1487
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1488
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    if-eqz p2, :cond_d0

    .line 1490
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mZoomRatios:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-interface {p2, v3, p0, v3}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onChange(IFZ)V

    return-void

    .line 1494
    :cond_99
    const-string p0, "[VE_UI_TEST]Failed event: SET_ZOOM. Code: -420. Reason: getParameters is null"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string p0, "setZoom failed for getParameters null"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_a3} :catch_31

    return-void

    .line 1498
    :goto_a4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[VE_UI_TEST]Failed event: SET_ZOOM. Code: -420. Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setZoom failed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    :goto_d0
    return-void
.end method
