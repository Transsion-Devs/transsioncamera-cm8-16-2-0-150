.class public Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INIT_THRESHOLD:J = 0xa00000L

.field private static final INVALID_VERSION:Ljava/lang/String; = "invalid_fingerprint"

.field private static final KEY_FINGERPRINT:Ljava/lang/String; = "key_fingerprint"

.field private static final MAX_RETRY_TIME:I = 0x3

.field private static final RESOURCE_THRESHOLD:J = 0x6400000L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VLOG_FINGERPRINT:Ljava/lang/String; = "vlog_fingerprint"

.field private static final sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sCutSameIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sResourceCoping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sRetryTime:I


# direct methods
.method public static synthetic $r8$lambda$QyTRUu7CwJI6qbBZDNCTEcUqb_0(Landroid/content/Context;)V
    .registers 9

    .line 173
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplateRootPath()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->getSavedFingerPrint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareResource START, savedFingerPrint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentFingerPrint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    .line 179
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->checkResource(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 180
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceCoping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    const-string p0, "prepareResource, resource exists"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_46
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    sput v3, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sRetryTime:I

    .line 188
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->getAvailableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x6400000

    cmp-long v1, v4, v6

    if-gez v1, :cond_77

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareResource, can not copy resource because availableSpace: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", is not enough"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceCoping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 196
    :cond_77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->copyAssetsToLocalPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    const-string p0, "prepareResource END"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iUTNk7BovpnoJVXBP5HxcQccsjI(ILjava/lang/String;)V
    .registers 6

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCutSame fail, errorCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$tpVR_71bNaAodghQXlsoRr41rQU(Landroid/app/Application;)V
    .registers 14

    .line 79
    const-string v0, "http://common.voleai.com"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->getAvailableSpace()J

    move-result-wide v2

    .line 80
    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initCutSame, availableSpace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/32 v5, 0xa00000

    cmp-long v5, v2, v5

    if-gez v5, :cond_4c

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initCutSame, can not init because availableSpace: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", is not available"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_48
    move-exception v0

    move-object p0, v0

    goto/16 :goto_15e

    .line 90
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVlogSupportHardwareDecode()Z

    move-result v2

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_enable_hardware_decode:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initCutSame START, enableHwDecoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", debugSupportHwDecoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    sget-object v4, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->INFO:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isDebugLogEnable()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 98
    sget-object v4, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->DEBUG:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    .line 100
    :cond_80
    new-instance v5, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    invoke-direct {v5}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;-><init>()V

    .line 101
    invoke-virtual {v5, v4}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->logcatLevel(Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v4}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localLevel(Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->toLocal(Z)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 104
    invoke-virtual {v4, v5}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->toLogcat(Z)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    move-result-object v4

    .line 105
    invoke-virtual {v4, v5}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->showThreadInfo(Z)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    move-result-object v4

    .line 106
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalVlogResRootPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localPath(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->build()Lcom/ss/android/ugc/cut_log/LogConfig;

    move-result-object v4

    .line 109
    new-instance v6, Lcom/ss/android/ugc/cut_log/LogWrapper;

    invoke-direct {v6}, Lcom/ss/android/ugc/cut_log/LogWrapper;-><init>()V

    .line 110
    invoke-virtual {v6, v4}, Lcom/ss/android/ugc/cut_log/LogWrapper;->init(Lcom/ss/android/ugc/cut_log/LogConfig;)V

    .line 111
    sget-object v7, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v7, v6}, Lcom/cutsame/solution/init/CutSameSolution;->setLogIf(Lcom/ss/android/ugc/cut_log/LogIF;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getAssetTokenPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/transsion/camera/utils/FileUtil;->getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v6, Lcom/cutsame/solution/config/AuthorityConfig$Builder;

    invoke-direct {v6}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chuanyin_20231027_20331127_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_4.0.4.0_216_cutsame.licbag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLicensePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->licensePath(Ljava/lang/String;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;

    move-result-object v6

    const-string v8, "UdDmvunlue"

    .line 117
    invoke-virtual {v6, v8}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->audioAppKey(Ljava/lang/String;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v4}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->audioToken(Ljava/lang/String;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;

    move-result-object v4

    new-instance v6, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$$ExternalSyntheticLambda2;-><init>()V

    .line 119
    invoke-virtual {v4, v6}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->authorityListener(Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;)Lcom/cutsame/solution/config/AuthorityConfig$Builder;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/cutsame/solution/config/AuthorityConfig$Builder;->build()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v9

    .line 125
    new-instance v4, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;

    invoke-direct {v4}, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->host(Ljava/lang/String;)Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->build()Lcom/cutsame/solution/config/TemplateFetcherConfig;

    move-result-object v10

    .line 128
    new-instance v4, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;

    invoke-direct {v4}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;-><init>()V

    .line 129
    invoke-virtual {v4, v0}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->host(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;

    move-result-object v0

    const-string v4, "/api/modellistinfo"

    .line 130
    invoke-virtual {v0, v4}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->modelPath(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalModelPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->localModelPath(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;

    move-result-object v0

    const-string v4, "/api/effectlist"

    .line 132
    invoke-virtual {v0, v4}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->effectLitPath(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$1;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$1;-><init>()V

    .line 133
    invoke-virtual {v0, v4}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->effectLitExtraMap(Ljava/util/Map;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->build()Lcom/cutsame/solution/config/EffectFetcherConfig;

    move-result-object v11

    if-eqz v3, :cond_13b

    if-eqz v2, :cond_13b

    move v12, v5

    :goto_139
    move-object v8, p0

    goto :goto_13d

    :cond_13b
    move v12, v1

    goto :goto_139

    .line 141
    :goto_13d
    invoke-virtual/range {v7 .. v12}, Lcom/cutsame/solution/init/CutSameSolution;->init(Landroid/app/Application;Lcom/cutsame/solution/config/AuthorityConfig;Lcom/cutsame/solution/config/TemplateFetcherConfig;Lcom/cutsame/solution/config/EffectFetcherConfig;Z)V

    .line 144
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string/jumbo v0, "ve_enable_render_encode_resolution_align4"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->updateValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter;->syncConfigToNative()I

    .line 147
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15d} :catch_48
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_15d} :catch_48

    goto :goto_172

    .line 150
    :goto_15e
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "CutSameSolution init failed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    :goto_172
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initCutSame END"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Initiator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceCoping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkResource(Landroid/content/Context;)Z
    .registers 8

    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "template"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 253
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_79

    aget-object v3, p0, v2

    .line 255
    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_72

    .line 259
    :cond_1a
    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkResource, assetFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    const-string v5, ".mp4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 264
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_57

    .line 267
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "template.zip"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    :goto_57
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkResource, exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_75

    if-nez v3, :cond_72

    return v1

    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_75
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_79
    const/4 p0, 0x1

    return p0
.end method

.method private static copyAssetsToLocalPath(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    .line 204
    const-string v0, "template.zip"

    const-string v1, "template"

    const/4 v2, 0x1

    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->clearDir(Ljava/io/File;)Z

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f9

    .line 207
    array-length v4, v3

    if-gtz v4, :cond_1c

    goto/16 :goto_f9

    .line 211
    :cond_1c
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1f
    if-ge v6, v4, :cond_bd

    aget-object v7, v3, v6

    .line 213
    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    goto/16 :goto_b9

    .line 217
    :cond_2d
    sget-object v8, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyAssetsToLocalPath, assetFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    const-string v9, ".mp4"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_96

    :catch_64
    move-exception v0

    goto :goto_d8

    .line 227
    :cond_66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalTemplatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    :goto_96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyAssetsToLocalPath, src: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", dst: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-static {v8, v9, v7}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->copyAssetFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1f

    .line 236
    :cond_bd
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "resource/transitions_bundle"

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalVlogResRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->updateFingerPrint(Landroid/content/Context;)V

    .line 238
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceCoping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d7} :catch_64

    return-void

    .line 241
    :goto_d8
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyAssetsToLocalPath exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    sget v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sRetryTime:I

    add-int/2addr v0, v2

    sput v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sRetryTime:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_f9

    .line 244
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->copyAssetsToLocalPath(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method private static getSavedFingerPrint(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 289
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->getVlogFingerPrintData()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "key_fingerprint"

    const-string v1, "invalid_fingerprint"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVlogFingerPrintData()Lcom/tencent/mmkv/MMKV;
    .registers 1

    .line 311
    const-string/jumbo v0, "vlog_fingerprint"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private static initCutSame(Landroid/app/Application;)V
    .registers 3

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 66
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initCutSame, init is on going"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_10
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 71
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initCutSame, sdk has been initialized"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_24
    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .registers 1

    .line 60
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->initCutSame(Landroid/app/Application;)V

    .line 61
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->prepareResource(Landroid/content/Context;)V

    return-void
.end method

.method public static isReady()Z
    .registers 1

    .line 293
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private static prepareResource(Landroid/content/Context;)V
    .registers 3

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceCoping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 162
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepareResource, resource is coping"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 166
    :cond_10
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 167
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepareResource, resource is ready"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unInit()V
    .registers 4

    .line 297
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit START"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sCutSameInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 300
    sget-object v2, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v2}, Lcom/cutsame/solution/init/CutSameSolution;->releaseLogIf()V

    .line 301
    invoke-virtual {v2}, Lcom/cutsame/solution/init/CutSameSolution;->release()V

    .line 302
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    :cond_1c
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->sResourceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    const-string/jumbo v1, "unInit END"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static updateFingerPrint(Landroid/content/Context;)V
    .registers 3

    .line 285
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->getVlogFingerPrintData()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "key_fingerprint"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
