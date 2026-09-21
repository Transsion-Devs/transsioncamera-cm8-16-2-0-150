.class public Lcom/transsion/camera/feature/setting/aishutter/AiShutter;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final AIS_CLOSE_VALUE:I = 0x0

.field private static final AIS_MORPHO_ON:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_ISZ_OFF:I = 0x0

.field private static final VALUE_ISZ_ON:I = 0x1

.field private static final ZOOM_RATIO_DENOMINATOR:F


# instance fields
.field private currentAsdAlgorithm:I

.field private volatile isAiShutterAvailable:Z

.field private volatile isAiShutterOpened:Z

.field private volatile isModeSupport:Z

.field private mAisValue:I

.field private mCurrentZoomValue:I

.field private mInSensorZoomValue:I

.field private mIsModeSupportLivePhoto:Z

.field private mPreviewStarted:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mSatStreamId:Ljava/lang/String;

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$z2O5Rz-Z_QT-zYKbIGGJqPsb3Bs(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAsdAlgorithm(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->currentAsdAlgorithm:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentZoomValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentAsdAlgorithm(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->currentAsdAlgorithm:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAisValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentZoomValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInSensorZoomValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mInSensorZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewStarted(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mPreviewStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSatStreamId(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mSatStreamId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexclusivelyCloseAis(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->exclusivelyCloseAis()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexclusivelyOpenAisIfNeed(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->exclusivelyOpenAisIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mifNeedCloseAisByTeleZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifNeedCloseAisByTeleZoom()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mifNeedCloseAisByZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifNeedCloseAisByZoom()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mifOpenSuperDefinition(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifOpenSuperDefinition()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mneedCloseAisByOver2XZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->needCloseAisByOver2XZoom(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetZOOM_RATIO_DENOMINATOR()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ZOOM_RATIO_DENOMINATOR:F

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AiShutter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 51
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_15

    const v0, 0x461c4000    # 10000.0f

    goto :goto_17

    :cond_15
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_17
    sput v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ZOOM_RATIO_DENOMINATOR:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isModeSupport:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterOpened:Z

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->currentAsdAlgorithm:I

    .line 56
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    .line 57
    iput v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    .line 58
    iput v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mInSensorZoomValue:I

    .line 63
    new-instance v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;Lcom/transsion/camera/feature/setting/aishutter/AiShutter-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    .line 330
    new-instance v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$1;-><init>(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 348
    new-instance v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private exclusivelyCloseAis()V
    .registers 2

    .line 202
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->onValueChanged(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    return-void
.end method

.method private exclusivelyOpenAisIfNeed()V
    .registers 3

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isSettingSupportAis()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    .line 210
    const-string v0, "key_ai_shutter_switch"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 211
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->onValueChanged(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private ifNeedCloseAisByTeleZoom()Z
    .registers 11

    .line 217
    iget v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    .line 218
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    .line 219
    :goto_11
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mConfigTeleCam:Z

    if-eqz v1, :cond_1d

    if-eqz v4, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 221
    :goto_1e
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    if-eqz v4, :cond_57

    .line 226
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget v7, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result v0

    .line 228
    :cond_57
    sget-object v7, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onStatusChanged]  mCurrentZoomValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,zoomValue ="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,isLongFocusCamera ="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ,supportAisMaxZoom ="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,supportTeleCam ="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ,isSatCamera ="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-le v0, v6, :cond_a0

    if-nez v4, :cond_9f

    if-eqz v5, :cond_a0

    if-eqz v1, :cond_a0

    :cond_9f
    return v3

    :cond_a0
    return v2
.end method

.method private ifNeedCloseAisByZoom()Z
    .registers 9

    .line 235
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 238
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRangeList:[I

    .line 239
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_36

    .line 240
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mSatStreamId:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_36

    :cond_34
    move v2, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v2, v3

    .line 241
    :goto_37
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 242
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mSatStreamId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_54

    :cond_52
    move v4, v1

    goto :goto_55

    :cond_54
    :goto_54
    move v4, v3

    .line 243
    :goto_55
    sget-object v5, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ifNeedCloseAisByZoom isLongFocusCamera:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isMainFocusCamera:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mSatStreamId:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mSatStreamId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",CurrentZoomValue:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_9c

    .line 245
    array-length v4, v0

    if-le v4, v3, :cond_9c

    .line 246
    iget p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    if-eqz v2, :cond_97

    const/4 v2, 0x4

    aget v0, v0, v2

    if-lt p0, v0, :cond_96

    return v3

    :cond_96
    return v1

    :cond_97
    aget v0, v0, v1

    if-lt p0, v0, :cond_9c

    return v3

    :cond_9c
    return v1
.end method

.method private ifOpenSuperDefinition()Z
    .registers 4

    .line 264
    const-string v0, "key_super_definition"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "billion"

    .line 265
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private isISZModeOpen()Z
    .registers 2

    .line 327
    iget p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mInSensorZoomValue:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private isSettingSupportAis()Z
    .registers 3

    .line 138
    const-string v0, "key_super_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifNeedCloseAisByTeleZoom()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifOpenSuperDefinition()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 140
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifNeedCloseAisByTeleZoom()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->currentAsdAlgorithm:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2e

    .line 141
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifNeedCloseAisByZoom()Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 349
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAiShutterResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    .line 350
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_16

    .line 352
    array-length v0, p1

    if-lez v0, :cond_16

    .line 353
    aget p1, p1, p3

    .line 354
    iget v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mInSensorZoomValue:I

    if-eq v0, p1, :cond_16

    .line 355
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mInSensorZoomValue:I

    :cond_16
    if-eqz p2, :cond_28

    .line 359
    array-length p1, p2

    if-lez p1, :cond_28

    .line 360
    aget p1, p2, p3

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isISZModeOpen()Z

    move-result p2

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    move p3, p1

    :goto_25
    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->onAiShutterStateChanged(I)V

    :cond_28
    return-void
.end method

.method private needCloseAisByOver2XZoom(I)Z
    .registers 5

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p0

    if-eqz p0, :cond_13

    int-to-float p0, p1

    .line 254
    sget v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr p0, v0

    const v0, 0x40066666    # 2.1f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    .line 259
    :goto_14
    sget-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needCloseAisByOver2XZoom,value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",need:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private registerKeyToMonitor()V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_flash"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_asd_algorithm_value"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_flash"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_asd_algorithm_value"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mPreviewStarted:Z

    if-eqz v0, :cond_10

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 321
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    const/4 p1, 0x0

    .line 322
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_live_photo"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mIsModeSupportLivePhoto:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 293
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMode(I)V

    .line 294
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMorpho(I)V

    .line 295
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIShutterValue(I)V

    return v2

    .line 298
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 299
    iget v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMode(I)V

    .line 300
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMorpho(I)V

    .line 301
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIShutterValue(I)V

    goto :goto_6d

    .line 303
    :cond_3c
    const-string v0, "key_ai_shutter_switch"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz v0, :cond_5f

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->ifNeedCloseAisByZoom()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    .line 308
    :goto_60
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMode(I)V

    .line 309
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setAisMorpho(I)V

    .line 310
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIShutterValue(I)V

    :goto_6d
    return v2
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 151
    const-string p0, "key_ai_shutter"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 146
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_a

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->registerKeyToMonitor()V

    :cond_a
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_28

    goto :goto_29

    :cond_28
    move-object p2, v0

    .line 112
    :goto_29
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isSettingSupportAis()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    .line 114
    const-string p1, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterOpened:Z

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 193
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isModeSupport:Z

    return p0
.end method

.method public isSupport()Z
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isModeSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterOpened:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method onAiShutterStateChanged(I)V
    .registers 5

    .line 366
    const-string v0, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_asd"

    const-string v2, "key_super_definition"

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isSupport()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2b

    .line 375
    :cond_17
    iget v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    if-eq v0, p1, :cond_3f

    .line 376
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void

    .line 367
    :cond_2b
    :goto_2b
    iget p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    if-eqz p1, :cond_3f

    const/4 p1, 0x0

    .line 368
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mAisValue:I

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 173
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeClosed] modeKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isModeSupport:Z

    .line 176
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    .line 177
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mIsModeSupportLivePhoto:Z

    .line 178
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    .line 179
    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->currentAsdAlgorithm:I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 180
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 120
    sget-object p2, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onModeOpened] modeKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isModeSupport:Z

    .line 122
    const-string p1, "key_live_photo"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mIsModeSupportLivePhoto:Z

    .line 123
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->mCurrentZoomValue:I

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 161
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 162
    sget-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 164
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterOpened:Z

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideValues headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currentValue: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " supportValues: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isAiShutterAvailable:Z

    if-nez p1, :cond_31

    goto :goto_34

    .line 134
    :cond_31
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->onValueChanged(Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 275
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAiShutterSupport()Z

    move-result p1

    .line 276
    sget-object v0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->isModeSupport()Z

    move-result v0

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3c

    if-eqz v0, :cond_3c

    .line 281
    const-string p1, "on"

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMotionCaptureModeSupported:Z

    if-eqz p1, :cond_3c

    .line 283
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3c
    const/4 p1, 0x0

    .line 286
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_a

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->unRegisterKeyToMonitor()V

    :cond_a
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
