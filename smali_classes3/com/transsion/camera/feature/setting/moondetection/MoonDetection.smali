.class public Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final BASE_SHOW_AUX_ZOOM_VALUE:I = 0x14

.field private static final MOON_DETECTED_RESULT_ARRAY_LENGTH:I = 0x4

.field private static final SETTING_KEY:Ljava/lang/String; = "key_moon_detection"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_RATIO_UNIT:F


# instance fields
.field private final mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mContext:Landroid/content/Context;

.field private mEnableCallback:Z

.field private mIsModeFeatureSupport:Z

.field private mLastAzimuth:I

.field private mLastSceneType:I

.field private mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

.field private mParameters:Lcom/transsion/camera/adapter/CameraParameters;

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSceneType:I


# direct methods
.method public static synthetic $r8$lambda$NkndxEK9kFQjS6us1NzGs2xt0tc(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeFeatureSupport(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mIsModeFeatureSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$minitSensorMag(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->initSensorMag()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoonDetection"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_15

    const v0, 0x461c4000    # 10000.0f

    goto :goto_17

    :cond_15
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_17
    sput v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->ZOOM_RATIO_UNIT:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mSceneType:I

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mEnableCallback:Z

    .line 48
    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mLastSceneType:I

    .line 49
    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mLastAzimuth:I

    .line 146
    new-instance v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 204
    new-instance v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;-><init>(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 240
    new-instance v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$2;-><init>(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method private initSensorMag()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->isRegisSensorMsg()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    .line 227
    sget-object v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoonDetection, initSensorMag"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->initSensorMag(Landroid/content/Context;)V

    :cond_1c
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 147
    const-string p2, "key_camera_zoom"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p1, :cond_17

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private overrideManualFocus(I)V
    .registers 4

    const/16 v0, 0x34

    const/4 v1, 0x0

    if-ne p1, v0, :cond_15

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetectionRestriciton;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void

    :cond_15
    if-nez p1, :cond_26

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetectionRestriciton;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_26
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 284
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mEnableCallback:Z

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 287
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 8

    .line 265
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mParameters:Lcom/transsion/camera/adapter/CameraParameters;

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->getPitch()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->getAzimuth()F

    move-result v0

    goto :goto_18

    :cond_16
    const/high16 v0, 0x43870000    # 270.0f

    .line 270
    :goto_18
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMoonDetectPitch(F)V

    .line 271
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->isOpenMoonDetection()Z

    move-result v0

    const-string v1, "on"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v3

    .line 272
    :goto_32
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMoonDetection(I)V

    if-nez v0, :cond_48

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 276
    :cond_48
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAiMoonMode(I)V

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    if-ne v0, v2, :cond_5a

    goto :goto_5b

    :cond_5a
    move v2, v3

    :goto_5b
    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAiMoonDetectionValue(I)V

    return v3
.end method

.method enableCallback(Z)V
    .registers 2

    .line 292
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mEnableCallback:Z

    .line 293
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->sendSettingChangeRequest()V

    return-void
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

    .line 92
    const-string p0, "key_moon_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 87
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

    .line 112
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

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_moon_detection_result"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_camera_zoom"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mIsModeFeatureSupport:Z

    if-eqz v0, :cond_33

    .line 77
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 81
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public isOpenMoonDetection()Z
    .registers 6

    .line 136
    const-string v0, "key_camera_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    sget v1, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->ZOOM_RATIO_UNIT:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x14

    .line 138
    const-string v2, "key_celebrity_scene"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    sget-object v2, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpenMoonDetection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", limitZoomValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", celebrityValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lt v0, v1, :cond_4a

    if-eqz p0, :cond_48

    .line 142
    const-string/jumbo v0, "val_celebrity_scene_none"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    :cond_48
    const/4 p0, 0x1

    return p0

    :cond_4a
    const/4 p0, 0x0

    return p0
.end method

.method onDetected([I)V
    .registers 6

    if-eqz p1, :cond_82

    .line 171
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    goto/16 :goto_82

    :cond_8
    const/4 v0, 0x3

    .line 176
    aget p1, p1, v0

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->getPitch()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->getAzimuth()F

    move-result v0

    goto :goto_21

    :cond_1f
    const/high16 v0, 0x43870000    # 270.0f

    .line 181
    :goto_21
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mLastAzimuth:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_44

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v1, :cond_44

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->getKey()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mLastAzimuth:I

    .line 185
    :cond_44
    iget v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mLastSceneType:I

    if-eq v0, p1, :cond_60

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_moon_detection_result"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mParameters:Lcom/transsion/camera/adapter/CameraParameters;

    if-eqz v0, :cond_5e

    .line 188
    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setMoonDetectResult(I)V

    .line 190
    :cond_5e
    iput p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mLastSceneType:I

    .line 193
    :cond_60
    iget v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mSceneType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_67

    if-eq v0, p1, :cond_69

    .line 195
    :cond_67
    iput p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mSceneType:I

    .line 198
    :cond_69
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "on"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_81
    return-void

    .line 172
    :cond_82
    :goto_82
    sget-object p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "moonData is wrong, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mIsModeFeatureSupport:Z

    .line 130
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAiMoonDetectionValue(I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 133
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mIsModeFeatureSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->isRegisSensorMsg()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoonDetection, PauseSensorManager"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->unInitSensorMag()V

    :cond_16
    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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
    .registers 4

    .line 53
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mSceneType:I

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mMoonSensorManager:Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;

    if-eqz v0, :cond_d

    .line 56
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->unInitSensorMag()V

    .line 58
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_moon_detection_result"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
