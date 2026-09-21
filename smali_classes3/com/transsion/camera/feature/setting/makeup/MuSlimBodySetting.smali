.class public Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final FEATURES_ARRAY:[I

.field private static final IMMUTABLE_FEATURE_SIZE:I = 0x7

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDefaultCloseSBState:Z

.field private mFaceAttributeSupport:Z

.field private mIsFacingBack:Z

.field private mIsModeSupport:Z

.field private mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuSlimBodySetting"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x7

    .line 45
    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->FEATURES_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsFacingBack:Z

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;

    .line 49
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableShotToShotSlimBodyBypass:Z

    if-eqz v0, :cond_2f

    .line 51
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedMuSlimeBodyShot2ShotSkipPolicy()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;-><init>()V

    goto :goto_2d

    .line 53
    :cond_28
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;-><init>()V

    :goto_2d
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    :cond_2f
    return-void
.end method

.method private defaultSlimbodyValue()Ljava/lang/String;
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mDefaultCloseSBState:Z

    if-eqz p0, :cond_8

    .line 147
    const-string/jumbo p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0

    .line 149
    :cond_8
    const-string/jumbo p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .registers 5

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 157
    const-string v1, "0"

    if-eqz v0, :cond_16

    .line 158
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mFaceAttributeSupport:Z

    if-eqz v2, :cond_16

    .line 159
    const-string v2, "key_gender_attribute_value"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultSlimBodyItemInfo(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setSlimBodyCustomDefaultValue()V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "key_mu_slimbody_custom"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 171
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 10

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->isModeSupport()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_ff

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->isFacingBack()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_ff

    .line 251
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v2

    if-nez v2, :cond_1a

    return v1

    .line 257
    :cond_1a
    iget-object v1, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_31

    iget-object v1, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_31

    :cond_2f
    move v1, v4

    goto :goto_32

    :cond_31
    :goto_31
    move v1, v3

    .line 258
    :goto_32
    sget-object v5, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[configParameters], SlimBodyParam value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",contrastState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",contrastOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result p0

    if-eqz p0, :cond_6d

    .line 261
    const-string p0, "[Shot2ShotSkip] needSkipAlgo !!! "

    invoke-static {v5, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodySkip(I)V

    goto :goto_70

    .line 264
    :cond_6d
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodySkip(I)V

    :goto_70
    const/4 p0, 0x6

    if-eqz v1, :cond_ec

    .line 269
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget v1, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 271
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->FEATURES_ARRAY:[I

    iget v5, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    aput v5, v1, v4

    .line 272
    iget v5, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    aput v5, v1, v3

    const/4 v5, 0x2

    .line 273
    iget v6, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    aput v6, v1, v5

    const/4 v5, 0x3

    .line 274
    iget v6, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    aput v6, v1, v5

    .line 275
    iget v5, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    neg-int v5, v5

    const/4 v6, 0x4

    aput v5, v1, v6

    const/4 v5, 0x5

    .line 276
    iget v6, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    aput v6, v1, v5

    .line 277
    iget v5, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    aput v5, v1, p0

    .line 278
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyLevels([I)V

    .line 279
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    iget p1, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    .line 280
    const-string/jumbo p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 p1, 0x3e8

    if-eqz p0, :cond_c5

    .line 281
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    filled-new-array {v3, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_fe

    .line 282
    :cond_c5
    const-string/jumbo p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e0

    const-string/jumbo p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d8

    goto :goto_e0

    .line 285
    :cond_d8
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_fe

    .line 283
    :cond_e0
    :goto_e0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    filled-new-array {p1, v3}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_fe

    .line 289
    :cond_ec
    iget v0, v2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    if-nez v0, :cond_f4

    .line 290
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    goto :goto_f7

    .line 292
    :cond_f4
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 294
    :goto_f7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    :goto_fe
    return v4

    :cond_ff
    :goto_ff
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

    .line 182
    const-string p0, "key_mu_slimbody"

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

    .line 177
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->defaultSlimbodyValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
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

    .line 206
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
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mFaceAttributeSupport:Z

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMakeUpCloseSBState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mDefaultCloseSBState:Z

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_22

    .line 63
    const-string p2, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_22
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

    if-eqz p1, :cond_33

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_9

    goto :goto_33

    .line 109
    :cond_9
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->defaultSlimbodyValue()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->setSlimBodyCustomDefaultValue()V

    :cond_33
    :goto_33
    return-void
.end method

.method protected isFacingBack()Z
    .registers 1

    .line 211
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsFacingBack:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    return p0
.end method

.method onAllCaptureEnd()V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    if-eqz v0, :cond_1d

    .line 317
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Shot2ShotSkip] onAllCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->resetCount()V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsFacingBack:Z

    return-void
.end method

.method onCaptureStart()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    if-eqz v0, :cond_25

    .line 301
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Shot2ShotSkip] onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 305
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->increaseCount()V

    :cond_25
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 87
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsFacingBack:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 90
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    if-eqz p1, :cond_a

    .line 79
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->resetCount()V

    .line 81
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsFacingBack:Z

    return-void
.end method

.method onShot2ShotEnd()V
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mMuSlimeBodyShot2ShotSkipPolicy:Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->needSkipAlgo()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 311
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[Shot2ShotSkip] onShot2ShotEnd "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 193
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->sendSettingChangeRequest()V

    :cond_24
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->isFacingBack()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3a

    .line 236
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    const-string/jumbo v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string/jumbo v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string/jumbo v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":4,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":2,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v1, "{\"bodySlim\":60,\"buttPlump\":60,\"chestPlump\":0,\"waistUpper\":0,\"headShrink\":60,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":10,\"waistSlim\":50}"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_3a
    :goto_3a
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setCameraCapabilities, SlimBody is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    .line 69
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 71
    const-string v1, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting$StatusChangeListener;

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
