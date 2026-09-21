.class public final Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASUNC_HANDLER_THREAD:Landroid/os/HandlerThread;

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

.field private static reverseEditor:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ve-async-utils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->ASUNC_HANDLER_THREAD:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$optimizeImage(Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;)V
    .registers 7

    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeImage(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$optimizeVideo(Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V
    .registers 10

    .line 20
    invoke-direct/range {p0 .. p9}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeVideo(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V

    return-void
.end method

.method private final optimizeImage(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;)V
    .registers 17

    if-nez p5, :cond_5

    move-object/from16 v2, p6

    goto :goto_18

    .line 294
    :cond_5
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Lcom/ss/android/vesdk/VEEditor;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 293
    invoke-interface {p5, v0}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onStart(Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V

    :goto_18
    if-nez p5, :cond_1b

    goto :goto_30

    .line 303
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object p0

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextInt(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-interface {p5, p0}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onProgress(F)V

    .line 305
    :goto_30
    :try_start_30
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/ImageUtil;

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->fixImageRotationAndLimit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object p0

    if-nez p5, :cond_3d

    goto :goto_6e

    .line 309
    :cond_3d
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_5b

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-gtz p0, :cond_56

    goto :goto_5b

    :cond_56
    move-object p0, v2

    goto :goto_5c

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_60

    :cond_5b
    :goto_5b
    move-object p0, p2

    .line 306
    :goto_5c
    invoke-interface {p5, p2, p0}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_58

    return-void

    :goto_60
    if-nez p5, :cond_63

    goto :goto_6e

    .line 312
    :cond_63
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p2, v2, p0}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method private final optimizeVideo(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V
    .registers 28

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    move-object/from16 v1, p9

    .line 144
    new-instance v3, Lcom/ss/android/vesdk/VEUserConfig;

    invoke-direct {v3}, Lcom/ss/android/vesdk/VEUserConfig;-><init>()V

    .line 145
    new-instance v4, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v5, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseRefaCanvasWrap:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v7}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 147
    new-instance v7, Lcom/ss/android/vesdk/VEEditor;

    move-object/from16 v4, p7

    invoke-direct {v7, v4, v3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Lcom/ss/android/vesdk/VEUserConfig;)V

    .line 148
    sget-object v3, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {v3, v0, v2}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_39

    .line 152
    invoke-virtual {v4}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v5

    .line 153
    invoke-virtual {v4}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v4

    :goto_36
    move/from16 v8, p3

    goto :goto_42

    .line 155
    :cond_39
    invoke-virtual {v4}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v5

    .line 156
    invoke-virtual {v4}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v4

    goto :goto_36

    :goto_42
    int-to-float v8, v8

    int-to-float v5, v5

    div-float/2addr v8, v5

    move/from16 v9, p4

    int-to-float v9, v9

    int-to-float v4, v4

    div-float/2addr v9, v4

    cmpl-float v10, v8, v9

    if-lez v10, :cond_4f

    move v8, v9

    :cond_4f
    mul-float/2addr v5, v8

    float-to-int v5, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 164
    invoke-virtual {v7, v1}, Lcom/ss/android/vesdk/VEEditor;->initAuthInternal([B)I

    .line 166
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    .line 167
    filled-new-array {v8}, [I

    move-result-object v10

    const/4 v11, -0x1

    .line 168
    filled-new-array {v11}, [I

    move-result-object v11

    const/4 v15, 0x0

    .line 173
    sget-object v16, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    .line 165
    invoke-virtual/range {v8 .. v16}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[ILcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v9

    if-eqz v9, :cond_8c

    .line 176
    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    if-nez v6, :cond_7c

    goto/16 :goto_188

    .line 177
    :cond_7c
    const-string v0, ""

    const-string v1, "init ve fail code is "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v2, v0, v1}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_8c
    invoke-virtual {v8, v1}, Lcom/ss/android/vesdk/VEEditor;->initAuthInternal([B)I

    .line 181
    new-instance v1, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

    const/16 v9, 0x40

    const/4 v10, 0x0

    move v11, v7

    move-object v7, v8

    const/4 v8, 0x0

    move v12, v5

    move v5, v4

    move v4, v12

    move v12, v11

    move-object v11, v3

    move-object/from16 v3, p6

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Lcom/ss/android/vesdk/VEEditor;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v6, :cond_a4

    goto :goto_a7

    .line 189
    :cond_a4
    invoke-interface {v6, v1}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onStart(Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V

    .line 198
    :goto_a7
    sget-object v8, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;

    invoke-virtual {v8}, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->getConfig()Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    move-result-object v9

    .line 199
    invoke-virtual {v11, v0, v2}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getBitrate()I

    move-result v0

    const/4 v10, 0x1

    if-nez p8, :cond_cb

    .line 201
    invoke-virtual {v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getBpsGenerator()Lkotlin/jvm/functions/Function1;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_cf

    :cond_cb
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_cf
    if-le v0, v11, :cond_d2

    goto :goto_d3

    :cond_d2
    move v0, v11

    .line 209
    :goto_d3
    invoke-virtual {v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getHardware()Z

    move-result v11

    const/4 v13, 0x2

    if-eqz v11, :cond_10c

    .line 211
    new-instance v11, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v11, v13}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 212
    invoke-virtual {v11, v10}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v10

    .line 213
    invoke-virtual {v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getFps()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v10

    .line 214
    invoke-virtual {v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getGopSize()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v9

    .line 215
    invoke-virtual {v9, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v8}, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->getEncodeProfile()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    const-string v8, "Builder(VEVideoEncodeSet\u2026elper.getEncodeProfile())"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_143

    if-eqz v5, :cond_143

    .line 218
    invoke-virtual {v0, v4, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    goto :goto_143

    .line 222
    :cond_10c
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v0, v13}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 223
    invoke-virtual {v0, v12}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getFps()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getGopSize()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    const/16 v9, 0xf

    .line 226
    invoke-virtual {v0, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v12}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v8}, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->getEncodeProfile()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    const-string v8, "Builder(VEVideoEncodeSet\u2026elper.getEncodeProfile())"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_143

    if-eqz v5, :cond_143

    .line 230
    invoke-virtual {v0, v4, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    .line 234
    :cond_143
    :goto_143
    sget-object v4, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->ASUNC_HANDLER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    .line 237
    monitor-enter v7

    .line 238
    :try_start_14e
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel()Z

    move-result v4

    if-nez v4, :cond_18e

    .line 239
    const-string v4, ".tmp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v9

    .line 244
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;
    :try_end_160
    .catchall {:try_start_14e .. :try_end_160} :catchall_189

    move-object v5, v6

    move-object v6, v1

    move-object v1, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v7

    :try_start_168
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;-><init>(Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor;Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_18b

    move-object v6, v1

    move-object v7, v5

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    .line 240
    :try_start_171
    invoke-virtual {v7, v0, v8, v9, v1}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z

    move-result v0

    .line 276
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_189

    .line 237
    monitor-exit v7

    if-nez v0, :cond_188

    if-nez v6, :cond_17d

    goto :goto_182

    .line 279
    :cond_17d
    const-string v0, "-1"

    invoke-interface {v6, v2, v3, v0}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_182
    invoke-virtual {v7, v8, v8}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    .line 281
    invoke-virtual {v7}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    :cond_188
    :goto_188
    return-void

    :catchall_189
    move-exception v0

    goto :goto_193

    :catchall_18b
    move-exception v0

    move-object v7, v5

    goto :goto_193

    .line 273
    :cond_18e
    :try_start_18e
    invoke-virtual {v7}, Lcom/ss/android/vesdk/VEEditor;->destroy()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_189

    .line 274
    monitor-exit v7

    return-void

    .line 237
    :goto_193
    monitor-exit v7

    throw v0
.end method

.method static synthetic optimizeVideo$default(Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[BILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    move-object v9, v0

    :goto_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    goto :goto_19

    :cond_16
    move-object/from16 v9, p8

    goto :goto_8

    .line 131
    :goto_19
    invoke-direct/range {v1 .. v10}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeVideo(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V

    return-void
.end method


# virtual methods
.method public final cancelReverse()V
    .registers 1

    .line 95
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->reverseEditor:Lcom/ss/android/vesdk/VEEditor;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    return-void
.end method

.method public final getReverseVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;[B)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "[B)V"
        }
    .end annotation

    move-object/from16 p0, p3

    move-object/from16 v0, p6

    move-object/from16 v4, p8

    const/4 v1, -0x1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 0
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reversePath"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "workSpacePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onProgress"

    move-object/from16 v5, p7

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onResult"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "licenseBuffer"

    move-object/from16 v7, p9

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v1, p1, p0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 41
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 44
    :cond_40
    const-string v2, "/audio/"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    .line 45
    invoke-virtual {v1, v2, v8}, Lcom/bytedance/ies/cutsame/util/FileUtils;->mkdirs(Ljava/lang/String;Z)Z

    .line 46
    const-string v1, "audio"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VEUtils;->getFileBestStreamAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {v2, p1, p0}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/cutsame/prepare/PrepareExtensionsKt;->ignoreAngle(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p1

    .line 48
    new-instance v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-direct {v2, v0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p1

    invoke-virtual {v0, v9, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    const/16 v0, 0x1e

    .line 51
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 52
    sget-object v8, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {p1, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 53
    sget-object v8, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {p1, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(ZZ)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v10

    .line 58
    new-instance v9, Lcom/ss/android/vesdk/VETimelineParams;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v9, p0}, Lcom/ss/android/vesdk/VETimelineParams;-><init>([Ljava/lang/String;)V

    .line 62
    new-instance v13, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;-><init>(Ljava/lang/String;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move/from16 v11, p4

    move/from16 v12, p5

    move-object v8, v2

    .line 56
    invoke-static/range {v7 .. v13}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideo2([BLcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;Lcom/ss/android/vesdk/VEVideoEncodeSettings;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->reverseEditor:Lcom/ss/android/vesdk/VEEditor;

    if-nez p0, :cond_c2

    .line 90
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c2
    return-void
.end method

.method public final optimizeMediaSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;[BLcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;)V
    .registers 22

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputPath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outputPath"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "workSpacePath"

    move-object/from16 v7, p6

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "licenseBuffer"

    move-object/from16 v9, p8

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v8, p7

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeMediaSize$1;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[BLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v1, 0x0

    move/from16 p5, p1

    move-object/from16 p6, p2

    move-object/from16 p4, v0

    move-object p3, v1

    move-object p2, v11

    move-object p1, p0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
