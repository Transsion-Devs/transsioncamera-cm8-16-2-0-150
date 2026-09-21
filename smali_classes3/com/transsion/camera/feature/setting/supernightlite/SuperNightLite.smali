.class public Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;
    }
.end annotation


# static fields
.field private static final FRAMES_NUM:I = 0x5

.field private static final MAX_SHUTTER:I = 0x1d4c0

.field private static final SETTING_KEY:Ljava/lang/String; = "key_super_night_lite"

.field private static final SUPER_NIGHT_COUNTDOWN_TIME_FOR_LOW_MEMORY:I = 0xfa0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentShutterValue:I

.field private mFlashOn:Z

.field private mIsModeSupport:Z

.field private mIsPostAlgoOn:Z

.field private mIsSuperNightModeOn:Z

.field private mIsTripodSuperNight:Z

.field private mIsUltraHDModeOn:Z

.field private mLatestShutterValue:I

.field private mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

.field private final mNightLiteResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mParameters:Lcom/transsion/camera/adapter/CameraParameters;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRestoreValue:Z

.field private final mShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mSuperAiRawSupport:Z

.field private final mTurboFusionSupport:Z


# direct methods
.method public static synthetic $r8$lambda$evEizZSHqAZrHZugT6ysmquKy8k(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtr1ZYh91ehSm28pUTpvxtgRjFg(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->lambda$new$1(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightLite"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mSuperAiRawSupport:Z

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mTurboFusionSupport:Z

    .line 46
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsModeSupport:Z

    .line 47
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsPostAlgoOn:Z

    .line 51
    iput v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mLatestShutterValue:I

    .line 52
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mRestoreValue:Z

    .line 54
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsTripodSuperNight:Z

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 169
    new-instance v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;-><init>(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 287
    new-instance v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mNightLiteResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 362
    new-instance v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$2;-><init>(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_8e

    goto :goto_57

    :sswitch_2c
    const-string v0, "ai_raw_lite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_57

    :cond_35
    const/4 v3, 0x3

    goto :goto_57

    :sswitch_37
    const-string v0, "key_super_night_lite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_57

    :cond_40
    const/4 v3, 0x2

    goto :goto_57

    :sswitch_42
    const-string v0, "key_super_night_lite_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_57

    :cond_4b
    move v3, v1

    goto :goto_57

    :sswitch_4d
    const-string v0, "key_tripod_super_night_stable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    move v3, v2

    :goto_57
    const-string p1, "on"

    const-string v0, "off"

    packed-switch v3, :pswitch_data_a0

    goto :goto_81

    .line 109
    :pswitch_5f
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsPostAlgoOn:Z

    return-void

    .line 99
    :pswitch_69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->isModeSupport()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 101
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->onValueChanged(Ljava/lang/String;)V

    .line 103
    :cond_78
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 104
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->onValueChanged(Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void

    .line 112
    :pswitch_82
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mRestoreValue:Z

    return-void

    .line 115
    :pswitch_85
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsTripodSuperNight:Z

    return-void

    :sswitch_data_8e
    .sparse-switch
        -0x7d4842b5 -> :sswitch_4d
        -0x746c5766 -> :sswitch_42
        -0x5882c267 -> :sswitch_37
        -0x3fd32364 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_85
        :pswitch_82
        :pswitch_69
        :pswitch_5f
    .end packed-switch
.end method

.method private synthetic lambda$new$1(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 289
    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkSuperNightLiteResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_17

    .line 290
    array-length v6, v3

    if-ne v6, v4, :cond_17

    .line 291
    aget v3, v3, v5

    iput v3, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    goto/16 :goto_f7

    .line 293
    :cond_17
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 294
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v11}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v11, v11

    .line 295
    sget-object v13, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v13}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    const/4 v14, 0x4

    if-eqz v13, :cond_4a

    .line 298
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v14, :cond_4a

    move v13, v4

    goto :goto_4b

    :cond_4a
    move v13, v5

    :goto_4b
    if-eqz v3, :cond_62

    .line 305
    array-length v15, v3

    if-ne v15, v14, :cond_62

    .line 306
    aget v14, v3, v5

    int-to-double v14, v14

    move-wide/from16 v16, v8

    .line 307
    aget v8, v3, v4

    int-to-double v8, v8

    const/16 v18, 0x2

    .line 308
    aget v18, v3, v18

    const/16 v18, 0x3

    .line 309
    aget v3, v3, v18

    int-to-double v4, v3

    goto :goto_73

    :cond_62
    move-wide/from16 v16, v8

    const-wide v8, 0x40cf400000000000L    # 16000.0

    const-wide v14, 0x40f1177000000000L    # 70007.0

    const-wide v4, 0x40fd4c0000000000L    # 120000.0

    :goto_73
    long-to-double v1, v6

    cmpg-double v3, v1, v14

    if-gez v3, :cond_81

    .line 313
    div-long v6, v6, v16

    const-wide/16 v1, 0x5

    mul-long/2addr v6, v1

    long-to-int v1, v6

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    goto :goto_c1

    .line 315
    :cond_81
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-wide/from16 v16, v1

    const-wide/16 v1, 0x0

    const-wide/high16 v19, 0x40b9000000000000L    # 6400.0

    sub-double v6, v6, v19

    .line 316
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    sub-double v8, v8, v19

    div-double/2addr v1, v8

    sub-double v6, v4, v14

    mul-double/2addr v1, v6

    .line 317
    sget-object v3, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " addShutter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v8, v4, v6

    add-double v1, v16, v1

    div-double/2addr v1, v6

    .line 318
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    .line 320
    :goto_c1
    sget-object v1, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " the exposureTime is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " realISO is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " aeFlashRequired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " maxShutterValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " defaultMaxShutter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    :goto_f7
    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsPostAlgoOn:Z

    if-eqz v1, :cond_108

    iget-object v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mParameters:Lcom/transsion/camera/adapter/CameraParameters;

    if-eqz v1, :cond_108

    .line 326
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    if-nez v1, :cond_106

    goto :goto_108

    :cond_106
    :goto_106
    const/4 v1, 0x0

    goto :goto_111

    .line 327
    :cond_108
    :goto_108
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz v1, :cond_132

    goto :goto_106

    .line 328
    :goto_111
    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 329
    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAeeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    if-eqz v2, :cond_180

    .line 330
    array-length v3, v2

    if-lez v3, :cond_180

    move v3, v1

    .line 331
    :goto_121
    aget v4, v2, v1

    if-ge v3, v4, :cond_180

    .line 332
    iget v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v1, v4

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    const/4 v1, 0x0

    goto :goto_121

    :cond_132
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 335
    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsTripodSuperNight:Z

    if-eqz v1, :cond_14e

    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsSuperNightModeOn:Z

    if-eqz v1, :cond_14e

    .line 336
    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkTripodSuperNightCountdown(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    if-eqz v1, :cond_180

    .line 337
    array-length v2, v1

    if-lez v2, :cond_180

    const/16 v18, 0x0

    .line 338
    aget v1, v1, v18

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    goto :goto_180

    .line 340
    :cond_14e
    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsSuperNightModeOn:Z

    if-nez v1, :cond_15a

    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mSuperAiRawSupport:Z

    if-nez v1, :cond_15a

    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mTurboFusionSupport:Z

    if-eqz v1, :cond_180

    :cond_15a
    const/4 v1, 0x0

    .line 341
    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    .line 342
    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkSuperNightLiteResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    if-eqz v2, :cond_16a

    .line 343
    array-length v3, v2

    if-lez v3, :cond_16a

    .line 344
    aget v1, v2, v1

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    .line 346
    :cond_16a
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    const/16 v2, 0x67

    if-gt v1, v2, :cond_180

    .line 347
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLowMemoryLimitClickTime:I

    if-lez v1, :cond_180

    .line 348
    iget v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    add-int/lit16 v1, v1, 0xfa0

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    .line 352
    :cond_180
    :goto_180
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v1

    if-eqz v1, :cond_1b0

    .line 354
    iget v2, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mLatestShutterValue:I

    iget v3, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    if-eq v2, v3, :cond_1ac

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 356
    sget-object v1, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the shutter value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    :cond_1ac
    iget v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mCurrentShutterValue:I

    iput v1, v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mLatestShutterValue:I

    :cond_1b0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 272
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mNightLiteResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    .line 275
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsPostAlgoOn:Z

    if-eqz p1, :cond_34

    .line 276
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setSettingShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    return-void

    .line 279
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mNightLiteResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    .line 281
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsPostAlgoOn:Z

    if-eqz p0, :cond_34

    .line 282
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setSettingShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_34
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 255
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mParameters:Lcom/transsion/camera/adapter/CameraParameters;

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->isModeSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_best_moment_detect"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v4, "key_bm_detect_icon_visible"

    invoke-virtual {v2, v4, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 259
    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 260
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setAbeHdrCheckMode(I)V

    goto :goto_38

    :cond_30
    const/4 p0, 0x1

    .line 262
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAbeHdrCheckMode(I)V

    goto :goto_38

    .line 265
    :cond_35
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setAbeHdrCheckMode(I)V

    :goto_38
    return v1
.end method

.method public flashOn()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1d

    :cond_19
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mFlashOn:Z

    goto :goto_20

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mFlashOn:Z

    .line 127
    :goto_20
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mFlashOn:Z

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

    .line 190
    const-string p0, "key_super_night_lite"

    return-object p0
.end method

.method public getNextCaptureCallBack()Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 69
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

    .line 185
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

    const-string p2, "key_super_night_lite"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_tripod_super_night_stable"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "ai_raw_lite"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_night_lite_switch"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mRestoreValue:Z

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

    .line 226
    sget-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",   defaultValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 230
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_43

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 234
    :cond_43
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 205
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsModeSupport:Z

    return p0
.end method

.method public isRestore()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mRestoreValue:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 210
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsModeSupport:Z

    .line 212
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsSuperNightModeOn:Z

    .line 213
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsUltraHDModeOn:Z

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p1, :cond_19

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_1b

    .line 217
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_17

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsModeSupport:Z

    .line 197
    const-string p2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_20

    const-string p2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 198
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p2, 0x1

    :goto_21
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsSuperNightModeOn:Z

    .line 199
    const-string p2, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsUltraHDModeOn:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLiteRestriction;->getSuperNightLiteRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 89
    :cond_30
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public postAlgoOn()Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsPostAlgoOn:Z

    return p0
.end method

.method public postRestrictionAfterInitialized()V
    .registers 4

    .line 239
    invoke-static {}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLiteRestriction;->getSuperNightLiteRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_14
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mRestoreValue:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 247
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setNextCaptureCallBack(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mNextCaptureCallBack:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

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

.method public superNightModeOn()Z
    .registers 1

    .line 135
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsSuperNightModeOn:Z

    return p0
.end method

.method public ultraHDModeOn()Z
    .registers 1

    .line 138
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mIsUltraHDModeOn:Z

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 74
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_tripod_super_night_stable"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "ai_raw_lite"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite_switch"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
