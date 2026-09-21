.class public Lcom/ss/android/vesdk/VEBingoInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/internal/IVEBingo;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VEEditor_VEBingoInvoker"


# instance fields
.field private frameCountCur:I

.field private genFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

.field private final mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field private final mVEEditor:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 53
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 54
    new-instance v0, Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;-><init>(Lcom/ss/android/ttve/nativePort/TEInterface;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEBingoInvoker;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEBingoInvoker;)Lcom/ss/android/vesdk/jni/TEBingoInterface;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VEBingoInvoker;Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IIJ[I)V
    .registers 7

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/vesdk/VEBingoInvoker;->progressBack(Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IIJ[I)V

    return-void
.end method

.method private beginGenFrameHW(Ljava/lang/String;Ljava/util/List;IIIIII[IJLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIIIII[IJ",
            "Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;",
            ")V"
        }
    .end annotation

    .line 565
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    const/4 v0, 0x0

    .line 566
    :goto_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    move-object/from16 v1, p2

    .line 567
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 569
    :cond_1e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ss/android/vesdk/VEBingoInvoker$2;

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v14, p9

    move-wide/from16 v12, p10

    move-object/from16 v10, p12

    invoke-direct/range {v1 .. v14}, Lcom/ss/android/vesdk/VEBingoInvoker$2;-><init>(Lcom/ss/android/vesdk/VEBingoInvoker;Ljava/lang/String;[IIIIIILcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IJ[I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private progressBack(Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IIJ[I)V
    .registers 15

    .line 527
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 528
    :try_start_3
    iget v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v3, p2

    div-float/2addr v1, v3

    .line 529
    const-string v4, "VEEditor_VEBingoInvoker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HwFrameExtractor_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " steps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_90

    .line 530
    iget-object v5, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 531
    const-string v5, "VEEditor_VEBingoInvoker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HwFrameExtractor_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " progressBack < 1 count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " steps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " progress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget v5, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 534
    invoke-interface {p1, v5}, Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;->onProgress(F)V

    goto :goto_90

    :catchall_8d
    move-exception p0

    goto/16 :goto_11a

    :cond_90
    :goto_90
    cmpl-float p1, v1, v4

    if-nez p1, :cond_118

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p4

    .line 540
    const-string p1, "VEEditor_VEBingoInvoker"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bingo extractFrame "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " progressBack == 1, count:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " steps:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " progress:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, ", cost:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    .line 542
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_e4
    .catchall {:try_start_3 .. :try_end_e4} :catchall_8d

    .line 546
    :try_start_e4
    const-string p3, "src_width"

    aget p4, p6, p1

    invoke-virtual {p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    const-string p3, "src_height"

    aget p4, p6, v2

    invoke-virtual {p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 548
    const-string p3, "src_duration"

    const/4 p4, 0x3

    aget p4, p6, p4

    invoke-virtual {p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    const-string p3, "all_frame_count"

    invoke-virtual {p0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    const-string p2, "all_cost_ms"

    invoke-virtual {p0, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 551
    const-string p2, "mean_cost_ms"

    long-to-float p3, v4

    div-float/2addr p3, v3

    float-to-double p3, p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 552
    const-string p2, "vesdk_event_editor_extract_frame_time"

    const-string p3, "performance"

    invoke-static {p2, p0, p3, p1, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_113} :catch_114
    .catchall {:try_start_e4 .. :try_end_113} :catchall_8d

    goto :goto_118

    :catch_114
    move-exception p0

    .line 554
    :try_start_115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 557
    :cond_118
    :goto_118
    monitor-exit v0

    return-void

    :goto_11a
    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_8d

    throw p0
.end method


# virtual methods
.method public addVideoClipWithAlgorithm([Ljava/lang/String;)I
    .registers 8

    .line 106
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 107
    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_c

    const/16 p0, -0x64

    .line 108
    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    goto :goto_61

    :cond_c
    const/4 v1, 0x0

    move v2, v1

    .line 110
    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_34

    .line 111
    const-string v3, "VEEditor_VEBingoInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVidoeClipWithAlgorithm...  i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 113
    :cond_34
    iget-object v2, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 114
    iget-object v2, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v2, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->addVidoeClipWithAlgorithm([Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_59

    .line 116
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVidoeClipWithAlgorithm failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    monitor-exit v0

    return p1

    .line 119
    :cond_59
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 120
    monitor-exit v0

    return p0

    .line 121
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_a

    throw p0
.end method

.method public beginGenVideoFrames(IIZLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I
    .registers 28

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v1, p2

    move/from16 v13, p3

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginGenVideoFrames...:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", second:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hasHWDecode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "VEEditor_VEBingoInvoker"

    invoke-static {v14, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-boolean v2, Lcom/ss/android/vesdk/VERuntimeConfig;->sBingoRefactor:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    const/4 v4, 0x4

    if-eqz v13, :cond_38

    move v5, v3

    goto :goto_39

    :cond_38
    move v5, v4

    .line 367
    :goto_39
    iget-object v0, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    const v2, 0xf4240

    mul-int/2addr v2, v1

    const/4 v3, 0x2

    move-object/from16 v6, p4

    move v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->extractVideoFrames(IIIIILcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I

    move-result v0

    return v0

    .line 372
    :cond_48
    iget-object v2, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v2, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v2, v7}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->getClipPath(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClipPath wrong index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    return v0

    :cond_78
    const/16 v2, 0xa

    .line 382
    new-array v9, v2, [I

    .line 383
    invoke-static {v4, v9}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    const/4 v15, 0x0

    .line 385
    aget v2, v9, v15

    if-lez v2, :cond_88

    aget v5, v9, v3

    if-gtz v5, :cond_8b

    :cond_88
    move-object v8, v14

    goto/16 :goto_29e

    :cond_8b
    const/16 v6, 0x8

    const/16 v8, 0x140

    if-le v2, v5, :cond_a4

    int-to-double v10, v2

    move v12, v3

    move-object/from16 v16, v4

    int-to-double v3, v8

    div-double/2addr v10, v3

    int-to-double v2, v5

    div-double/2addr v2, v10

    double-to-int v2, v2

    .line 398
    rem-int/lit8 v3, v2, 0x10

    if-lt v3, v6, :cond_a0

    add-int/lit8 v2, v2, 0x10

    :cond_a0
    sub-int/2addr v2, v3

    move v4, v2

    move v3, v8

    goto :goto_b6

    :cond_a4
    move v12, v3

    move-object/from16 v16, v4

    int-to-double v3, v5

    int-to-double v10, v8

    div-double/2addr v3, v10

    int-to-double v10, v2

    div-double/2addr v10, v3

    double-to-int v2, v10

    .line 404
    rem-int/lit8 v3, v2, 0x10

    if-lt v3, v6, :cond_b3

    add-int/lit8 v2, v2, 0x10

    :cond_b3
    sub-int/2addr v2, v3

    move v3, v2

    move v4, v8

    :goto_b6
    const/4 v2, 0x3

    .line 410
    aget v5, v9, v2

    mul-int/lit16 v6, v1, 0x3e8

    div-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    if-eqz v13, :cond_c3

    .line 417
    div-int/lit8 v5, v6, 0x3

    goto :goto_c5

    :cond_c3
    move v2, v6

    move v5, v2

    .line 419
    :goto_c5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HwFrameExtractor_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " second:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasHWDecode:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " beginGenVideoFrames HWSteps:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v8, v15

    :goto_fb
    if-ge v8, v6, :cond_108

    mul-int/lit16 v11, v8, 0x3e8

    .line 426
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v2

    goto :goto_fb

    .line 429
    :cond_108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v8, 0x3e8

    if-le v2, v8, :cond_13d

    .line 430
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v2, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_13d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    move v8, v15

    .line 434
    :goto_144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_176

    .line 435
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v2, v8

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " softList value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x1

    goto :goto_144

    .line 439
    :cond_176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v8, 0x1

    new-array v8, v8, [J

    aput-wide v11, v8, v15

    .line 442
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/ss/android/vesdk/VEBingoInvoker$1;

    move-object v13, v1

    move v12, v4

    move-object/from16 v20, v10

    move/from16 v19, v15

    move-object/from16 v4, v16

    move-object/from16 v1, p0

    move-object v10, v2

    move v15, v5

    move-object v2, v8

    move-object/from16 v16, v14

    move-object/from16 v5, p4

    move-object v14, v11

    move v11, v3

    move v3, v7

    move-wide/from16 v7, v17

    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEBingoInvoker$1;-><init>(Lcom/ss/android/vesdk/VEBingoInvoker;[JILjava/lang/String;Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IJ[I[III)V

    move-wide/from16 v21, v7

    move v7, v3

    move v3, v11

    move-wide/from16 v10, v21

    move-object v1, v4

    move v4, v12

    invoke-direct {v14, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 470
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    if-eqz p3, :cond_29d

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move/from16 v5, v19

    :goto_1bd
    if-ge v5, v15, :cond_208

    mul-int/lit16 v8, v5, 0x3e8

    .line 478
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d4

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 v8, v16

    move-object/from16 v1, v20

    goto :goto_1fd

    .line 481
    :cond_1d4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v1

    move-object/from16 v1, v20

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 p3, v2

    const-string v2, " hwListOne value:"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, v16

    invoke-static {v8, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1fd
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p3

    move-object/from16 v20, v1

    move-object/from16 v16, v8

    move-object/from16 v1, p2

    goto :goto_1bd

    :cond_208
    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 v8, v16

    move-object/from16 v1, v20

    move v5, v15

    :goto_211
    mul-int/lit8 v2, v15, 0x2

    if-ge v5, v2, :cond_24c

    mul-int/lit16 v2, v5, 0x3e8

    .line 485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_224

    move/from16 v16, v3

    goto :goto_247

    .line 488
    :cond_224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v16, v3

    const-string v3, " hwListTwo value:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_247
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    goto :goto_211

    :cond_24c
    move/from16 v16, v3

    :goto_24e
    if-ge v2, v6, :cond_281

    mul-int/lit16 v3, v2, 0x3e8

    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25d

    goto :goto_27e

    .line 495
    :cond_25d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " hwListThree value:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27e
    add-int/lit8 v2, v2, 0x1

    goto :goto_24e

    :cond_281
    const/4 v5, 0x2

    const/4 v8, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object v13, v0

    move/from16 v3, v16

    move-object/from16 v0, p0

    .line 499
    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEBingoInvoker;->beginGenFrameHW(Ljava/lang/String;Ljava/util/List;IIIIII[IJLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V

    const/4 v8, 0x2

    move/from16 v7, p1

    move-object v2, v14

    .line 500
    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEBingoInvoker;->beginGenFrameHW(Ljava/lang/String;Ljava/util/List;IIIIII[IJLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V

    const/4 v8, 0x3

    move-object v2, v13

    .line 501
    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEBingoInvoker;->beginGenFrameHW(Ljava/lang/String;Ljava/util/List;IIIIII[IJLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V

    :cond_29d
    return v19

    .line 386
    :goto_29e
    const-string v0, "beginGenVideoFrames error for invalid video size"

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public cancelGenVideoFrame(I)I
    .registers 4

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelGenVideoFrame... index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-boolean v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sBingoRefactor:Z

    if-eqz v0, :cond_21

    .line 510
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->cancelExtractVideoFrames(I)I

    move-result p0

    return p0

    .line 513
    :cond_21
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 514
    iput p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->frameCountCur:I

    return p1
.end method

.method public checkScoresFile(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_3c

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 343
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkScoresFile filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->checkScoresFile(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3b

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkScoresFile failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return p0

    :cond_3c
    :goto_3c
    const/16 p0, -0x64

    return p0
.end method

.method public clearNativeFromBingo()V
    .registers 1

    .line 520
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->clearNative()V

    return-void
.end method

.method public deleteVideoClipWithAlgorithm(I)I
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 127
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteVideoClipWithAlgorithm... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 130
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_4f

    .line 132
    :cond_21
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 133
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->deleteVideoClipWithAlgorithm(I)I

    move-result p1

    if-eqz p1, :cond_46

    .line 135
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVideoClipWithAlgorithm failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit v0

    return p1

    .line 138
    :cond_46
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 139
    monitor-exit v0

    return p0

    .line 140
    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_1f

    throw p0
.end method

.method public genRandomSolve()I
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 237
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    const-string v2, "genRandomSolve"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 239
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->getRandomSolve()I

    move-result v1

    if-eqz v1, :cond_31

    .line 241
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRandomSolve failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    monitor-exit v0

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_3a

    .line 244
    :cond_31
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 245
    monitor-exit v0

    return p0

    .line 246
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_2f

    throw p0
.end method

.method public genSmartCutting()I
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 252
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    const-string v2, "genSmartCutting"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 255
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->genAISolve()I

    move-result v1

    if-eqz v1, :cond_31

    .line 257
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genSmartCutting failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    monitor-exit v0

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_3a

    .line 260
    :cond_31
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 261
    monitor-exit v0

    return p0

    .line 262
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_2f

    throw p0
.end method

.method public getAllVideoRangeData()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;",
            ">;"
        }
    .end annotation

    .line 267
    const-string v0, "getAllVideoRangeData"

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->getAllVideoRangeData()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 269
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rangData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_35
    return-object p0
.end method

.method public initBingoAlgorithm()I
    .registers 4

    .line 96
    const-string v0, "initBingoAlgorithm"

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->initBingoAlgorithm()I

    move-result p0

    if-eqz p0, :cond_23

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBingoAlgorithm failed, ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public initWithAlgorithm([Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 10

    .line 59
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    const/4 v1, 0x1

    .line 61
    :try_start_4
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 63
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 65
    array-length v2, p1

    if-nez v2, :cond_14

    const/16 p0, -0x64

    .line 66
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    goto/16 :goto_b6

    .line 68
    :cond_14
    const-string v2, "VEEditor_VEBingoInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWithAlgorithm... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 69
    :goto_2c
    array-length v4, p1

    if-ge v3, v4, :cond_52

    .line 70
    const-string v4, "VEEditor_VEBingoInvoker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initWithAlgorithm...  i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 73
    :cond_52
    iget-object v3, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/vesdk/VEEditor;->setLastTimeMS(J)V

    .line 74
    iget-object v3, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/vesdk/VEEditor;->setInitTimeMS(J)V

    .line 75
    iget-object v3, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->initVideoEditorWithAlgorithm([Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8d

    .line 77
    const-string p2, "VEEditor_VEBingoInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVideoEditorWithAlgorithm failed, ret = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->setInitSuccess(Z)V

    .line 79
    monitor-exit v0

    return p1

    .line 81
    :cond_8d
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEEditor;->setInitSuccess(Z)V

    .line 82
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object p1

    .line 83
    iput-boolean v2, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 84
    iput v2, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 85
    iput v2, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 86
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setVideoOutRes(Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)V

    .line 87
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMusicSRTEffectFilterIndex(I)V

    .line 88
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 90
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->initFilters()I

    move-result p0

    monitor-exit v0

    return p0

    .line 91
    :goto_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_4 .. :try_end_b7} :catchall_11

    throw p0
.end method

.method public moveVideoClipWithAlgorithm(II)I
    .registers 7

    .line 145
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 146
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveVideoClipWithAlgorithm... from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, p2, :cond_58

    if-ltz p1, :cond_58

    if-gez p2, :cond_28

    goto :goto_58

    .line 151
    :cond_28
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 152
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->moveVideoClipWithAlgorithm(II)I

    move-result p1

    if-eqz p1, :cond_4f

    .line 154
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveVideoClipWithAlgorithm failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    monitor-exit v0

    return p1

    :catchall_4d
    move-exception p0

    goto :goto_5c

    .line 157
    :cond_4f
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 158
    monitor-exit v0

    return p0

    :cond_58
    :goto_58
    const/16 p0, -0x64

    .line 149
    monitor-exit v0

    return p0

    .line 159
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_4d

    throw p0
.end method

.method public removeAllVideoSound()I
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 205
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    const-string v2, "removeAllVideoSound"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 208
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->removeAllVideoSound()I

    move-result v1

    if-eqz v1, :cond_31

    .line 210
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllVideoSound failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    monitor-exit v0

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_3a

    .line 213
    :cond_31
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 214
    monitor-exit v0

    return p0

    .line 215
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_2f

    throw p0
.end method

.method public removeMusic(I)I
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 191
    const-string v1, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMusic index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->removeMusic(I)I

    move-result p1

    if-eqz p1, :cond_40

    .line 194
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMusic failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    monitor-exit v0

    return p1

    :catchall_3e
    move-exception p0

    goto :goto_48

    .line 197
    :cond_40
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 198
    monitor-exit v0

    return p1

    .line 199
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_3e

    throw p0
.end method

.method public restoreAllVideoSound()I
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 221
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    const-string v2, "restoreAllVideoSound"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 224
    iget-object v1, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->restoreAllVideoSound()I

    move-result v1

    if-eqz v1, :cond_31

    .line 226
    const-string p0, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllVideoSound failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    monitor-exit v0

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_3a

    .line 229
    :cond_31
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    .line 230
    monitor-exit v0

    return p0

    .line 231
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_2f

    throw p0
.end method

.method public setAIRotation(ILcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 6

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAIRotation index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/ss/android/vesdk/VEBingoInvoker$3;->$SwitchMap$com$ss$android$vesdk$ROTATE_DEGREE:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_37

    const/4 v0, 0x4

    if-eq p2, v0, :cond_34

    goto :goto_3c

    :cond_34
    const/16 v2, 0x10e

    goto :goto_3c

    :cond_37
    const/16 v2, 0xb4

    goto :goto_3c

    :cond_3a
    const/16 v2, 0x5a

    .line 305
    :cond_3c
    :goto_3c
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->setAIRotation(II)I

    move-result p0

    if-eqz p0, :cond_58

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAIRotation failed, ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return p0
.end method

.method public setInterimScoresToFile(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_3c

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 329
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInterimScoresToFile filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->setInterimScoresToFile(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3b

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setInterimScoresToFile failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return p0

    :cond_3c
    :goto_3c
    const/16 p0, -0x64

    return p0
.end method

.method public setMusicAndResult(Ljava/lang/String;IILcom/ss/android/vesdk/clipparam/VEAlgorithmPath;)I
    .registers 21

    move-object/from16 v0, p0

    .line 164
    iget-object v1, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 165
    :try_start_5
    iget-object v2, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 166
    const-string v2, "VEEditor_VEBingoInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMusicAndResult... audioFilePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " trimIn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " trimOut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getVeBeatsPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getVeBeatsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    goto :goto_56

    :catchall_53
    move-exception v0

    goto/16 :goto_e6

    .line 169
    :cond_56
    :goto_56
    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getDownBeatsPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getDownBeatsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 170
    :cond_66
    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getNoStrengthBeatsPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_76

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getNoStrengthBeatsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 171
    :cond_76
    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getManMadePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getManMadePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 172
    :cond_86
    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getOnlineBeatsPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a1

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getOnlineBeatsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 173
    :cond_96
    const-string v0, "VEEditor_VEBingoInvoker"

    const-string v2, "file is not exist !"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    .line 174
    monitor-exit v1

    return v0

    .line 176
    :cond_a1
    iget-object v5, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getVeBeatsPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getDownBeatsPath()Ljava/lang/String;

    move-result-object v10

    .line 177
    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getNoStrengthBeatsPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getOnlineBeatsPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getManMadePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getType()I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->getMode()I

    move-result v15

    .line 176
    invoke-virtual/range {v5 .. v15}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->setMusicAndResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_dd

    .line 179
    const-string v0, "VEEditor_VEBingoInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMusicAndResult failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    monitor-exit v1

    return v2

    .line 182
    :cond_dd
    iget-object v0, v0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v0

    .line 183
    monitor-exit v1

    return v0

    .line 184
    :goto_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_5 .. :try_end_e7} :catchall_53

    throw v0
.end method

.method public setMusicCropRatio(I)I
    .registers 4

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicCropRatio crop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEBingoInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->setMusicCropRatio(I)I

    move-result p0

    if-eqz p0, :cond_32

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMusicCropRatio failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return p0
.end method

.method public updateAlgorithmFromNormal()I
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 278
    :try_start_3
    const-string v1, "VEEditor_VEBingoInvoker"

    const-string v2, "updateAlgorithmFromNormal"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->updateAlgorithmFromNormal()I

    move-result p0

    if-eqz p0, :cond_2b

    .line 281
    const-string v1, "VEEditor_VEBingoInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlgorithmFromNormal failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 283
    :cond_2b
    :goto_2b
    monitor-exit v0

    return p0

    .line 284
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_29

    throw p0
.end method
