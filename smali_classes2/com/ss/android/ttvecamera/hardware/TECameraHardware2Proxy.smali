.class public Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TECameraHardware2Proxy"

.field public static mCameraType:I = 0x1

.field protected static mWideCameraID:Ljava/lang/String; = "-1"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getDeviceProxy(Landroid/content/Context;I)Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;
    .registers 5
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
        .end annotation
    .end param

    .line 36
    const-string v0, "TECameraHardware2Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceProxy, cameraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sput p1, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mCameraType:I

    .line 40
    const-class v0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    monitor-enter v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_26

    .line 43
    :try_start_1e
    new-instance p1, Lcom/ss/android/ttvecamera/hardware/TECameraBEWOProxy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraBEWOProxy;-><init>(Landroid/content/Context;)V

    goto :goto_62

    :catchall_24
    move-exception p0

    goto :goto_64

    .line 44
    :cond_26
    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2;->isSSPlatform()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 45
    new-instance p1, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;-><init>(Landroid/content/Context;)V

    goto :goto_62

    .line 46
    :cond_32
    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2;->isQCOMPlatform()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 47
    new-instance p1, Lcom/ss/android/ttvecamera/hardware/TECameraQcomProxy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraQcomProxy;-><init>(Landroid/content/Context;)V

    goto :goto_62

    .line 48
    :cond_3e
    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2;->isMTKPlatform()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 49
    new-instance p1, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;-><init>(Landroid/content/Context;)V

    goto :goto_62

    .line 50
    :cond_4a
    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2;->isHWPlatform()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 51
    new-instance p1, Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;-><init>(Landroid/content/Context;)V

    goto :goto_62

    .line 53
    :cond_56
    const-string p1, "TECameraHardware2Proxy"

    const-string v1, "Unknown platform"

    invoke-static {p1, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;-><init>(Landroid/content/Context;)V

    .line 57
    :goto_62
    monitor-exit v0

    return-object p1

    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_1e .. :try_end_65} :catchall_24

    throw p0
.end method


# virtual methods
.method public configStabilization(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Z)I
    .registers 13

    const/4 p0, 0x1

    .line 362
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_a3

    if-nez p2, :cond_10

    goto/16 :goto_a3

    .line 351
    :cond_10
    const-string v3, "TECameraHardware2Proxy"

    if-nez p3, :cond_24

    .line 352
    const-string p0, "configStabilization not toggle"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 354
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    .line 357
    :cond_24
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    if-eqz p3, :cond_5d

    .line 359
    array-length v4, p3

    move v5, v1

    :goto_30
    if-ge v5, v4, :cond_62

    aget v6, p3, v5

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EIS mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v6, p0, :cond_5a

    .line 362
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 363
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 364
    const-string p0, "Enable EIS"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 370
    :cond_5d
    const-string p3, "Don\'t supported EIS"

    invoke-static {v3, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_62
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_9b

    .line 376
    array-length p3, p1

    move v4, v1

    :goto_6e
    if-ge v4, p3, :cond_a0

    aget v5, p1, v4

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OIS mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, p0, :cond_98

    .line 379
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 380
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 381
    const-string p0, "Enable OIS"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_98
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 386
    :cond_9b
    const-string p0, "Don\'t supported OIS"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    const/16 p0, -0xc8

    return p0

    :cond_a3
    :goto_a3
    const/16 p0, -0x64

    return p0
.end method

.method public fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V
    .registers 3

    .line 125
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getWideAngleID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mWideCameraID:Ljava/lang/String;

    .line 127
    const-string p0, "TECameraHardware2Proxy"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fillWideCameraID mWideCameraID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mWideCameraID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_22} :catch_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getFPSRange(Landroid/hardware/camera2/CameraCharacteristics;IIII)Lcom/ss/android/ttvecamera/TEFrameRateRange;
    .registers 13

    .line 223
    new-instance p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    invoke-direct {p0, p2, p3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    if-nez p1, :cond_8

    goto :goto_12

    .line 227
    :cond_8
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 228
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;

    if-nez p1, :cond_13

    :goto_12
    return-object p0

    .line 233
    :cond_13
    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    iget p3, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1f
    const/4 v4, 0x1

    if-ge v2, v0, :cond_49

    aget-object v5, p1, v2

    .line 238
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/2addr v6, p3

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v5, p3

    filled-new-array {v6, v5}, [I

    move-result-object v5

    .line 239
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    aget v4, v5, v4

    if-ge v3, v4, :cond_46

    move v3, v4

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 248
    :cond_49
    const-string p1, "te_record_camera_max_fps"

    int-to-long v2, v3

    invoke-static {p1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 249
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->getRealFpsRange()[I

    move-result-object p1

    invoke-static {p4, p5, p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->getFpsRange(II[ILjava/util/List;)[I

    move-result-object p1

    .line 250
    aget p2, p1, v1

    iput p2, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    .line 251
    aget p1, p1, v4

    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    return-object p0
.end method

.method public getFilledWideCameraId()Ljava/lang/String;
    .registers 1

    .line 134
    sget-object p0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mWideCameraID:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxZoomValue(Landroid/hardware/camera2/CameraCharacteristics;IF)F
    .registers 4

    .line 257
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1d

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1c

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    :cond_1c
    return p0

    :cond_1d
    mul-float/2addr p0, p3

    return p0
.end method

.method public getShaderZoomStep(Landroid/hardware/camera2/CameraCharacteristics;)F
    .registers 4

    .line 288
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 289
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int v0, v0

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 292
    new-instance p0, Ljava/text/DecimalFormat;

    const-string p1, "0.00"

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, v0

    .line 293
    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 295
    :try_start_34
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_40} :catch_41

    return p0

    :catch_41
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const p0, 0x3c23d70a    # 0.01f

    return p0
.end method

.method public getTelephotoID()Ljava/lang/String;
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 180
    :try_start_a
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getTelephotoID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    const-string p0, "0"

    return-object p0
.end method

.method public getTelephotoID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .registers 10

    .line 190
    const-string p0, "0"

    .line 193
    :try_start_2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_6
    if-ge v3, v0, :cond_3f

    aget-object v4, p1, v3

    .line 194
    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 195
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_21

    .line 196
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_21

    goto :goto_3c

    :catch_1f
    move-exception p1

    goto :goto_40

    .line 199
    :cond_21
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    if-eqz v5, :cond_2e

    .line 200
    array-length v6, v5

    if-nez v6, :cond_34

    :cond_2e
    const/4 v5, 0x1

    .line 201
    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v1

    .line 203
    :cond_34
    aget v5, v5, v1
    :try_end_36
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_36} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_36} :catch_1f

    cmpl-float v6, v5, v2

    if-lez v6, :cond_3c

    move-object p0, v4

    move v2, v5

    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3f
    return-object p0

    .line 209
    :goto_40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public getWideAngleID()Ljava/lang/String;
    .registers 7

    .line 110
    const-string v0, "TECameraHardware2Proxy"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 111
    iget-object v3, p0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mContext:Landroid/content/Context;

    const-string v4, "camera"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;

    .line 113
    :try_start_10
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p0, v4, v3}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getWideAngleID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWideAngleID, cost time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    return-object p0

    :catchall_32
    move-exception p0

    .line 118
    const-string v1, "exception occurs when getWideAngleID"

    invoke-static {v0, v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const-string p0, "0"

    return-object p0
.end method

.method public getWideAngleID([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .registers 11

    .line 138
    const-string p0, "0"

    .line 141
    :try_start_2
    array-length v0, p1

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    :goto_8
    if-ge v3, v0, :cond_43

    aget-object v4, p1, v3

    .line 142
    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 144
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_23

    .line 145
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_23

    goto :goto_40

    :catchall_21
    move-exception p1

    goto :goto_44

    .line 149
    :cond_23
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_35

    .line 151
    array-length v7, v5

    if-lez v7, :cond_35

    .line 152
    aget v5, v5, v1
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_21

    goto :goto_36

    :cond_35
    move v5, v6

    :goto_36
    cmpl-float v6, v5, v6

    if-eqz v6, :cond_40

    cmpg-float v6, v5, v2

    if-gtz v6, :cond_40

    move-object p0, v4

    move v2, v5

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_43
    return-object p0

    .line 162
    :goto_44
    const-string p2, "TECameraHardware2Proxy"

    const-string v0, "exception occurs when getWideAngleID: "

    invoke-static {p2, v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public getZoomValueRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 277
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_b

    return-object p0

    .line 283
    :cond_b
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 284
    new-instance p1, Landroid/util/Range;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method public isARCoreSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isEISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 326
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_12

    .line 327
    array-length p1, p1

    if-lez p1, :cond_12

    const/4 p0, 0x1

    :cond_12
    return p0
.end method

.method public isFocusSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_13

    .line 410
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_13

    return v0

    :cond_13
    return p0
.end method

.method public isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 70
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_13

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    .line 74
    :goto_14
    const-string v0, "TECameraHardware2Proxy"

    if-ltz p1, :cond_61

    const/4 v1, 0x3

    if-le p1, v1, :cond_1c

    goto :goto_61

    .line 79
    :cond_1c
    sget-object v1, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2;->CameraHWLevelAndroid2VE:[I

    aget p1, v1, p1

    .line 80
    const-string v1, "te_record_camera_hardware_level"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 89
    const-string v1, ", require = "

    if-lt p1, p2, :cond_46

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera hardware level supported, deviceLevel = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 94
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera hardware level not supported, deviceLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 75
    :cond_61
    :goto_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid hardware level = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isLogicalMultiCamSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 397
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 398
    array-length v0, p1

    move v1, p0

    :goto_e
    if-ge v1, v0, :cond_1b

    aget v2, p1, v1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return p0
.end method

.method public isMeteringSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_13

    .line 418
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_13

    return v0

    :cond_13
    return p0
.end method

.method public isOISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 6

    .line 331
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x0

    if-eqz p0, :cond_18

    .line 334
    array-length v0, p0

    move v1, p1

    :goto_d
    if-ge v1, v0, :cond_18

    aget v2, p0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    return v3

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    return p1
.end method

.method public isStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 5

    .line 316
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isEISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    .line 317
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isOISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-eqz p0, :cond_c

    or-int/lit8 v0, v0, 0x2

    .line 319
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Stabilization type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraHardware2Proxy"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string p0, "te_record_camera_stabilization"

    int-to-long v1, v0

    invoke-static {p0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    if-lez v0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAntiShake(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHDR(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHighFPS(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportTelephoto()Z
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getTelephotoID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportTelephoto(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportWideAngle()Z
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getWideAngleID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportWideAngle(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 305
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
