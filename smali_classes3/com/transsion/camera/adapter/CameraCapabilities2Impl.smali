.class Lcom/transsion/camera/adapter/CameraCapabilities2Impl;
.super Lcom/transsion/camera/adapter/CameraCapabilities;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_LIMIT_FRONT_100:I

.field private static final ZOOM_LIMIT_FRONT_200:I

.field private static final ZOOM_MAX_BACK_BELOW_13M:I

.field private static final ZOOM_MAX_BACK_BELOW_13M_ENLARGED:I

.field private static final ZOOM_MAX_BACK_BETWEEN_13M_AND_48M:I

.field private static final ZOOM_MAX_BACK_UPPER_48M:I

.field private static final ZOOM_MAX_BACK_UPPER_48M_ENLARGED:I

.field private static final ZOOM_MAX_BACK_UPPER_48M_ENLARGED_20X:I

.field private static final ZOOM_MAX_ENLARGE_VALUE:I

.field private static final ZOOM_MAX_PERISCOPE_UPPER:I

.field private static final ZOOM_MAX_TELE_100X:I

.field private static final ZOOM_MAX_TELE_2POINT5_UPPER:I

.field private static final ZOOM_MAX_TELE_30X:I

.field private static final ZOOM_MAX_TELE_60X:I

.field private static final ZOOM_MAX_TELE_UPPER:I


# instance fields
.field mMaxPictureSizePixels:J

.field private final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private mStreamConfigurationMapMaxResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method public static synthetic $r8$lambda$nVndRVB8Qw0hxlLIAiyAKqhHecs(Lcom/transsion/camera/utils/HighFpsResolution;)I
    .registers 2

    .line 1105
    invoke-virtual {p0}, Lcom/transsion/camera/utils/HighFpsResolution;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/HighFpsResolution;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraCapabilities2Impl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 54
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x4e20

    goto :goto_16

    :cond_14
    const/16 v0, 0xc8

    :goto_16
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_LIMIT_FRONT_200:I

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v1, 0x2710

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_26

    :cond_24
    const/16 v0, 0x64

    :goto_26
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_LIMIT_FRONT_100:I

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_34

    const v0, 0x9c40

    goto :goto_36

    :cond_34
    const/16 v0, 0x190

    :goto_36
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_BELOW_13M:I

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v2, 0x3e8

    const v3, 0x186a0

    if-eqz v0, :cond_47

    move v0, v3

    goto :goto_48

    :cond_47
    move v0, v2

    :goto_48
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_BELOW_13M_ENLARGED:I

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_54

    move v0, v3

    goto :goto_55

    :cond_54
    move v0, v2

    :goto_55
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_BETWEEN_13M_AND_48M:I

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_63

    const v0, 0x249f0

    goto :goto_65

    :cond_63
    const/16 v0, 0x5dc

    :goto_65
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_UPPER_48M_ENLARGED:I

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_73

    const v0, 0x30d40

    goto :goto_75

    :cond_73
    const/16 v0, 0x7d0

    :goto_75
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_UPPER_48M_ENLARGED_20X:I

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_81

    move v0, v3

    goto :goto_82

    :cond_81
    move v0, v2

    :goto_82
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_UPPER_48M:I

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_90

    const v0, 0x1d4c0

    goto :goto_92

    :cond_90
    const/16 v0, 0x4b0

    :goto_92
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_PERISCOPE_UPPER:I

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_9d

    move v2, v3

    :cond_9d
    sput v2, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_UPPER:I

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_ab

    const v0, 0x13880

    goto :goto_ad

    :cond_ab
    const/16 v0, 0x320

    :goto_ad
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_2POINT5_UPPER:I

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const v2, 0x927c0

    if-eqz v0, :cond_bc

    move v0, v2

    goto :goto_be

    :cond_bc
    const/16 v0, 0x258

    :goto_be
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_60X:I

    .line 74
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_c9

    goto :goto_cb

    :cond_c9
    const/16 v2, 0x1770

    :goto_cb
    sput v2, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_ENLARGE_VALUE:I

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_d8

    const v1, 0xf4240

    :cond_d8
    sput v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_100X:I

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_e6

    const v0, 0x493e0

    goto :goto_e8

    :cond_e6
    const/16 v0, 0x7530

    :goto_e8
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_30X:I

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private static findMaxPixels(Ljava/util/List;)J
    .registers 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2f

    .line 423
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2f

    .line 427
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-nez v2, :cond_1e

    goto :goto_f

    .line 431
    :cond_1e
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-gez v2, :cond_f

    move-wide v0, v3

    goto :goto_f

    :cond_2f
    :goto_2f
    return-wide v0
.end method

.method private getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 88
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 91
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method private getStreamConfigurationMapMaxResolution(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMapMaxResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 97
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMapMaxResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 100
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMapMaxResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method private getZoomRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .registers 2

    .line 419
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method private isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 816
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 817
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    if-nez p1, :cond_f

    return p0

    .line 821
    :cond_f
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method buildAiShutterSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1302
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedAiShutter(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildAiShutterSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildAiShutterSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildAnimalEyeDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAnimalEyeDetectSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildAnimalEyeDetectionSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildAnimalEyeDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildAutoMacroSwitchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedAutoMacroSwitch(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildAutoMacroSwitchSupported(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildAutoMacroSwitchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildCameraBaseZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)F
    .registers 2

    .line 1286
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBaseZoomRatio()F

    move-result p0

    return p0
.end method

.method bridge synthetic buildCameraBaseZoomRatio(Ljava/lang/Object;)F
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildCameraBaseZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result p0

    return p0
.end method

.method buildCaptureCoverSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1356
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isCaptureCoverSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildCaptureCoverSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildCaptureCoverSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildColorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1291
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->colorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildColorLevelSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildColorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildDualCamCalibrationSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
    .registers 2

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildDualCamCalibrationSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method buildDynamic10BitEncodeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1376
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isDynamicRangeSupportTenBitEncode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildDynamic10BitEncodeSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildDynamic10BitEncodeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Rational;
    .registers 2

    .line 600
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 601
    sget-object p0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-object p0

    .line 603
    :cond_9
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    return-object p0
.end method

.method bridge synthetic buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method buildFlashStyleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1266
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->flashStyleSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildFlashStyleSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFlashStyleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .registers 2

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildFrontDualFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1261
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->frontDualFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildFrontDualFlashSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFrontDualFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildHLGProfileSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1371
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHLGProfileSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildHLGProfileSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildHLGProfileSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildHumanDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 787
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildHumanDetectionSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildHumanDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIs360HDRModeSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1322
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->is360HDRModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIs360HDRModeSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIs360HDRModeSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsAIRemosaicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 946
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedAIRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsAIRemosaicSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsAIRemosaicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsAutoExposureLockSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 572
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 573
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :cond_16
    return p0
.end method

.method bridge synthetic buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsAutoExposureLockSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 992
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsBGServiceModeSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsCameraFoldedFlagSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isCameraFoldedFlagSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsCameraFoldedFlagSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsCameraFoldedFlagSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsDspSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 762
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsDspSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsDspSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsFakeRAWRAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsFakeRAWRAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsFakeRAWYUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsFakeRAWYUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsHdr10PlusSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1366
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportHdr10Plus(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsHdr10PlusSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsHdr10PlusSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsHighSpeedVideoSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1022
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/16 v0, 0x9

    .line 1024
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    .line 1025
    sget-object v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoHighSpeed:buildIsHighVideoSupported is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1026
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result p0

    if-eqz p0, :cond_46

    .line 1027
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoHighSpeed:buildIsHighVideoSupported SMVR is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_46
    return p1
.end method

.method bridge synthetic buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsHighSpeedVideoSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsLogicalCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsLogicalCameraSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsLogicalCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMacroTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMacroTorchSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMacroTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMultiDualCamLogicalSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMultiDualCamLogicalSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMultiDualCamTeleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 683
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMultiDualCamTeleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsNightHawkSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1174
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsNightHawkSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsNightHawkSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildIsPortraitEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1184
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsPortraitEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsPortraitFlareSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1327
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedPortraitFlare(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsPortraitFlareSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsPortraitFlareSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsSprdVideo2kSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1332
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSprdVideo2k()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsSprdVideo2kSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsSprdVideo2kSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsTeleCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsTeleCameraSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsTeleCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsVideoCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 797
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsVideoCameraSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsVideoCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsWideCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsWideCameraSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsWideCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsZoomEisSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1352
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedZoomEis(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsZoomEisSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsZoomEisSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIspVersion(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    .line 1347
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getIspVersion()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildIspVersion(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIspVersion(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .registers 2

    .line 1224
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildLogicId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method buildMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    .line 580
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 583
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 584
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 585
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMaxExposureCompensation(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMaxNumOfSupportedFocusAreas(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 308
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_f

    return p0

    .line 309
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxNumOfSupportedFocusAreas(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMaxNumOfSupportedMeteringAreas(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 315
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_f

    return p0

    .line 316
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxNumOfSupportedMeteringAreas(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMicroCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1307
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMicroCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildMicroCameraSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMicroCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildMicroPanTiltSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMicroPanTiltSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildMicroPanTiltSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMicroPanTiltSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    .line 590
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 593
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 594
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 595
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMinExposureCompensation(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildOffLineSessionSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1337
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOffLineSessionSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildOffLineSessionSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildOffLineSessionSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildOfflineJniSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1342
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOfflineJniSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildOfflineJniSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildOfflineJniSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1214
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildPeriscopeCamSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildPhysicalCameraIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Set;
    .registers 2

    if-nez p1, :cond_8

    .line 1250
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1251
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPhysicalCameraIds(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildPhysicalCameraIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method buildPortrait8M2xZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    .line 1361
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getPortrait8M2xZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method bridge synthetic buildPortrait8M2xZoomRatio(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildPortrait8M2xZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildScreenFlashFireSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 997
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildScreenFlashFireSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildScreenFlashFireSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSensorColorFilterArrange(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Integer;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_8

    .line 1014
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1015
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_13

    goto :goto_17

    .line 1016
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSensorColorFilterArrange(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSensorColorFilterArrange(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method buildSensorRect(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1009
    :cond_4
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method bridge synthetic buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSensorRect(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .registers 2

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    .line 561
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method bridge synthetic buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method bridge synthetic buildSuperDefinitionType(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildSuperFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1256
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->superFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSuperFlashSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSuperFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupport4CellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupport4CellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportMultiZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .registers 2

    .line 1209
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportMultiZoomSteps(Ljava/lang/Object;)[F
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportMultiZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F

    move-result-object p0

    return-object p0
.end method

.method buildSupportSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1204
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSatModeSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    .line 811
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 806
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSlimBodyMode(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportTranFaceDetect(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1002
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 1003
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportTranFaceDetect(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupported4Cell(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->is4cell(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupported4Cell(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupported4Cell(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedAWBModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 5

    if-nez p1, :cond_8

    .line 693
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 694
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5b

    .line 698
    array-length v0, p1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_5b

    aget v2, p1, v1

    packed-switch v2, :pswitch_data_5c

    goto :goto_58

    .line 725
    :pswitch_21
    const-string v2, "shade"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 722
    :pswitch_27
    const-string/jumbo v2, "twilight"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 719
    :pswitch_2e
    const-string v2, "cloudy_daylight"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 716
    :pswitch_34
    const-string v2, "daylight"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 713
    :pswitch_3a
    const-string/jumbo v2, "warm_fluorescent"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 710
    :pswitch_41
    const-string v2, "fluorescent"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 707
    :pswitch_47
    const-string v2, "incandescent"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 704
    :pswitch_4d
    const-string v2, "auto"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 701
    :pswitch_53
    const-string v2, "off"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_5b
    return-object p0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method bridge synthetic buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAWBModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedAiRawLite(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 975
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedAiRawLite()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedAiRawLite(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAiRawLite(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedArcFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedArcFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 472
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedArcFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedArcFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedAsdVersion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedAsdVersion(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 508
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedAsdVersion(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAsdVersion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedContinuousVideoFocus()Z
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportContinuousVideoFocus()Z

    move-result p0

    return p0
.end method

.method buildSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedContrastValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedDolHdrModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedExposureTimes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 4

    if-nez p1, :cond_8

    .line 623
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 624
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_33

    .line 626
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, -0x1

    .line 627
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 632
    :cond_33
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedExposureTimes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedEyeDecetion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 767
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedEyeDecetion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 453
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 455
    :cond_12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 443
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 445
    :cond_12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFastSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 970
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedFastSuperNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedFastSuperNight(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFastSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    if-nez p1, :cond_8

    .line 235
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 236
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    const-string v0, "off"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_32

    .line 239
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 240
    const-string p1, "auto"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string p1, "on"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo p1, "torch"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object p0
.end method

.method bridge synthetic buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFocusDistanceRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .registers 3

    const/4 p0, 0x0

    .line 652
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    if-nez p1, :cond_d

    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, p0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 654
    :cond_d
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_1d

    .line 656
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 658
    :cond_1d
    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, p0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFocusDistanceRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 6

    if-nez p1, :cond_8

    .line 267
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 268
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_55

    .line 272
    array-length v0, p1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_55

    aget v2, p1, v1

    if-eqz v2, :cond_4d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_47

    const/4 v3, 0x2

    if-eq v2, v3, :cond_41

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_35

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2f

    goto :goto_52

    .line 284
    :cond_2f
    const-string v2, "edof"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 278
    :cond_35
    const-string v2, "continuous-picture"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 281
    :cond_3b
    const-string v2, "continuous-video"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 290
    :cond_41
    const-string v2, "macro"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 275
    :cond_47
    const-string v2, "auto"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 287
    :cond_4d
    const-string v2, "fixed"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_55
    return-object p0
.end method

.method bridge synthetic buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHDThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHDSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedHDThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHDThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 934
    array-length p0, p0

    if-nez p0, :cond_10

    .line 935
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 938
    :cond_10
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 939
    const-string p1, "0"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    const-string p1, "1"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1125
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedHighFpsResolutions(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 8

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 1042
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    array-length v0, p0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_50

    aget-object v3, p0, v2

    .line 1044
    iget-object v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v5, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    if-ne v4, v5, :cond_2c

    .line 1045
    new-instance v4, Landroid/util/Range;

    iget v5, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1046
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1050
    :cond_2f
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_3e

    .line 1052
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighPreviewFPSRanges StreamConfigurationMap is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 1055
    :cond_3e
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 1056
    array-length v0, p0

    if-lez v0, :cond_50

    .line 1057
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1061
    :cond_50
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoHighSpeed:SupportedHighPreviewFPSRanges is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    aput-object p1, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighSpeedSizesAndFPS(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 14

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1069
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    array-length v0, p0

    :goto_d
    if-ge v1, v0, :cond_c3

    aget-object v2, p0, v1

    if-eqz v2, :cond_27

    .line 1071
    iget-object v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    if-ne v3, v4, :cond_27

    .line 1072
    new-instance v3, Lcom/transsion/camera/utils/HighFpsResolution;

    iget v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->width:I

    iget v5, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->height:I

    iget v2, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-direct {v3, v4, v5, v2}, Lcom/transsion/camera/utils/HighFpsResolution;-><init>(III)V

    .line 1073
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1077
    :cond_2a
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_39

    .line 1079
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighSizesAndFPS StreamConfigurationMap is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 1082
    :cond_39
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 1083
    array-length v2, v0

    if-nez v2, :cond_44

    goto/16 :goto_da

    .line 1087
    :cond_44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    array-length v2, v0

    move v3, v1

    :goto_4b
    if-ge v3, v2, :cond_a9

    aget-object v4, v0, v3

    .line 1089
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 1091
    sget-object v6, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoHighSpeed:size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", SupportedHighPreviewFPSRanges is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1095
    :cond_77
    array-length v6, v5

    move v7, v1

    :goto_79
    if-ge v7, v6, :cond_a6

    aget-object v8, v5, v7

    .line 1096
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1097
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v9, v8, :cond_a3

    .line 1099
    new-instance v9, Lcom/transsion/camera/utils/HighFpsResolution;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-direct {v9, v10, v11, v8}, Lcom/transsion/camera/utils/HighFpsResolution;-><init>(III)V

    .line 1100
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a3
    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1104
    :cond_a9
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    if-eqz p0, :cond_c3

    .line 1105
    new-instance p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1109
    :cond_c3
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoHighSpeed:SupportedHighSizesAndFPS is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 1084
    :cond_da
    :goto_da
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighSizesAndFPS getHighSpeedVideoSizes is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighSpeedSizesAndFPS(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1199
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedISPMetaSizesForRaw(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedISPMetaSizesForRaw(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedISPMetaSizesForRaw(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedISPMetaSizesForRaw(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedISPMetaSizesForYuv(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedISPMetaSizesForYuv(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedISPMetaSizesForYuv(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedISPMetaSizesForYuv(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedLongExposureScene(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1296
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedLongExposureScene(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 1297
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedLongExposureScene(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedLongExposureScene(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedMacro(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 752
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method bridge synthetic buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMacro(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1239
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 1240
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public bridge synthetic buildSupportedMagicSkyType(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedMaxPictureSize(Landroid/hardware/camera2/CameraCharacteristics;)J
    .registers 2

    .line 1276
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->findMaxPixels(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method buildSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPhotoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 250
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPhotoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 7

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    const/16 v2, 0x100

    if-eqz v1, :cond_2d

    .line 124
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 125
    array-length v4, v3

    if-lez v4, :cond_1d

    .line 126
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_1d
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 129
    array-length v3, v1

    if-lez v3, :cond_2d

    .line 130
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_2d
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMapMaxResolution(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 135
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 136
    array-length v2, v1

    if-lez v2, :cond_43

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_43
    sget-object v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildSupportedPictureSizes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSensorHighSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedPictureSizes(Ljava/util/List;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object p0
.end method

.method bridge synthetic buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPostViewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/16 p1, 0x22

    .line 183
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 184
    array-length p1, p0

    if-lez p1, :cond_1d

    .line 185
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_1d
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPostViewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    if-nez p1, :cond_8

    .line 610
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 611
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 612
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    if-eqz p0, :cond_1c

    .line 614
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 616
    :cond_1c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPreviewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 4

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 108
    const-class p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 109
    array-length p1, p0

    if-lez p1, :cond_1d

    .line 110
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_1d
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildSupportedPreviewSizes: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPreviewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedRawPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/16 p1, 0x20

    .line 164
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 165
    array-length p1, p0

    if-lez p1, :cond_1d

    .line 166
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_1d
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedRawPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedRawPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedRawSR(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportRawSR(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedRawSR(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedRawSR(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildSupportedSMVRMetaDatas(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .registers 2

    .line 1115
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSMVRMetaDatas(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 980
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 981
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSTBlurPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getPortrait8MSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    .line 155
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method bridge synthetic buildSupportedSTBlurPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSTBlurPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_f

    .line 908
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 911
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 912
    const-string p1, "off"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    const-string p1, "on"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    const-string p1, "auto"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1271
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedScreenTorchStatus(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 920
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 921
    array-length p0, p0

    if-nez p0, :cond_10

    .line 922
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 925
    :cond_10
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 926
    const-string p1, "0"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    const-string p1, "1"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 986
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 987
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSingleBlurLevels(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 965
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedStableSuperNight(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedSuperDefinition(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_f

    .line 958
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 960
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedSuperResolution(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    if-nez p1, :cond_8

    .line 204
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 205
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    if-eqz p0, :cond_1f

    .line 207
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object p1

    .line 211
    :cond_1f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedTranssionFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranssionFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 478
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedTranssionFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedTranssionFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 514
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 490
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoEffectIds(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 484
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 496
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoFrameIds(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 4

    .line 1149
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1151
    sget-object p1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPortraitLevel:size is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1152
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method bridge synthetic buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 225
    const-class p1, Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 227
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    return-object v0
.end method

.method bridge synthetic buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoSpotLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 4

    .line 1159
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoSpotLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1161
    sget-object p1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSpotLevel:size is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1162
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method bridge synthetic buildSupportedVideoSpotLevel(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoSpotLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 545
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedZoomRatios(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_c

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 324
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getZoomRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v2

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 327
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 328
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleZoomEnlarged:Z

    .line 329
    iget-object v6, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v6, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v6

    .line 331
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v7, :cond_34

    const/16 v7, 0xa

    goto :goto_35

    :cond_34
    const/4 v7, 0x5

    :goto_35
    if-eqz v4, :cond_1aa

    .line 332
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1aa

    .line 333
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget v9, Lcom/transsion/camera/adapter/CameraCapabilities;->ZOOM_RATIO_UNIT:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    .line 334
    iget-object v10, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v10, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_112

    iget-object v10, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 335
    invoke-interface {v10, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v10

    if-nez v10, :cond_112

    .line 336
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    if-nez v10, :cond_67

    const-wide/16 v12, 0x0

    goto :goto_72

    .line 338
    :cond_67
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-long v14, v10

    mul-long/2addr v12, v14

    .line 339
    :goto_72
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->findMaxPixels(Ljava/util/List;)J

    move-result-wide v14

    move/from16 v16, v9

    iget-wide v8, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mMaxPictureSizePixels:J

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 340
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/32 v14, 0xf4240

    cmp-long v12, v12, v14

    if-gez v12, :cond_95

    .line 344
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_LIMIT_FRONT_100:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_114

    .line 346
    :cond_95
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 347
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_ab

    .line 349
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_LIMIT_FRONT_200:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_114

    .line 350
    :cond_ab
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_114

    const-wide/32 v12, 0x2dc6c00

    cmp-long v12, v8, v12

    if-ltz v12, :cond_dd

    .line 353
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged20X:Z

    if-eqz v8, :cond_c7

    .line 354
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_UPPER_48M_ENLARGED_20X:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_100

    .line 355
    :cond_c7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v8, :cond_d6

    .line 356
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_UPPER_48M_ENLARGED:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_100

    .line 358
    :cond_d6
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_UPPER_48M:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_100

    :cond_dd
    const-wide/32 v12, 0xd418e0

    cmp-long v8, v8, v12

    if-gtz v8, :cond_fa

    .line 361
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-eqz v8, :cond_f3

    .line 362
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_BELOW_13M_ENLARGED:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_100

    .line 364
    :cond_f3
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_BELOW_13M:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_100

    .line 367
    :cond_fa
    sget v8, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_BACK_BETWEEN_13M_AND_48M:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_100
    if-eqz v6, :cond_114

    if-eqz v2, :cond_114

    .line 371
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    goto :goto_114

    :cond_112
    move/from16 v16, v9

    .line 378
    :cond_114
    :goto_114
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v8, :cond_11f

    const/16 v8, 0x2710

    goto :goto_121

    :cond_11f
    const/16 v8, 0x64

    :goto_121
    if-eqz v6, :cond_149

    if-eqz v2, :cond_13f

    .line 381
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, v16

    float-to-int v8, v2

    .line 382
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v2, :cond_13d

    const/16 v10, 0xa

    goto :goto_13e

    :cond_13d
    move v10, v11

    :goto_13e
    move v7, v10

    .line 384
    :cond_13f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport100X:Z

    if-eqz v2, :cond_149

    .line 385
    sget v4, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_100X:I

    .line 389
    :cond_149
    iget-object v2, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 390
    sget v4, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_PERISCOPE_UPPER:I

    .line 392
    :cond_153
    iget-object v2, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 393
    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBaseZoomRatio()F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    const v2, 0x3a83126f    # 0.001f

    .line 394
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->floatEquals(FFF)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 395
    sget v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_2POINT5_UPPER:I

    goto :goto_181

    :cond_16f
    const v1, 0x402ccccd    # 2.7f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_17f

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_17f

    .line 397
    sget v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_60X:I

    goto :goto_181

    .line 399
    :cond_17f
    sget v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_UPPER:I

    :goto_181
    if-eqz v5, :cond_188

    .line 402
    sget v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_ENLARGE_VALUE:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    :cond_188
    move v4, v1

    .line 404
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport100X:Z

    if-eqz v1, :cond_196

    .line 405
    sget v1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->ZOOM_MAX_TELE_100X:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v4, v1

    :cond_196
    if-lt v4, v8, :cond_1aa

    :goto_198
    if-ge v8, v4, :cond_1a3

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v7

    goto :goto_198

    .line 412
    :cond_1a3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1aa
    return-object v3
.end method

.method bridge synthetic buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedZoomRatios(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildVideoPreIspFakeIdAndModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1317
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getPreIspSupportIdsAndModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 1318
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildVideoPreIspFakeIdAndModes(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildVideoPreIspFakeIdAndModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildVideoPreIspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1312
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoPreIspSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildVideoPreIspSupport(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildVideoPreIspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildYuvCaptureFlipModeSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 1245
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedYuvCaptureFlipMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildYuvCaptureFlipModeSupported(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildYuvCaptureFlipModeSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildZoom2XRemosaicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedZoom2XRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildZoom2XRemosaicSupported(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildZoom2XRemosaicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public getCaptureThumbnailSource(ZJZ)I
    .registers 5

    .line 831
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCaptureThumbnailSource(ZJZ)I

    move-result p0

    return p0
.end method

.method public getCreateSessionThumbnailSource()I
    .registers 1

    .line 826
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCreateSessionThumbnailSource()I

    move-result p0

    return p0
.end method

.method public getSupportedHighSpeedSizesAndFPS()Ljava/util/List;
    .registers 1

    .line 1120
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighSpeedSizesAndFPS:Ljava/util/List;

    return-object p0
.end method

.method public isAntiVideoSupport()Z
    .registers 1

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result p0

    return p0
.end method

.method public isAutoWaterMarkSupport()Z
    .registers 1

    .line 856
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isBWPortraitSupport()Z
    .registers 1

    .line 891
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isBWPortraitSupport()Z

    move-result p0

    return p0
.end method

.method public isEditWaterMarkSupport()Z
    .registers 1

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isEditWatermarkSupport()Z

    move-result p0

    return p0
.end method

.method public isFastThumbSupport()Z
    .registers 1

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFastThumbSupport()Z

    move-result p0

    return p0
.end method

.method public isFusionSupport()Z
    .registers 1

    .line 851
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result p0

    return p0
.end method

.method public isGenderAttributeValueSupport()Z
    .registers 1

    .line 1179
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result p0

    return p0
.end method

.method public isGoldWaterMarkSupport()Z
    .registers 1

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGoldWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isHighFpsSupport()Z
    .registers 1

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHighFpsSupport()Z

    move-result p0

    return p0
.end method

.method public isSMVRModeSupport()Z
    .registers 1

    .line 1035
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result p0

    return p0
.end method

.method public isSuperAntiVideoSupport()Z
    .registers 1

    .line 886
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSuperAntiVideoSupport()Z

    move-result p0

    return p0
.end method

.method public isSupportHighLight()Z
    .registers 1

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportHighLight()Z

    move-result p0

    return p0
.end method

.method public isThumbnailPostViewSupport()Z
    .registers 1

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isThumbnailPostViewSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoPortraitSupport()Z
    .registers 1

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoPortraitSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .registers 1

    .line 1139
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoSuperNightSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoSuperNightYUVSupport()Z
    .registers 1

    .line 1144
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoSuperNightYUVSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoWaterMarkSupport()Z
    .registers 1

    .line 876
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isZSLSupport()Z
    .registers 1

    .line 1189
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isZSLSupport()Z

    move-result p0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .registers 1

    .line 1194
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needFlipForVideoMirror()Z

    move-result p0

    return p0
.end method

.method setMaxPictureSize(J)V
    .registers 3

    .line 1281
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mMaxPictureSizePixels:J

    return-void
.end method

.method public shouldLimitZoomInSlowMotion()Z
    .registers 1

    .line 1234
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->shouldLimitZoomInSlowMotion()Z

    move-result p0

    return p0
.end method

.method usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 1219
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic usePreAECaptureFlow(Ljava/lang/Object;)Z
    .registers 2

    .line 47
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method
