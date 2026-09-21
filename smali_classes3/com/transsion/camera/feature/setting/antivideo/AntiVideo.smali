.class public Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;,
        Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;,
        Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_anti_video"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final VALUE_OFF:Ljava/lang/String; = "off"

.field static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

.field private mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

.field private mAntiVideoSupportDolVideoHDR:Z

.field private mAntiVideoSupportVideoFilter:Z

.field private mCustomizedAntiSwitch:Z

.field private mIsAntiVideoSupport:Z

.field private mIsModeSupport:Z

.field private mIsOnValueChanging:Z

.field private mIsSupportLiteFaceBeauty:Z

.field private mIsValueInitiated:Z

.field private mManualValue:Ljava/lang/String;

.field private mNeedForceOpen:Z

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

.field private mSupportAiAntiVideo:Z

.field private mSupportAntvideoQuality:[Ljava/lang/String;

.field private mSupportType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAntiVideoMonitor(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOnValueChanging(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsOnValueChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsValueInitiated(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsValueInitiated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsOnValueChanging(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsOnValueChanging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmManualValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstoreValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->storeValue(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AntiVideo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 69
    new-instance v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;-><init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/feature/setting/antivideo/AntiVideo-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    .line 70
    new-instance v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/feature/setting/antivideo/AntiVideo-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsSupportLiteFaceBeauty:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsOnValueChanging:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsValueInitiated:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mCustomizedAntiSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method private checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 137
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 138
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ai"

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->aiEisExistCase()Z

    move-result v0

    if-eqz v0, :cond_17

    return-object v1

    .line 142
    :cond_17
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->aiEisExistCase()Z

    move-result p0

    if-nez p0, :cond_24

    return-object p1

    :cond_24
    return-object p2
.end method

.method private isValidValue(Ljava/lang/String;)Z
    .registers 2

    .line 461
    const-string p0, "override_values_off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "value_change_on"

    .line 462
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "value_change_off"

    .line 463
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private needPostBeautyRestriction()Z
    .registers 2

    .line 410
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsSupportLiteFaceBeauty:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 6

    .line 313
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    if-nez v0, :cond_5

    goto :goto_39

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 317
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    .line 320
    :goto_2d
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "key_anti_video_manual_value"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method private supposeOnExistCase()Z
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableTimelapseVideoAntiOnCamMode:Z

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public aiEisExistCase()Z
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAiAntiVideo:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

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

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 156
    const-string p0, "key_anti_video"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    if-nez v0, :cond_d

    .line 162
    new-instance v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    .line 165
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

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

    .line 151
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 223
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

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 89
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportType:I

    .line 90
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoSupportVideoFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoSupportVideoFilter:Z

    .line 92
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoSupportDolVideoHDR:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoSupportDolVideoHDR:Z

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportLiteFaceBeauty:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsSupportLiteFaceBeauty:Z

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedAntiSwitch:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mCustomizedAntiSwitch:Z

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAiAntiVideo:Z

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_58

    .line 97
    const-string p2, "key_anti_video_recover_default"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_on_anti_video_change_end"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_58
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
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

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->supposeOnExistCase()Z

    move-result v1

    const-string v2, "ai"

    const-string v3, "on"

    if-eqz v1, :cond_2e

    .line 108
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_2e
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3b

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 114
    :cond_3b
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    .line 117
    :cond_3d
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    .line 118
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mWidecamForceOpenAntiVideo:Z

    if-eqz v1, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v2

    :goto_5a
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mCustomizedAntiSwitch:Z

    if-eqz v1, :cond_7c

    move-object p2, p1

    :cond_7c
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 130
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    .line 132
    :cond_8e
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_anti_video_manual_value"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p2, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDataStore: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initializedRestrictionDone()V
    .registers 2

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsValueInitiated:Z

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 309
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    return p0
.end method

.method public isQualifiedToRecoverQuality()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAntiVideoType()I
    .registers 1

    .line 467
    iget p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportType:I

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 301
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    .line 302
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 303
    const-string p1, "key_anti_video"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 305
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 10

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsOnValueChanging:Z

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_anti_video_manual_value"

    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getSupport()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoRestriction;->getAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->needPostBeautyRestriction()Z

    move-result v2

    const-string v3, "ai"

    const-string v4, "on"

    if-eqz v2, :cond_4c

    .line 184
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 185
    :cond_44
    const-string v2, "0"

    const/4 v5, 0x0

    const-string v6, "key_face_beauty"

    invoke-virtual {v1, v6, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_4c
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_video_quality"

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    const-string v7, "null"

    if-eqz v6, :cond_81

    .line 190
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 191
    :cond_66
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    const/4 v2, 0x6

    .line 192
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v7}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 194
    :cond_7b
    const-string/jumbo v2, "value_change_on"

    invoke-virtual {v1, v5, v2, v7}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_81
    :goto_81
    const-string v2, "off"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 199
    const-string/jumbo v2, "value_change_off"

    invoke-virtual {v1, v5, v2, v7}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_8f
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoSupportVideoFilter:Z

    if-eqz v2, :cond_98

    .line 202
    const-string v2, "key_video_filter"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 204
    :cond_98
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoSupportDolVideoHDR:Z

    if-eqz v2, :cond_a1

    .line 205
    const-string v2, "key_com_video_hdr"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 207
    :cond_a1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 209
    sget-object v1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAntiVideoValueChanged] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    if-eqz p0, :cond_d0

    .line 212
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->sendSettingChangeRequest()V

    :cond_d0
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
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

    .line 326
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    if-nez v0, :cond_6

    goto/16 :goto_152

    .line 329
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 330
    sget-object v1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[overrideValues] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lastValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "key_video_quality"

    const-string v5, "key_anti_video"

    if-nez v3, :cond_60

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 333
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v6, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v6, v5, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "override_values_off"

    const-string v8, "null"

    .line 334
    invoke-virtual {v6, v4, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v6

    .line 333
    invoke-interface {v3, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 336
    :cond_60
    new-instance v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;-><init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)V

    .line 337
    iput-object p1, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    .line 338
    iput-object p2, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    .line 339
    iput-object p3, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->supportValues:Ljava/util/List;

    .line 341
    const-string v6, "mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c1

    iget-object v6, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v7, "key_time_lapse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c1

    iget-object v6, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    .line 342
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    iget-object v5, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v6, "key_video_effect"

    .line 343
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    iget-object v5, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v6, "key_video_filter"

    .line 344
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    iget-object v5, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v6, "key_video_frame"

    .line 345
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    iget-object v6, v3, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    .line 346
    invoke-static {v5, v6}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;->-$$Nest$misContainAvoidKey(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c1

    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v6, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    .line 347
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 348
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;->add(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$SettingValue;)V

    .line 352
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;->print()V

    .line 355
    :cond_c1
    const-string v3, "key_video_portrait"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_video_facebeauty"

    .line 356
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_video_spot"

    .line 357
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    .line 358
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_360_video_hdr"

    .line 359
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_dol_video_hdr"

    .line 360
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_transsion_filter"

    .line 361
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_video_enhance"

    .line 362
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_video_enhance_yuv"

    .line 363
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_video_asd"

    .line 364
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_video_makeup"

    .line 365
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, "key_face_beauty"

    .line 366
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    goto :goto_12a

    .line 374
    :cond_120
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isValidValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 375
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_142

    :cond_12a
    :goto_12a
    if-eqz p2, :cond_142

    .line 367
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_142

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isValidValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_142

    .line 368
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13f

    goto :goto_152

    .line 371
    :cond_13f
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->storeValue(Ljava/lang/String;)V

    .line 379
    :cond_142
    :goto_142
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    if-eqz p1, :cond_152

    if-nez p2, :cond_152

    .line 382
    const-string p1, "reset anti video to ON."

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_152
    :goto_152
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 12

    .line 228
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    if-nez v0, :cond_6

    goto/16 :goto_12a

    .line 231
    :cond_6
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "antiVideo postRestrictionAfterInitialized getCameraId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "on"

    if-eqz v1, :cond_ac

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    const-string v5, "key_video_portrait"

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    const-string v6, "key_video_facebeauty"

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    const-string v7, "key_video_makeup"

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    const-string v8, "key_transsion_filter"

    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "antiVideo postRestrictionAfterInitialized current: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video portrait: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video beauty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video makeup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video filter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    const-string/jumbo v0, "video_facebeauty_on"

    .line 245
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 246
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 247
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_9e

    .line 252
    :cond_99
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_a3

    .line 249
    :cond_9e
    :goto_9e
    const-string v0, "off"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_a3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoRestriction;->getAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    goto :goto_ba

    .line 256
    :cond_ac
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoRestriction;->getAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    move-object v0, v3

    move-object v1, v0

    .line 259
    :goto_ba
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoSupportVideoFilter:Z

    if-eqz v5, :cond_c3

    .line 260
    const-string v5, "key_video_filter"

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 262
    :cond_c3
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoSupportDolVideoHDR:Z

    if-eqz v5, :cond_cc

    .line 263
    const-string v5, "key_com_video_hdr"

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 266
    :cond_cc
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->needPostBeautyRestriction()Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 267
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 268
    const-string v5, "key_face_beauty"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_e3
    const-string v3, "key_anti_video"

    invoke-virtual {p0, v3, v0, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isQualifiedToRecoverQuality()Z

    move-result v0

    if-nez v0, :cond_ff

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_ff

    .line 275
    const-string v1, "key_quality_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ff
    if-eqz v2, :cond_12a

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_125

    .line 280
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 281
    :cond_11b
    const-string/jumbo v0, "value_change_on"

    const-string v1, "null"

    const-string v3, "key_video_quality"

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_125
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_12a
    :goto_12a
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 390
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoMonitor:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;->-$$Nest$mclearAll(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;)V

    .line 392
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mCustomizedAntiSwitch:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->aiEisExistCase()Z

    const-string v0, "on"

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    :goto_14
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mManualValue:Ljava/lang/String;

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

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    .line 170
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public unInit()V
    .registers 6

    .line 415
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_20

    .line 417
    const-string v1, "key_anti_video_recover_default"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_on_anti_video_change_end"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 421
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_anti_video_manual_value"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsValueInitiated:Z

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
