.class public Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_lens_correction"

.field private static final ZOOM_EFFECT_VALUE:I


# instance fields
.field private mCurrentStreamId:Ljava/lang/String;

.field private mIsCurrentZoomSupportLens:Z

.field private mIsModeSupport:Z

.field private mSATSupportWide:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

.field private mSuperDefinitionSupport:Z

.field private mSupportHighSuperResolution:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmCurrentStreamId(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mCurrentStreamId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCurrentZoomSupportLens(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mIsCurrentZoomSupportLens:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetZOOM_EFFECT_VALUE()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->ZOOM_EFFECT_VALUE:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x36b0

    goto :goto_d

    :cond_b
    const/16 v0, 0x8c

    :goto_d
    sput v0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->ZOOM_EFFECT_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSupportHighSuperResolution:Z

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSuperDefinitionSupport:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mIsModeSupport:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mIsCurrentZoomSupportLens:Z

    .line 88
    new-instance v0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private isMemorySupport()Z
    .registers 5

    .line 145
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isLensCorrectionLimitedByMemory()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    cmp-long p0, v0, v2

    if-lez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private registerKeyToMonitor()V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->supportLensCorrection()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mIsCurrentZoomSupportLens:Z

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 182
    :goto_1a
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSATSupportWide:Z

    if-eqz v3, :cond_34

    .line 183
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mCurrentStreamId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v0

    :goto_2c
    if-eqz v2, :cond_2f

    goto :goto_31

    .line 186
    :cond_2f
    const-string v1, "off"

    :goto_31
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setDistortionCorrectionPreviewEnable(Ljava/lang/String;)V

    .line 188
    :cond_34
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setLensCorrectionMode(I)V

    const/4 p0, -0x1

    return p0
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

    .line 127
    const-string p0, "key_lens_correction"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

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

    .line 122
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

    .line 156
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

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_a

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->registerKeyToMonitor()V

    :cond_a
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 138
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    .line 163
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSuperDefinitionSupport:Z

    .line 164
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 165
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedRawSR()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    :goto_20
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSupportHighSuperResolution:Z

    if-eqz v1, :cond_36

    .line 167
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p1

    .line 169
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSATSupportWide:Z

    .line 171
    :cond_36
    const-string p1, "on"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public supportLensCorrection()Z
    .registers 3

    .line 149
    const-string v0, "key_super_definition"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSuperDefinitionSupport:Z

    if-eqz v0, :cond_28

    .line 150
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSupportHighSuperResolution:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mSuperDefinitionSupport:Z

    if-eqz v0, :cond_34

    :cond_28
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->mIsModeSupport:Z

    if-eqz v0, :cond_34

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->isMemorySupport()Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_a

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->unRegisterKeyToMonitor()V

    :cond_a
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
