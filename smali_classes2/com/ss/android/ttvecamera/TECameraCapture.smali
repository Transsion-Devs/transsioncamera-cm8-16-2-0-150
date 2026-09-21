.class public Lcom/ss/android/ttvecamera/TECameraCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;,
        Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;,
        Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;,
        Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;,
        Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    }
.end annotation


# static fields
.field public static final CAMERA_STATE_CLOSING:I = 0x4

.field public static final CAMERA_STATE_IDLE:I = 0x0

.field public static final CAMERA_STATE_OPENED:I = 0x2

.field public static final CAMERA_STATE_OPENING:I = 0x1

.field public static final CAMERA_STATE_RUNNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TECameraCapture"


# instance fields
.field protected mAllDevicesFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field protected mCameraFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

.field protected mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

.field protected mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

.field protected mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

.field protected mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;->getInstance()Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    .line 89
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;->getInstance()Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    .line 84
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    const/4 p0, 0x0

    .line 85
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TETraceUtils;->init(Z)V

    return-void
.end method

.method private static convertFacing(I)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static fillCameraFeatures(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 13

    .line 655
    const-string v0, "support_anti_shake"

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    goto :goto_70

    .line 659
    :cond_6
    :try_start_6
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 660
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 664
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_70

    aget-object v6, v2, v5

    .line 665
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 667
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_35

    .line 669
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_35

    goto :goto_6d

    .line 673
    :cond_35
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3d
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 674
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    if-ne p1, v1, :cond_3d

    if-nez v4, :cond_58

    .line 677
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 682
    :cond_58
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/ss/android/ttvecamera/TECameraCapture;->convertFacing(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6c} :catch_71

    goto :goto_3d

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_70
    :goto_70
    return-void

    :catch_71
    move-exception p0

    .line 688
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static fillDeviceAntiShakeFeature(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 13

    .line 619
    const-string v0, "device_support_anti_shake"

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    goto :goto_70

    .line 623
    :cond_6
    :try_start_6
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 624
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 627
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_70

    aget-object v6, v2, v5

    .line 628
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 629
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_35

    .line 630
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_35

    goto :goto_6d

    .line 634
    :cond_35
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3d
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 635
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    if-ne p1, v1, :cond_3d

    if-nez v4, :cond_58

    .line 638
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 643
    :cond_58
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/ss/android/ttvecamera/TECameraCapture;->convertFacing(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6c} :catch_71

    goto :goto_3d

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_70
    :goto_70
    return-void

    :catch_71
    move-exception p0

    .line 649
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static fillDeviceFeatures(Landroid/content/Context;ILandroid/os/Bundle;)Z
    .registers 11

    .line 600
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 601
    const-string v3, "device_support_camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 603
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->isCameraSupport(Landroid/content/Context;I)Z

    move-result v2

    .line 602
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    .line 604
    :cond_25
    const-string v3, "device_support_wide_angle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_60

    if-eq p1, v4, :cond_60

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 608
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isSupportWideAngle()Z

    move-result v2

    .line 607
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get wide angle info cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TECameraCapture"

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_60
    move v1, v4

    goto :goto_9

    :cond_62
    return v1
.end method

.method private getCameraAllFeatures(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 11

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraAllFeatures with camera type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraCapture"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 484
    const-string v2, "device_support_wide_angle"

    const/4 v3, 0x1

    if-ne p2, v3, :cond_20

    .line 485
    invoke-virtual {p3, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_75

    :cond_20
    const/16 v4, 0xb

    if-eq v4, p2, :cond_75

    .line 487
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getFilledWideCameraId()Ljava/lang/String;

    move-result-object v4

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCameraAllFeatures, filledWideCameraId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v5, "-1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "device_wide_angle_camera_id"

    if-eqz v5, :cond_63

    .line 490
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isSupportWideAngle()Z

    move-result v3

    .line 491
    invoke-virtual {p3, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_75

    .line 494
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getWideAngleID()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {p3, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 497
    :cond_63
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 498
    invoke-virtual {p3, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_75

    .line 500
    :cond_6f
    invoke-virtual {p3, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    invoke-virtual {p3, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    const/16 v2, 0xa

    if-ne v2, p2, :cond_bd

    .line 507
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 508
    const-string v3, "device_should_use_shader_zoom"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 511
    invoke-virtual {p3, v3, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCameraAllFeatures, vendor rdhw type, feature bundle = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_bd
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 515
    const-string v0, "device_support_anti_shake"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 516
    invoke-static {p1, p2, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->fillDeviceAntiShakeFeature(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 517
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p1

    if-lez p1, :cond_d4

    .line 518
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 529
    :cond_d4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getCameraAllFeatures, features = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getSupportedPictureSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getSupportedPictureSizes(Lcom/ss/android/ttvecamera/TECameraCapture;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getSupportedPreviewSizes(Lcom/ss/android/ttvecamera/TECameraCapture;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isCameraSupport(Landroid/content/Context;I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public static queryDeviceFeatures(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 443
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->isCameraSupport(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_10

    .line 446
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->fillDeviceFeatures(Landroid/content/Context;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 447
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->fillCameraFeatures(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public static registerException(Lcom/ss/android/ttvecamera/TECameraExceptionMonitor$IExceptionMonitor;)V
    .registers 1

    .line 102
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraExceptionMonitor;->register(Lcom/ss/android/ttvecamera/TECameraExceptionMonitor$IExceptionMonitor;)V

    return-void
.end method

.method public static registerLogOutput(BLcom/ss/android/ttvecamera/TELogUtils$ILog;)V
    .registers 2

    .line 93
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TELogUtils;->register(Lcom/ss/android/ttvecamera/TELogUtils$ILog;)V

    .line 94
    const-string p1, "VESDK"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->setUp(Ljava/lang/String;B)V

    return-void
.end method

.method public static registerMonitor(Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;)V
    .registers 1

    .line 98
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraMonitor;->register(Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;)V

    return-void
.end method

.method private updateAllCameraFeatures(ILandroid/os/Bundle;)V
    .registers 15

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAllCameraFeatures with camera type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraCapture"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 543
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    const/4 v3, 0x2

    const/16 v4, 0xa

    .line 544
    const-string v5, "_"

    const-string v6, "device_should_use_shader_zoom"

    const-string v7, "device_support_multicamera_zoom"

    const-string v8, "device_support_ai_night_video"

    const/4 v9, 0x0

    const/16 v10, 0xb

    if-ne v10, p1, :cond_4d

    .line 545
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v11, v11, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    :cond_4d
    if-ne v4, p1, :cond_6d

    .line 548
    invoke-virtual {v0, v6, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v11, v11, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v5, v5, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    :cond_6d
    if-ne v3, p1, :cond_76

    .line 551
    invoke-virtual {v0, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 552
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 555
    :cond_76
    :goto_76
    const-string v5, "device_support_wide_angle_mode"

    invoke-virtual {v0, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 557
    invoke-virtual {p0, v2, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x1

    if-ne v10, p1, :cond_93

    .line 562
    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 563
    invoke-virtual {p2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-lez v10, :cond_8f

    if-lez v11, :cond_8f

    move v10, v2

    goto :goto_90

    :cond_8f
    move v10, v9

    .line 564
    :goto_90
    invoke-virtual {p2, v8, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 568
    :cond_93
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 569
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-lez v8, :cond_a1

    if-lez v10, :cond_a1

    move v8, v2

    goto :goto_a2

    :cond_a1
    move v8, v9

    .line 570
    :goto_a2
    invoke-virtual {p2, v5, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-ne v4, p1, :cond_ae

    .line 578
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 579
    invoke-virtual {p2, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_ae
    if-ne v3, p1, :cond_c0

    .line 582
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 583
    invoke-virtual {p2, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_bd

    if-eqz v0, :cond_bd

    move v9, v2

    .line 584
    :cond_bd
    invoke-virtual {p2, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    :cond_c0
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    .line 588
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    if-eqz p1, :cond_d1

    .line 590
    const-string v0, "support_preview_sizes"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_d1
    if-eqz p0, :cond_da

    .line 593
    const-string p1, "support_picture_sizes"

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 595
    :cond_da
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateAllCameraFeatures, feature bundle = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abortSession()I
    .registers 2

    .line 201
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->abortSession(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public addCameraAlgorithm(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V
    .registers 2

    .line 824
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->addCameraAlgorithm(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V

    return-void
.end method

.method public addCameraProvider(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)I
    .registers 3

    .line 163
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->addCameraProvider(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)I

    move-result p0

    return p0
.end method

.method public cancelFocus()I
    .registers 2

    .line 282
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->cancelFocus(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I
    .registers 4

    .line 237
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->captureBurst(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I

    move-result p0

    return p0
.end method

.method public changeAppLifeCycle(Z)V
    .registers 2

    .line 812
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->appLifeCycleChanged(Z)V

    return-void
.end method

.method public changeCaptureFormat()V
    .registers 1

    return-void
.end method

.method public changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V
    .registers 4

    .line 808
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->changeRecorderState(Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)I

    return-void
.end method

.method public connect(Lcom/ss/android/ttvecamera/TECameraSettings;)I
    .registers 3

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->connect(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public connect(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 9

    .line 118
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 119
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;)V

    .line 120
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->registerPreviewSizeListener(Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;)V

    .line 121
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraServer;->connect(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public disConnect()I
    .registers 2

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->disConnect(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public disConnect(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 133
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;)V

    .line 134
    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->disConnect(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public disConnect(Z)I
    .registers 3

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->disConnect(ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public disConnect(ZLcom/bytedance/bpea/basics/Cert;)I
    .registers 5

    .line 138
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;)V

    .line 139
    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->disConnect(Lcom/ss/android/ttvecamera/TECameraCapture;ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public downExposureCompensation()V
    .registers 2

    .line 367
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->downExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)V

    return-void
.end method

.method public enableCaf()I
    .registers 2

    .line 286
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->enableCaf(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public enableMulticamZoom(Z)V
    .registers 3

    .line 820
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->enableMulticamZoom(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I

    return-void
.end method

.method public focusAtPoint(IIFII)I
    .registers 12

    .line 267
    new-instance v0, Lcom/ss/android/ttvecamera/TEFocusSettings;

    move v1, p1

    move v2, p2

    move v5, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TEFocusSettings;-><init>(IIIIF)V

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result p0

    return p0
.end method

.method public focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I
    .registers 3

    .line 277
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->markStartTimeMS()V

    .line 278
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->focusAtPoint(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result p0

    return p0
.end method

.method public getApertureRange(Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)[F
    .registers 3

    .line 419
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getApertureRange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)[F

    move-result-object p0

    return-object p0
.end method

.method public getBestPreviewSize(FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 4

    .line 184
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->getBestPreviewSize(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getCameraAllFeatures(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    .line 468
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_7d

    .line 469
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 471
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_7d

    .line 473
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_7d

    :catchall_53
    move-exception p1

    goto :goto_7f

    .line 476
    :cond_55
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraAllFeatures(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 477
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_53

    .line 480
    :cond_7d
    :goto_7d
    monitor-exit p0

    return-void

    :goto_7f
    :try_start_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_53

    throw p1
.end method

.method public getCameraCapabilitiesForBytebench(Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;)Lorg/json/JSONObject;
    .registers 3

    .line 704
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getCameraCapbilitiesForBytebench(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public getCameraCaptureSize()[I
    .registers 1

    .line 159
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getCameraCaptureSize()[I

    move-result-object p0

    return-object p0
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;
    .registers 2

    .line 351
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getCameraECInfo(Lcom/ss/android/ttvecamera/TECameraCapture;)Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCameraState()I
    .registers 1

    .line 147
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getCameraState()I

    move-result p0

    return p0
.end method

.method public getCameraState(Z)I
    .registers 2

    .line 151
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getCameraState(Z)I

    move-result p0

    return p0
.end method

.method public getExposureCompensation()I
    .registers 2

    .line 355
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public getFOV(Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)[F
    .registers 3

    .line 245
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getFOV(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)[F

    move-result-object p0

    return-object p0
.end method

.method public getFlashMode()I
    .registers 2

    .line 314
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getFlashMode(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public getISO(Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I
    .registers 3

    .line 406
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getISO(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I

    move-result p0

    return p0
.end method

.method public getISORange(Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I
    .registers 3

    .line 398
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getISORange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I

    move-result-object p0

    return-object p0
.end method

.method public getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F
    .registers 3

    .line 290
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F

    move-result p0

    return p0
.end method

.method public getPictureSize()[I
    .registers 2

    .line 306
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getPictureSize(Lcom/ss/android/ttvecamera/TECameraCapture;)[I

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFps()[I
    .registers 1

    .line 155
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->getPreviewFps()[I

    move-result-object p0

    return-object p0
.end method

.method public getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J
    .registers 3

    .line 411
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J

    move-result-object p0

    return-object p0
.end method

.method public isARCoreSupported(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x2

    .line 736
    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isARCoreSupported()Z

    move-result p0

    return p0
.end method

.method public isAutoExposureLockSupported()Z
    .registers 2

    .line 372
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isAutoExposureLockSupported(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p0

    return p0
.end method

.method public isAutoFocuseLockSupported()Z
    .registers 2

    .line 381
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isAutoFocusLockSupported(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p0

    return p0
.end method

.method public isCameraSwitchState()Z
    .registers 1

    .line 143
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isCameraSwitchState()Z

    move-result p0

    return p0
.end method

.method public isSupportWhileBalance()Z
    .registers 2

    .line 389
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isSupportWhileBalance(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p0

    return p0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 2

    .line 347
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isSupportedExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p0

    return p0
.end method

.method public isTorchSupported()Z
    .registers 2

    .line 428
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isTorchSupported(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p0

    return p0
.end method

.method public notifyHostForegroundVisible(Z)V
    .registers 3

    .line 298
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->notifyHostForegroundVisible(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    return-void
.end method

.method public process(Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V
    .registers 3

    .line 716
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->process(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)I

    return-void
.end method

.method public processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;
    .registers 2

    .line 836
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;

    move-result-object p0

    return-object p0
.end method

.method public queryFeatures(Landroid/os/Bundle;)V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-nez v0, :cond_c

    .line 722
    const-string p0, "TECameraCapture"

    const-string p1, "query features failed, maybe not connet"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 725
    :cond_c
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 730
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public queryShaderZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)F
    .registers 3

    .line 323
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->queryShaderZoomStep(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)F

    move-result p0

    return p0
.end method

.method public queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)I
    .registers 4

    .line 319
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)I

    move-result p0

    return p0
.end method

.method public registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    return-void
.end method

.method public registerPreviewListener(Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    return-void
.end method

.method public removeCameraAlgorithm(I)V
    .registers 2

    .line 828
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->removeCameraAlgorithm(I)V

    return-void
.end method

.method public removeCameraProvider()I
    .registers 2

    .line 167
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->removeCameraProvider(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public setAperture(F)V
    .registers 3

    .line 423
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setAperture(Lcom/ss/android/ttvecamera/TECameraCapture;F)V

    return-void
.end method

.method public setAutoExposureLock(Z)V
    .registers 3

    .line 376
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setAutoExposureLock(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    return-void
.end method

.method public setAutoFocusLock(Z)V
    .registers 3

    .line 385
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setAutoFocusLock(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    return-void
.end method

.method public setDeviceRotation(I)V
    .registers 2

    .line 840
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setDeviceRotation(I)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .registers 3

    .line 359
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;I)V

    return-void
.end method

.method public setFeatureParameters(Landroid/os/Bundle;)V
    .registers 3

    .line 711
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setFeatureParameters(Lcom/ss/android/ttvecamera/TECameraCapture;Landroid/os/Bundle;)I

    return-void
.end method

.method public setISO(I)V
    .registers 3

    .line 402
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setISO(Lcom/ss/android/ttvecamera/TECameraCapture;I)V

    return-void
.end method

.method public setManualFocusDistance(F)V
    .registers 3

    .line 294
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setManualFocusDistance(Lcom/ss/android/ttvecamera/TECameraCapture;F)V

    return-void
.end method

.method public setPictureSize(II)V
    .registers 4

    .line 302
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->setPictureSize(Lcom/ss/android/ttvecamera/TECameraCapture;II)V

    return-void
.end method

.method public setPreviewFpsRange(Lcom/ss/android/ttvecamera/TEFrameRateRange;)V
    .registers 2

    .line 816
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setPreviewFpsRange(Lcom/ss/android/ttvecamera/TEFrameRateRange;)V

    return-void
.end method

.method public setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;)V
    .registers 2

    .line 335
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;)V

    return-void
.end method

.method public setSceneMode(I)V
    .registers 3

    .line 310
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->setSceneMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)V

    return-void
.end method

.method public setShutterTime(J)V
    .registers 4

    .line 415
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->setShutterTime(Lcom/ss/android/ttvecamera/TECameraCapture;J)V

    return-void
.end method

.method public setWhileBalance(ZLjava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$WhiteBalanceValue;
        .end annotation
    .end param

    .line 393
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->setWhileBalance(Lcom/ss/android/ttvecamera/TECameraCapture;ZLjava/lang/String;)V

    return-void
.end method

.method public start()I
    .registers 2

    .line 188
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->start(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    move-result p0

    return p0
.end method

.method public start(Landroid/graphics/SurfaceTexture;I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    const-string p1, "TECameraCapture"

    const-string p2, "Do not use this interface!!"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->start()I

    move-result p0

    return p0
.end method

.method public startRecording()I
    .registers 1

    .line 176
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->startRecording()I

    move-result p0

    return p0
.end method

.method public startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 4

    .line 327
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->startZoom(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    move-result p0

    return p0
.end method

.method public stop()I
    .registers 2

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->stop(Z)I

    move-result p0

    return p0
.end method

.method public stop(Z)I
    .registers 3

    .line 197
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->stop(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I

    move-result p0

    return p0
.end method

.method public stopRecording()I
    .registers 1

    .line 180
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->stopRecording()I

    move-result p0

    return p0
.end method

.method public stopZoom(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 3

    .line 331
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->stopZoom(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    move-result p0

    return p0
.end method

.method public switchCamera(I)I
    .registers 3

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCamera(ILcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(ILcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 224
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->switchCamera(Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(Lcom/ss/android/ttvecamera/TECameraSettings;)I
    .registers 3

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCamera(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 228
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 229
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->switchCamera(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCameraMode(ILcom/ss/android/ttvecamera/TECameraSettings;)I
    .registers 3

    if-eqz p2, :cond_4

    .line 171
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 172
    :cond_4
    sget-object p2, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p2, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->switchCameraMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)I

    move-result p0

    return p0
.end method

.method public switchFlashMode(I)I
    .registers 3
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$FlashMode;
        .end annotation
    .end param

    .line 436
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->switchFlashMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)I

    move-result p0

    return p0
.end method

.method public takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .registers 5

    .line 241
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->takePicture(Lcom/ss/android/ttvecamera/TECameraCapture;IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    move-result p0

    return p0
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .registers 3

    .line 249
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->takePicture(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    move-result p0

    return p0
.end method

.method public toggleTorch(Z)I
    .registers 3

    .line 432
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->toggleTorch(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I

    move-result p0

    return p0
.end method

.method public upExposureCompensation()V
    .registers 2

    .line 363
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->upExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)V

    return-void
.end method

.method public updateAllCameraFeatures(Landroid/os/Bundle;)V
    .registers 6

    .line 453
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_74

    .line 454
    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-direct {p0, v0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->updateAllCameraFeatures(ILandroid/os/Bundle;)V

    .line 455
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 457
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_74

    .line 459
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void

    .line 462
    :cond_55
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mAllDevicesFeatures:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    return-void
.end method

.method public updateCameraAlgorithmParam(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V
    .registers 2

    .line 832
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraAlgorithmParam(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V

    return-void
.end method

.method public zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 4

    .line 339
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->zoomV2(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    move-result p0

    return p0
.end method
