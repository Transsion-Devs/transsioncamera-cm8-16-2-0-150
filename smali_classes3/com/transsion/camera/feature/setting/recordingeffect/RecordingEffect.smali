.class public Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final SCHEMA_KEY:Ljava/lang/String; = "LVACFS_SCHEMA"

.field private static final SUPPORT_2_MIC_VALUE:Ljava/lang/String; = "LVACFS_MIC_NUMBER=2"

.field private static final SUPPORT_3_MIC_VALUE:Ljava/lang/String; = "LVACFS_MIC_NUMBER=3"

.field private static final SUPPORT_MIC_NUMBER_KEY:Ljava/lang/String; = "LVACFS_MIC_NUMBER"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_FACTOR_DEFAULT_VALUE:Ljava/lang/String; = "1"

.field private static final ZOOM_FACTOR_KEY:Ljava/lang/String; = "LVACFS_ZOOMFACTOR"


# instance fields
.field private mBasezoom:F

.field private mContent:Landroid/content/Context;

.field private mCurrentModeKey:Ljava/lang/String;

.field private mIsVideoMode:Z

.field private mMicNumber:Ljava/lang/String;

.field private final mRecordingStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

.field private mSetAudioParameterHandler:Landroid/os/Handler;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field support2Mic:Z

.field support3Mic:Z


# direct methods
.method public static synthetic $r8$lambda$J-fzHG6tCf3Lmgg2h9RmQe6NKxw(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->lambda$setAudioEffect$0(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoMode(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mIsVideoMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBasezoom(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mBasezoom:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSchemaValue(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSchemaValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecordingEffect"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mCurrentModeKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mIsVideoMode:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->support3Mic:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->support2Mic:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    iput v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mBasezoom:F

    .line 77
    new-instance v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;-><init>(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mRecordingStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    .line 134
    new-instance v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;-><init>(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private formatToFloat(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 307
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 308
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 309
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    float-to-double v1, p0

    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 312
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatToFloat NumberFormatException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private getCameraId()Ljava/lang/String;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSchemaValue()Ljava/lang/String;
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "on"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 128
    const-string p0, "3"

    return-object p0

    :cond_1b
    return-object v0
.end method

.method private initAudioThread()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mSetAudioParameterHandler:Landroid/os/Handler;

    if-nez v0, :cond_20

    .line 244
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initAudioThread]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_SetAudioParameter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mSetAudioParameterHandler:Landroid/os/Handler;

    :cond_20
    return-void
.end method

.method private synthetic lambda$setAudioEffect$0(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mContent:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_72

    .line 290
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string v2, "LVACFS_ZOOMFACTOR"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 292
    aget-object v2, p2, v3

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->formatToFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    .line 294
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v3

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 295
    sget-object v4, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setAudioEffect]   parameter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  keyValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_72

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method private setSecondValue(Ljava/lang/String;)V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoRecordingEffectZoomValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

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

    .line 206
    const-string p0, "key_recording_effect"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mRecordingStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    return-object p0
.end method

.method public getSecondKey()Ljava/lang/String;
    .registers 1

    .line 211
    const-string p0, "key_recording_effect_zoom"

    return-object p0
.end method

.method public getSecondSettingValue()Ljava/lang/String;
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "on"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    .line 201
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

    .line 359
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

.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 377
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 379
    const-string v0, "0"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_12

    .line 381
    :cond_10
    :goto_10
    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v0
.end method

.method protected getZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 155
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 156
    sget-object v1, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getZoomValue] zoomValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    :try_start_18
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_2f

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mBasezoom:F

    :goto_29
    mul-float/2addr p1, p0

    float-to-int p0, p1

    move v0, p0

    goto :goto_4d

    :catch_2d
    move-exception p0

    goto :goto_37

    .line 161
    :cond_2f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mBasezoom:F
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_36} :catch_2d

    goto :goto_29

    .line 164
    :goto_37
    sget-object p1, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberFormatException ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    :goto_4d
    rem-int/lit8 p0, v0, 0x64

    const-string p1, "%d"

    if-nez p0, :cond_64

    .line 167
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_64
    rem-int/lit8 p0, v0, 0xa

    const/4 v1, 0x5

    if-ne p0, v1, :cond_80

    add-int/lit8 v0, v0, -0x5

    .line 171
    rem-int/lit8 p0, v0, 0x64

    if-nez p0, :cond_80

    .line 172
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :cond_80
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 p1, v0, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d.%d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 181
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mContent:Landroid/content/Context;

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_camera_zoom"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

    .line 364
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 367
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_recording_effect"

    .line 369
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoRecordingEffectValue(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoRecordingEffectZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isHeadSetOn()Z
    .registers 2

    .line 319
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_13

    .line 321
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isSupport3Mic()Z
    .registers 2

    .line 432
    const-string v0, "LVACFS_MIC_NUMBER=3"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mMicNumber:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 238
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 239
    sget-object p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onCameraIdChanged]  "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExtraValueChanged(Ljava/lang/String;)V
    .registers 7

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_64

    .line 329
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtraValueChanged   value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setSecondValue(Ljava/lang/String;)V

    .line 331
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LVACFS_SCHEMA"

    const-string v2, "0"

    if-eqz v0, :cond_35

    .line 332
    const-string v0, "LVACFS_ZOOMFACTOR"

    const-string v3, "1"

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_35
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 337
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 338
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoRecordingEffectValue(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    :cond_5f
    const-string p1, "3"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 115
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeClosed] + modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mCurrentModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mIsVideoMode:Z

    if-eqz p1, :cond_37

    .line 119
    const-string p1, "LVACFS_SCHEMA"

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string p1, "LVACFS_ZOOMFACTOR"

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_37

    :catchall_35
    move-exception p1

    goto :goto_39

    .line 122
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_35

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 7

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeOpened] + modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  modeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mCurrentModeKey:Ljava/lang/String;

    .line 107
    const-string p2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mIsVideoMode:Z

    if-eqz p1, :cond_36

    .line 109
    const-string p1, "LVACFS_SCHEMA"

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSchemaValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 217
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoRecordingEffectValue(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "on"

    if-nez v0, :cond_59

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 224
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setSecondValue(Ljava/lang/String;)V

    .line 225
    const-string v0, "LVACFS_ZOOMFACTOR"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 228
    :cond_59
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 229
    const-string p1, "3"

    .line 232
    :cond_65
    :goto_65
    const-string v0, "LVACFS_SCHEMA"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
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

    .line 349
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 391
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 256
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAudioEffect]   parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mContent:Landroid/content/Context;

    if-nez v1, :cond_27

    .line 258
    const-string v1, "[setAudioEffect] content is Null!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    :cond_27
    const-string v0, "LVACFS_SCHEMA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 262
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "3"

    const-string v2, "2"

    const/4 v3, 0x1

    const-string v4, "1"

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_a6

    goto :goto_67

    :pswitch_42
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_67

    :cond_49
    const/4 v5, 0x3

    goto :goto_67

    :pswitch_4b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_67

    :cond_52
    const/4 v5, 0x2

    goto :goto_67

    :pswitch_54
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_67

    :cond_5b
    move v5, v3

    goto :goto_67

    :pswitch_5d
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_67

    :cond_66
    const/4 v5, 0x0

    :goto_67
    packed-switch v5, :pswitch_data_b2

    goto :goto_92

    :pswitch_6b
    move-object p2, v2

    goto :goto_92

    :pswitch_6d
    move-object p2, v1

    goto :goto_92

    .line 271
    :pswitch_6f
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    .line 272
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-ne v3, p2, :cond_8e

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->isSupport3Mic()Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 274
    const-string p2, "5"

    goto :goto_92

    .line 284
    :cond_8e
    const-string p2, "4"

    goto :goto_92

    :pswitch_91
    move-object p2, v4

    :cond_92
    :goto_92
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->initAudioThread()V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mSetAudioParameterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a5

    .line 287
    new-instance v1, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x30
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_91
        :pswitch_6f
        :pswitch_6d
        :pswitch_6b
    .end packed-switch
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 405
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getMicNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mMicNumber:Ljava/lang/String;

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 407
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_22

    .line 409
    const-string v0, "LVACFS_MIC_NUMBER"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mMicNumber:Ljava/lang/String;

    .line 413
    :cond_22
    const-string p1, "LVACFS_MIC_NUMBER=3"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mMicNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    .line 414
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->support3Mic:Z

    goto :goto_3c

    .line 415
    :cond_30
    const-string p1, "LVACFS_MIC_NUMBER=2"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mMicNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 416
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->support2Mic:Z

    .line 419
    :cond_3c
    :goto_3c
    sget-object p1, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCapabilities] mMicNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mMicNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 420
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    const-string v0, "0"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->support2Mic:Z

    const-string v2, "1"

    if-eqz v1, :cond_67

    .line 423
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_67
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->support3Mic:Z

    if-eqz v1, :cond_73

    .line 426
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v1, "2"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_73
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

    .line 190
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]  "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mSetAudioParameterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 194
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->mSetAudioParameterHandler:Landroid/os/Handler;

    :cond_21
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
