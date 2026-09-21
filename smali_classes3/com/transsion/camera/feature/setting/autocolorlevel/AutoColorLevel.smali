.class public Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArcFilterSupport:Z

.field private mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

.field private mHdrSupport:Z

.field private mModeSupport:Z

.field private mOverrideValueByFilter:Ljava/lang/String;

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;

.field private mSuperDefinitionSupport:Z

.field private mSuperDefinitionSupportFullSize:Z

.field private mUseTranssionFilter:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AutoColorLevel"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mArcFilterSupport:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupport:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mHdrSupport:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mUseTranssionFilter:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupportFullSize:Z

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;

    return-void
.end method

.method private initValue(Ljava/util/List;Ljava/lang/String;)V
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

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    if-eqz v0, :cond_1c

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 103
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1c
    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private isCameraFacingBack()Z
    .registers 1

    .line 163
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCompatibleWithFaceBeauty()Z
    .registers 4

    .line 127
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isCompatibleWithFaceBeauty++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 130
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    if-nez v1, :cond_21

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v1, :cond_41

    .line 131
    :cond_21
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    if-nez v1, :cond_41

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isCameraFacingBack()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 133
    const-string v1, "key_mu_face_beauty"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 134
    const-string v1, "off"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_41

    const/4 p0, 0x0

    goto :goto_42

    :cond_41
    const/4 p0, 0x1

    .line 140
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCompatibleWithFaceBeauty--:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private isSupportFullSize()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupportFullSize:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 4

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->filterOff()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->superDefinitionOff()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isCompatibleWithFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isCameraFacingBack()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 251
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[Shot2ShotSkip] needSkipAlgo !!! "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setColorLevel(Ljava/lang/String;)V

    goto :goto_44

    .line 254
    :cond_39
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setColorLevel(Ljava/lang/String;)V

    goto :goto_44

    .line 258
    :cond_41
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setColorLevel(Ljava/lang/String;)V

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return p0
.end method

.method filterOff()Z
    .registers 3

    .line 110
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mArcFilterSupport:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 113
    :cond_6
    const-string v0, "key_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "0"

    .line 115
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "-1"

    .line 116
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    return v1
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

    .line 174
    const-string p0, "key_auto_color_level"

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

    .line 169
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

    .line 179
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

.method hdrOff()Z
    .registers 3

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mHdrSupport:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 122
    :cond_6
    const-string v0, "key_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "off"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupportFullSize:Z

    .line 81
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mUseTranssionFilter:Z

    .line 82
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableShotToShotAutoColorLevelBypass:Z

    if-eqz p1, :cond_22

    .line 83
    new-instance p1, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    .line 85
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_2d

    .line 86
    const-string p2, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2d
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
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

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->initValue(Ljava/util/List;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mOverrideValueByFilter:Ljava/lang/String;

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 227
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    return p0
.end method

.method onAllCaptureEnd()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    if-eqz v0, :cond_1d

    .line 300
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Shot2ShotSkip] onAllCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->resetCount()V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method onCaptureStart()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    if-eqz v0, :cond_25

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Shot2ShotSkip]  onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->increaseCount()V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 221
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 223
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    .line 214
    const-string p1, "key_filter"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mUseTranssionFilter:Z

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mArcFilterSupport:Z

    .line 215
    const-string p1, "key_super_definition"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupport:Z

    .line 216
    const-string p1, "key_hdr"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mHdrSupport:Z

    return-void
.end method

.method onShot2ShotEnd()V
    .registers 2

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mAutoColorLevelShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;

    if-eqz p0, :cond_b

    .line 294
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[Shot2ShotSkip] onShot2ShotEnd"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 184
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->sendSettingChangeRequest()V

    :cond_34
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
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

    .line 195
    const-string v0, "key_filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mOverrideValueByFilter:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 197
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mOverrideValueByFilter:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->sendSettingChangeRequest()V

    :cond_15
    return-void

    .line 201
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 8

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->colorLevelSupport()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 235
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseDXOArea()Z

    move-result p1

    if-nez p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 236
    :goto_21
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoColorLevelDefaultOpen:Z

    const-string v3, "on"

    if-eqz v2, :cond_2e

    if-eqz p1, :cond_2e

    move-object v1, v3

    .line 238
    :cond_2e
    sget-object v2, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCameraCapabilities, colorLevelSupport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", defaultValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_51

    .line 241
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_51
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method superDefinitionOff()Z
    .registers 3

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupport:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 148
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 151
    :cond_d
    const-string v0, "key_super_definition"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 155
    :cond_1a
    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 3

    .line 275
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 277
    const-string v1, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
