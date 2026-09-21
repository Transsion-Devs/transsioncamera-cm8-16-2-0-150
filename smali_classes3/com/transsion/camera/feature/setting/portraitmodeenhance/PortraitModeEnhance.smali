.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_portraitmode_enhance"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mIsCloseByGroupCapture:Z

.field private mIsCloseByMotionCapture:Z

.field private mIsCloseBySingleBlur:Z

.field private mIsCloseBySuperDefinition:Z

.field private mIsModeSupport:Z

.field private mIsModeSupportSuperDefinition:Z

.field private mIsSupportFullSize:Z

.field private mMaxSensorSize:Landroid/util/Size;

.field private final mPictureSize8M:I

.field private mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

.field private mPortraitModeEnhanceSupport:Z

.field private mPortraitModeEnhanceSupportByAPP:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;

.field private mSuperResolutionSupportPortraitMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmPortraitModeEnhanceShot2ShotSkipPolicy(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAllCaptureEnd(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->onAllCaptureEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCaptureStart(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->onCaptureStart()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitModeEnhance"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupportSuperDefinition:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsSupportFullSize:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseByGroupCapture:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseByMotionCapture:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySingleBlur:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mSuperResolutionSupportPortraitMode:Z

    const v0, 0x79ec00

    .line 79
    iput v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPictureSize8M:I

    .line 81
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;

    return-void
.end method

.method private handleRestriction(Z)V
    .registers 4

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    if-eqz v1, :cond_32

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isFullSizeMode()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_32

    .line 192
    :cond_f
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupportSuperDefinition:Z

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceRestriction;->getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 194
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "relationgroup is null,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1f
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-nez p1, :cond_2d

    .line 200
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "relation is null,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private isFullSizeMode()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsSupportFullSize:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private onAllCaptureEnd()V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    if-eqz v0, :cond_1d

    .line 369
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Shot2ShotSkip] onAllCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;->resetCount()V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private onCaptureStart()V
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    if-eqz v0, :cond_25

    .line 359
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Shot2ShotSkip]  onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;->increaseCount()V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 299
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    const-string v1, "off"

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    if-nez v0, :cond_c

    goto/16 :goto_80

    .line 304
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->rejectByPMasterTrueToneV2()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v0, v1

    .line 309
    :cond_17
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mSuperResolutionSupportPortraitMode:Z

    if-nez v3, :cond_20

    move-object v0, v1

    .line 312
    :cond_20
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseByGroupCapture:Z

    if-nez v3, :cond_2c

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseByMotionCapture:Z

    if-nez v3, :cond_2c

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySingleBlur:Z

    if-eqz v3, :cond_2d

    :cond_2c
    move-object v0, v1

    .line 315
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v3

    if-eqz v3, :cond_34

    move-object v0, v1

    .line 319
    :cond_34
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 320
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[Shot2ShotSkip] needSkipAlgo !!! "

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_47

    :cond_46
    move-object v1, v0

    .line 323
    :goto_47
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters] PME2_ portraitmode enhance value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " supportSuperResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mSuperResolutionSupportPortraitMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", rejectByPMasterTrueToneV2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mSuperResolutionSupportPortraitMode:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionSupportPortraitMode(Z)V

    .line 327
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPortraitModeEnhanceValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_80
    :goto_80
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "portraitmode enhance is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPortraitModeEnhanceValue(Ljava/lang/String;)V

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

    .line 141
    const-string p0, "key_portraitmode_enhance"

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

    .line 136
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

    .line 162
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

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 87
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableShotToShotPortraitEnhanceBypass:Z

    if-eqz p1, :cond_22

    .line 89
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 90
    new-instance p1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;-><init>()V

    goto :goto_20

    .line 91
    :cond_1b
    new-instance p1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;-><init>()V

    :goto_20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    .line 93
    :cond_22
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitModeEnhanceSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupportByAPP:Z

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsSupportFullSize:Z

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperResolutionSupportPortraitMode:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mSuperResolutionSupportPortraitMode:Z

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_45

    .line 97
    const-string p2, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_45
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 9
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

    .line 111
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 112
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_super_definition"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v2, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isFullSizeMode()Z

    move-result v2

    if-nez v2, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    .line 119
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, " mIsCloseBySuperDefinition = "

    if-eqz p1, :cond_7f

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], setValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initializeValue], setDefaultValue: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isCameraFacingBack()Z
    .registers 1

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 174
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    .line 176
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPortraitModeEnhanceValue(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 177
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    .line 169
    const-string p1, "key_super_definition"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupportSuperDefinition:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 153
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPortraitModeEnhanceValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->handleRestriction(Z)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
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

    .line 213
    const-string v0, "key_super_definition"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 214
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    return-void

    .line 215
    :cond_13
    const-string v0, "key_group_capture"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p2, :cond_24

    .line 216
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseByGroupCapture:Z

    return-void

    :cond_24
    if-eqz p2, :cond_35

    .line 217
    const-string v0, "key_best_moment_detect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 218
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseByMotionCapture:Z

    return-void

    .line 219
    :cond_35
    const-string v0, "key_single_blur"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    if-eqz p2, :cond_46

    .line 220
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySingleBlur:Z

    return-void

    .line 222
    :cond_46
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 2

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->handleRestriction(Z)V

    return-void
.end method

.method public rejectByPMasterTrueToneV2()Z
    .registers 5

    .line 227
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-nez v0, :cond_12

    return v1

    .line 228
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 229
    :cond_19
    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    .line 230
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_mu_face_beauty"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "off"

    if-nez v2, :cond_3d

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v1

    .line 232
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSingleBlurForBackCamera:Z

    if-eqz v2, :cond_4a

    const-string v2, "key_mu_monomer"

    goto :goto_4c

    :cond_4a
    const-string v2, "key_mu_stereo"

    :goto_4c
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "f0.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return v1

    .line 234
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_hdr"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    return v1

    .line 236
    :cond_74
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mu_slimbody"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string/jumbo v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    return v1

    :cond_8c
    const/4 p0, 0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 9

    .line 246
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mMaxSensorSize:Landroid/util/Size;

    .line 250
    :cond_15
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isPortraitModeEnhanceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    .line 251
    sget-object p1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities,mPortraitModeEnhanceSupport:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mMaxSensorSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mMaxSensorSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    if-eqz v2, :cond_b2

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    if-eqz v2, :cond_b2

    .line 255
    const-string v2, "on"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupportByAPP:Z

    if-eqz v3, :cond_ae

    .line 258
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v3

    .line 260
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->judgeMemory()I

    move-result v4

    const/4 v5, 0x4

    const v6, 0x79ec00

    if-lt v4, v5, :cond_84

    if-eqz v3, :cond_74

    :goto_72
    move-object v0, v2

    goto :goto_94

    .line 266
    :cond_74
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mMaxSensorSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mMaxSensorSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-gt v4, v6, :cond_94

    goto :goto_72

    .line 273
    :cond_84
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mMaxSensorSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mMaxSensorSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-gt v4, v6, :cond_94

    goto :goto_72

    .line 279
    :cond_94
    :goto_94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitEnhanceDefault:[Ljava/lang/String;

    if-eqz v2, :cond_a9

    .line 280
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a9

    if-eqz v3, :cond_a6

    const/4 v0, 0x1

    .line 282
    aget-object v2, v2, v0

    goto :goto_aa

    .line 284
    :cond_a6
    aget-object v2, v2, v1

    goto :goto_aa

    :cond_a9
    move-object v2, v0

    .line 288
    :cond_aa
    :goto_aa
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_ae
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_b2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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
    .registers 3

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 105
    const-string v1, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;

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
