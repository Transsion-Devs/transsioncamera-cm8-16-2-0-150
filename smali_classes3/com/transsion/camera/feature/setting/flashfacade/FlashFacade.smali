.class public Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_flash_facade"

.field private static final SUPER_NIGHT_FILTER_MODE_KEY:Ljava/lang/String; = "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

.field private static final SUPER_NIGHT_MODE_KEY:Ljava/lang/String; = "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackCamThrLevelSupport:Z

.field private final mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeNonsupportDualColor:Z

.field private mDefaultValue:Ljava/lang/String;

.field private mDestroyed:Z

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field private mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

.field private mModeKey:Ljava/lang/String;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mNonsupportDualColorModes:[Ljava/lang/String;

.field private mPaused:Z

.field private mPrevModeKey:Ljava/lang/String;

.field private final mSpecialVideoModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mVideoModesArray:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$BbL5bEJOiHJZDqvFk75-c_1lcsw(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->lambda$isSpecialVideoMode$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultValue(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlashManager(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashFacade"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 99
    const-string v0, "FunVideoModeEntry"

    const-string v1, "TimeLapseVideoModeEntry"

    const-string v2, "MovieModeEntry"

    const-string v3, "DualVideoModeEntry"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mSpecialVideoModeList:Ljava/util/List;

    .line 501
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 108
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    .line 109
    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 110
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackCamThrLevelSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mBackCamThrLevelSupport:Z

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getNonsupportDualColorModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mNonsupportDualColorModes:[Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModesCategory:[Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mVideoModesArray:[Ljava/lang/String;

    return-void
.end method

.method private enterRearSuperMode()Z
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isSupperNightMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isSpecialVideoMode()Z
    .registers 3

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mSpecialVideoModeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private isSupperNightMode(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_14

    .line 603
    const-string p0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoMode(Ljava/lang/String;)Z
    .registers 2

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mVideoModesArray:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isWideSelfieAndAr(Ljava/lang/String;)Z
    .registers 2

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    const-string p0, "com.transsion.camera.feature.mode.armode.ARModeEntry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$isSpecialVideoMode$0(Ljava/lang/String;)Z
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private resetIfNeed()V
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_25

    .line 592
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app_info/BaseApplication;

    iget-boolean v0, v0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedRemoveFlashTag:Z

    if-eqz v0, :cond_25

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDefaultValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 594
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Default value is null,do not reset value."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 597
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->onValueChanged(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 8

    .line 333
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private updateFacadeValue(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 319
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateFacadeValue(Ljava/lang/String;Z)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "null"

    .line 326
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 327
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;Z)V

    :cond_1d
    return-void
.end method

.method private updateValue(Ljava/lang/String;Z)V
    .registers 7

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isSupperNightMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mPaused:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDestroyed:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-nez v0, :cond_29

    .line 623
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p1, v3

    .line 627
    :cond_29
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mPaused:Z

    .line 628
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDestroyed:Z

    if-eqz p2, :cond_33

    .line 631
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    return-void

    .line 633
    :cond_33
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private videoMode()Z
    .registers 2

    .line 539
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public currentModeNonsupportDualColor()Z
    .registers 1

    .line 563
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCurrentModeNonsupportDualColor:Z

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

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 239
    const-string p0, "key_flash_facade"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-object p0
.end method

.method public getScreenFormType()I
    .registers 1

    .line 221
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mScreenFormType:I

    return p0
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

    .line 234
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 380
    :try_start_1
    const-string/jumbo v0, "torch"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    if-eqz v0, :cond_3e

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    goto :goto_68

    .line 385
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    if-eqz v0, :cond_47

    .line 386
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->value()I

    move-result v0

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    .line 388
    :goto_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catchall {:try_start_3e .. :try_end_60} :catchall_3c

    monitor-exit p0

    return-object v0

    .line 390
    :cond_62
    :try_start_62
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingValue()Ljava/lang/String;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_3c

    monitor-exit p0

    return-object v0

    :goto_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_3c

    throw v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isSupperNightMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-nez v0, :cond_13

    .line 227
    const-string v0, "SuperNightEntry"

    goto :goto_31

    .line 228
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "VIDEO"

    goto :goto_2a

    :cond_28
    const-string v1, "PHOTO"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_31
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_iso"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_exposure_time"

    invoke-virtual {v3, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isoNotAuto(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->exposureTimeNotAuto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 355
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 356
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_44
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    const-string/jumbo v3, "torch"

    const-string v4, ","

    if-eqz v2, :cond_91

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->support()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 359
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->minValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->maxValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    :cond_8d
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 366
    :cond_91
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->support()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 367
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->support()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_c9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_cd
    return-object v0

    :cond_ce
    return-object v1
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 120
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 121
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p2, :cond_1c

    .line 122
    const-string p3, "ring_screen_light_state"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "ring_screen_light_switch_state"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 125
    :cond_1c
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
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

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 164
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move-object p2, v1

    .line 166
    :cond_18
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-nez v0, :cond_2b

    move-object v4, v1

    goto :goto_2c

    :cond_2b
    move-object v4, p2

    .line 174
    :goto_2c
    iput-object v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDefaultValue:Ljava/lang/String;

    .line 176
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowPower()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_83

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowTemperature()Z

    move-result p2

    if-eqz p2, :cond_40

    goto :goto_83

    .line 178
    :cond_40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v0, :cond_5e

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getIsMovieModeFrontNoFlash()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 181
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_81

    .line 184
    :cond_5e
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 187
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_81
    :goto_81
    move-object p2, v4

    goto :goto_84

    :cond_83
    :goto_83
    move-object p2, v1

    .line 190
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_best_moment_detect"

    invoke-virtual {p1, v5, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_iso"

    invoke-virtual {v2, v6, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_exposure_time"

    invoke-virtual {v3, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v5, v2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isoNotAuto(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v5, "torch"

    if-nez v2, :cond_ce

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->exposureTimeNotAuto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 196
    :cond_ce
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    move-object p2, v1

    :cond_d5
    if-eqz p1, :cond_f0

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 200
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f1

    const-string p1, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f0

    goto :goto_f1

    :cond_f0
    move-object v1, p2

    .line 203
    :cond_f1
    :goto_f1
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isSuperNightCameraSwitch()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_106

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->videoToPhotoModes()Z

    move-result p1

    if-eqz p1, :cond_102

    goto :goto_106

    .line 208
    :cond_102
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateValue(Ljava/lang/String;Z)V

    goto :goto_109

    .line 206
    :cond_106
    :goto_106
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateValue(Ljava/lang/String;Z)V

    .line 211
    :goto_109
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, v1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public isSuperNightCameraSwitch()Z
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mPrevModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 572
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 573
    :cond_1c
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Switch camera from super night to super night filter."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoMode()Z
    .registers 2

    .line 551
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->videoMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isSpecialVideoMode()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public notifyNonsupportDualColor(Ljava/lang/String;)V
    .registers 4

    .line 488
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_17

    .line 493
    :cond_7
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 494
    const-string p1, "key_current_mode_nonsupport_dual_color"

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCurrentModeNonsupportDualColor:Z

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 407
    :try_start_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mPrevModeKey:Ljava/lang/String;

    .line 408
    const-string v0, "key_macro"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 409
    const-string v0, "key_pro_parameter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 410
    const-string v0, "key_stream_id"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 411
    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 412
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->onModeClosed(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 414
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 396
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    .line 397
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mNonsupportDualColorModes:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCurrentModeNonsupportDualColor:Z

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->enterRearSuperMode()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    const-string v0, "off"

    invoke-virtual {p1, p2, v0, p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2a
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 12

    .line 249
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_59

    const-string/jumbo v2, "torch"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-eqz p1, :cond_49

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashValue(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateLuminanceValue(I)V

    return-void

    .line 257
    :cond_59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->notifyNonsupportDualColor(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLuminanceUi(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v6, p1

    .line 259
    invoke-virtual/range {v4 .. v9}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    .line 262
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onValueChanged] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacadeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 265
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_b0
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

    .line 273
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string p3, "on"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setForceLowlight(Z)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setAeLockTriggered(Z)V

    return-void

    .line 280
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setAeLockTriggered(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "key_hdr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "key_video_enhance"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "key_video_asd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 283
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "key_video_enhance_yuv"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    goto :goto_91

    .line 296
    :cond_73
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->enterRearSuperMode()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;)V

    .line 300
    :cond_81
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isWideSelfieAndAr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ac

    .line 301
    :cond_8d
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;)V

    goto :goto_ac

    :cond_91
    :goto_91
    if-eqz p2, :cond_ac

    .line 285
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 286
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    goto :goto_c9

    .line 289
    :cond_a2
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->onValueChanged(Ljava/lang/String;)V

    goto :goto_ac

    .line 291
    :cond_a6
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->storeValue(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;)V

    .line 304
    :cond_ac
    :goto_ac
    const-string p2, "key_pro_parameter"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 305
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 306
    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLuminanceUiForProfessional(Ljava/util/List;)V

    return-void

    .line 307
    :cond_bb
    const-string p2, "key_best_moment_detect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 308
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 309
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLuminanceUiForFlashSnapLite()V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public pause()V
    .registers 2

    .line 149
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->pause()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mPaused:Z

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 4

    .line 340
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacadeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 342
    const-string v1, "key_best_moment_detect"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_19
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 3

    .line 418
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 420
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->restoreToDefault()V

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 142
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->resume()V

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->resetIfNeed()V

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

.method public setScreenFromType(I)V
    .registers 2

    .line 216
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setScreenFromType(I)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateScreenFromType(I)V

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 2

    .line 156
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->unInit()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1c

    .line 133
    const-string v1, "ring_screen_light_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "ring_screen_light_switch_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1c
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDestroyed:Z

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method

.method public updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    return-void
.end method

.method public updateLowLightStateToQC(Z)V
    .registers 3

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_15

    .line 534
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_update_low_light_state_to_qc"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    return-void
.end method

.method public updateLuminanceUi(Ljava/lang/String;)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 444
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-nez v0, :cond_1d

    goto :goto_44

    .line 448
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_44

    .line 453
    :cond_24
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "key_adjust_ui_state"

    if-eqz p1, :cond_40

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mBackCamThrLevelSupport:Z

    if-nez p1, :cond_3b

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    if-eqz p0, :cond_40

    :cond_3b
    const/4 p0, 0x1

    .line 454
    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return-void

    :cond_40
    const/4 p0, 0x0

    .line 456
    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public updateLuminanceUiForFlashSnapLite()V
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 478
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-nez v0, :cond_1d

    goto :goto_29

    .line 481
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 483
    const-string v0, "key_adjust_ui_state"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public updateLuminanceUiForProfessional(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 462
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-nez v0, :cond_1d

    goto :goto_40

    .line 466
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_40

    .line 471
    :cond_24
    const-string/jumbo v1, "torch"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_40

    .line 472
    const-string p0, "key_adjust_ui_state"

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public videoToPhotoModes()Z
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mPrevModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isVideoMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isVideoMode(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 582
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Switch camera from video mode to photo mode."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method
