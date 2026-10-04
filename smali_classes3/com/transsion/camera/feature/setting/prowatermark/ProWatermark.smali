.class public Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumMode:Z

.field private mEditWaterMarkSupport:Z

.field private mGoldWaterMarkSupport:Z

.field private mIsModeSupport:Z

.field mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mProWatermarkConfigItems:[Ljava/lang/String;

.field private mProWatermarkSupport:Z

.field private mSelectWatermark:Ljava/lang/String;

.field private mTreasureBoxSupport:Z

.field private mWatermarkDefaultValueOn:Z


# direct methods
.method public static synthetic $r8$lambda$7Ca6jPysCB7r7B0i0rTFi-RwJ6M(Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProWatermark"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 70
    new-instance v0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private getInitializeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 153
    const-string v0, "on"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "off"

    .line 154
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move-object p1, p2

    .line 158
    :cond_12
    :goto_12
    const-string p2, "0"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "2"

    if-eqz p2, :cond_33

    .line 159
    sget-object p2, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], error! value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object p1, v0

    .line 163
    :cond_33
    const-string p2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v0, p1

    .line 168
    :goto_3f
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string v2, "key_pro_watermark_select_type"

    invoke-virtual {p0, v2, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 170
    sget-object p1, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getInitializeValue], watermarkType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_72

    .line 171
    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_72

    return-object p1

    :cond_72
    return-object v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 71
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private notifyWatermarkValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_watermark"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_18

    .line 112
    sget-object p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyWatermarkValueChanged, mStatusMonitor is null return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_18
    const-string v1, "key_pro_edit_watermark_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_gold_watermark_normal"

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 9

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkSupport:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 284
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mAIArtMuseumMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkSupport:Z

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    const-string p0, "2"

    invoke-virtual {p1, v1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setProWatermarMode(ZLjava/lang/String;)V

    return v2

    .line 289
    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getSelectWatermark()Ljava/lang/String;

    move-result-object v3

    .line 291
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mTreasureBoxSupport:Z

    if-eqz v4, :cond_3b

    const-string v4, "off"

    .line 292
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "on"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    :cond_3a
    move-object v0, v3

    .line 295
    :cond_3b
    sget-object v4, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configParameters: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", selectWatermark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->isModeSupport()Z

    move-result v3

    if-eqz v3, :cond_64

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkSupport:Z

    if-eqz p0, :cond_64

    goto :goto_65

    :cond_64
    move v1, v2

    :goto_65
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setProWatermarMode(ZLjava/lang/String;)V

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

.method public getDefaultWatermark()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkConfigItems:[Ljava/lang/String;

    if-eqz p0, :cond_b

    array-length v0, p0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 223
    aget-object p0, p0, v0

    return-object p0

    .line 225
    :cond_b
    sget-object p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getDefaultWatermark], error! mProWatermarkConfigItems is null or size is 0, return \"\"."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    const-string p0, ""

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 127
    const-string p0, "key_pro_watermark"

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

.method public getSelectWatermark()Ljava/lang/String;
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "2"

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 305
    const-string v3, "key_pro_watermark"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mSelectWatermark:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 94
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 185
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_26

    .line 186
    const-string v0, "on"

    .line 187
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mWatermarkDefaultValueOn:Z

    if-nez v1, :cond_18

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateGoldWaterMarkType: config gold watermark default value set OFF"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    const-string v0, "off"

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_2c

    .line 191
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_watermark"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_16

    monitor-exit p0

    return-object v0

    .line 193
    :cond_26
    :try_start_26
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingValue()Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_16

    monitor-exit p0

    return-object v0

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_16

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

    .line 122
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

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkSupport:Z

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkConfigItems:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkConfigItems:[Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkDefaultValueOn:Z

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isInTrOrRuMarket()Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mWatermarkDefaultValueOn:Z

    .line 61
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mTreasureBoxSupport:Z

    .line 62
    sget-object p1, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "configed proWatermark items: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkConfigItems:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkSupport:Z

    if-nez p2, :cond_52

    .line 64
    const-string p0, "init: not support"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_pro_watermark"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
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

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", default value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " save value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getInitializeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue] mValue in Setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value after adjust: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_pro_watermark"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_7c

    .line 145
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7c

    const/4 v3, 0x1

    .line 146
    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_89

    if-nez v3, :cond_89

    .line 147
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 148
    invoke-virtual {p0, v2, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_89
    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mIsModeSupport:Z

    return p0
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 82
    const-string p2, "key_gold_watermark"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mIsModeSupport:Z

    .line 83
    const-string p2, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mAIArtMuseumMode:Z

    .line 84
    sget-object p2, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsModeSupport  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mIsModeSupport:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mode  = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_31

    const-string v0, "off"

    .line 101
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 102
    :cond_2a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->notifyWatermarkValueChanged(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getSelectWatermark()Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_31
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 1

    .line 218
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 6

    .line 198
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 199
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_31

    .line 202
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mWatermarkDefaultValueOn:Z

    if-nez v0, :cond_1a

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateGoldWaterMarkType: config gold watermark default value set OFF"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    const-string v0, "off"

    goto :goto_1c

    .line 202
    :cond_1a
    const-string v0, "on"

    .line 206
    :goto_1c
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_watermark"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 236
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mProWatermarkSupport:Z

    if-nez v0, :cond_5

    return-void

    .line 240
    :cond_5
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isGoldWaterMarkSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mGoldWaterMarkSupport:Z

    .line 241
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isEditWaterMarkSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mEditWaterMarkSupport:Z

    .line 244
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->getDefaultWatermark()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mGoldWaterMarkSupport:Z

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    if-eqz v1, :cond_2e

    const-string v1, "com.transsion.camera.app.ui.widget.ProGoldWatermark"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :goto_2c
    move-object v0, v4

    goto :goto_47

    .line 248
    :cond_2e
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mEditWaterMarkSupport:Z

    if-eqz v1, :cond_3c

    const-string v1, "com.transsion.camera.app.ui.widget.ProEditWatermark"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :goto_3a
    move-object v0, v3

    goto :goto_47

    .line 250
    :cond_3c
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mGoldWaterMarkSupport:Z

    if-eqz v0, :cond_41

    goto :goto_2c

    .line 252
    :cond_41
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mEditWaterMarkSupport:Z

    if-eqz v0, :cond_46

    goto :goto_3a

    :cond_46
    move-object v0, v2

    .line 258
    :goto_47
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mGoldWaterMarkSupport:Z

    if-eqz v1, :cond_4e

    .line 259
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_4e
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mEditWaterMarkSupport:Z

    if-eqz v1, :cond_55

    .line 263
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_55
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v1, "off"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mTreasureBoxSupport:Z

    if-eqz v1, :cond_6b

    .line 272
    const-string v1, "settings"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_6b
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 180
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_pro_watermark"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/prowatermark/ProWatermark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
