.class public Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/style/IStyleProxyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/RecordInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleProxyImpl"
.end annotation


# instance fields
.field private mHandler:J

.field private mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/medialib/RecordInvoker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4352
    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    return-void
.end method


# virtual methods
.method public attachNativeLayer(Lcom/ss/android/medialib/RecordInvoker;)V
    .registers 4

    .line 4356
    invoke-virtual {p1}, Lcom/ss/android/medialib/RecordInvoker;->getHandler()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    .line 4357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    .line 4358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ae_style], attach native layer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", invoker: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordInvoker"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createEngine(IIILcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 15

    .line 4363
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, -0x1

    if-nez v0, :cond_25

    .line 4364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[ae_style], create engine failed, Native instance handle invalid. invoker: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordInvoker"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 4369
    :cond_25
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v3, :cond_3b

    .line 4371
    iget-wide v4, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeAllocateStyleEngine(JIIILcom/ss/android/medialib/style/StyleActionListener;)J
    invoke-static/range {v3 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->access$2100(Lcom/ss/android/medialib/RecordInvoker;JIIILcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0

    :cond_3b
    return-wide v1
.end method

.method public createManager(JLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 11

    .line 4388
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4391
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-object v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeAllocateStyleManager(JJLcom/ss/android/medialib/style/StyleActionListener;)J
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$2300(Lcom/ss/android/medialib/RecordInvoker;JJLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public drawToBitmap(JJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I
    .registers 17

    .line 4512
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 4513
    const-string p0, "RecordInvoker"

    const-string p1, "ae_engine, style draw failed!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4517
    :cond_11
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4521
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-nez v1, :cond_24

    const/4 p0, -0x2

    return p0

    .line 4526
    :cond_24
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    move-object/from16 v9, p6

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeDrawStyleToBitmap(JJJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I
    invoke-static/range {v1 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->access$3500(Lcom/ss/android/medialib/RecordInvoker;JJJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I

    move-result p0

    return p0

    .line 4518
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bitmap maybe recycled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flushData(J)J
    .registers 6

    .line 4458
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_11

    .line 4461
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->flushData(JJ)J
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$3000(Lcom/ss/android/medialib/RecordInvoker;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_11
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getEvents(J)Ljava/lang/String;
    .registers 6

    .line 4591
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_11

    .line 4594
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetEvents(JJ)Ljava/lang/String;
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$4200(Lcom/ss/android/medialib/RecordInvoker;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatureParam(JJIZ)Ljava/lang/String;
    .registers 17

    .line 4491
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    .line 4492
    const-string v0, ""

    if-nez v1, :cond_e

    return-object v0

    .line 4496
    :cond_e
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    move/from16 v9, p6

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetFeatureParam(JJJIZ)Ljava/lang/String;
    invoke-static/range {v1 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->access$3300(Lcom/ss/android/medialib/RecordInvoker;JJJIZ)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v0

    :cond_1c
    return-object p0
.end method

.method public getFeatureRotation(JJI)F
    .registers 15

    .line 4502
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-nez v1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 4507
    :cond_d
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetFeatureRotation(JJJI)F
    invoke-static/range {v1 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->access$3400(Lcom/ss/android/medialib/RecordInvoker;JJJI)F

    move-result p0

    return p0
.end method

.method public getFeatures(J)[J
    .registers 6

    .line 4438
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 4443
    :cond_c
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetFeatures(JJ)[J
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$2800(Lcom/ss/android/medialib/RecordInvoker;JJ)[J

    move-result-object p0

    return-object p0
.end method

.method public getRenderRect(J)Ljava/lang/String;
    .registers 7

    .line 4480
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    .line 4481
    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 4485
    :cond_d
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetStyleRenderRect(JJ)Ljava/lang/String;
    invoke-static {v0, v2, v3, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$3200(Lcom/ss/android/medialib/RecordInvoker;JJ)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v1

    :cond_16
    return-object p0
.end method

.method public getStickerVersion(J)Ljava/lang/String;
    .registers 6

    .line 4601
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_11

    .line 4604
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetStickerVersion(JJ)Ljava/lang/String;
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$4300(Lcom/ss/android/medialib/RecordInvoker;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public operateFeature(JJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 23

    .line 4408
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_1f

    .line 4411
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeOperateFeature(JJJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J
    invoke-static/range {v1 .. v12}, Lcom/ss/android/medialib/RecordInvoker;->access$2500(Lcom/ss/android/medialib/RecordInvoker;JJJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide v0

    return-wide v0

    :cond_1f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public operateFeatureGroup(J[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;
    .registers 19

    .line 4418
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-nez v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 4423
    :cond_d
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeOperateFeatureGroup(JJ[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;
    invoke-static/range {v1 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->access$2600(Lcom/ss/android/medialib/RecordInvoker;JJ[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public operateManager(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 25

    .line 4398
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_21

    .line 4401
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeOperateStyleManager(JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J
    invoke-static/range {v1 .. v13}, Lcom/ss/android/medialib/RecordInvoker;->access$2400(Lcom/ss/android/medialib/RecordInvoker;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide v0

    return-wide v0

    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public refreshEvent(J)I
    .registers 6

    .line 4561
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_11

    .line 4564
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeRefreshEvent(JJ)I
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$3900(Lcom/ss/android/medialib/RecordInvoker;JJ)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public registerPathsConverter(JLcom/ss/android/medialib/style/StylePathConvertCallback;)V
    .registers 11

    .line 4468
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4470
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-object v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->registerStylePathsConverter(JJLcom/ss/android/medialib/style/StylePathConvertCallback;)J
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$3100(Lcom/ss/android/medialib/RecordInvoker;JJLcom/ss/android/medialib/style/StylePathConvertCallback;)J

    return-void

    :cond_13
    move-object v6, p3

    if-eqz v6, :cond_1a

    const/4 p0, 0x0

    .line 4473
    invoke-interface {v6, p0}, Lcom/ss/android/medialib/style/StylePathConvertCallback;->convert([Ljava/lang/String;)[Ljava/lang/String;

    :cond_1a
    return-void
.end method

.method public releaseEngine(JZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 13

    .line 4378
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_15

    .line 4381
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseStyleEngine(JJZLcom/ss/android/medialib/style/StyleActionListener;)J
    invoke-static/range {v1 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->access$2200(Lcom/ss/android/medialib/RecordInvoker;JJZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0

    :cond_15
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public releaseManager(JZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 13

    .line 4428
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_15

    .line 4431
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseStyleManager(JJZLcom/ss/android/medialib/style/StyleActionListener;)J
    invoke-static/range {v1 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->access$2700(Lcom/ss/android/medialib/RecordInvoker;JJZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0

    :cond_15
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public renderEnable(JZ)J
    .registers 11

    .line 4448
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4451
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeStyleRenderEnable(JJZ)J
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$2900(Lcom/ss/android/medialib/RecordInvoker;JJZ)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public seek(JJ)J
    .registers 13

    .line 4541
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4544
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-wide v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeStyleMusicSeek(JJJ)J
    invoke-static/range {v1 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->access$3700(Lcom/ss/android/medialib/RecordInvoker;JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setEventEnable(JZ)I
    .registers 11

    .line 4551
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4554
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeSetEventEnable(JJZ)I
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$3800(Lcom/ss/android/medialib/RecordInvoker;JJZ)I

    move-result p0

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public setEvents(JLjava/lang/String;)J
    .registers 11

    .line 4571
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4574
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-object v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeSetEvents(JJLjava/lang/String;)J
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$4000(Lcom/ss/android/medialib/RecordInvoker;JJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setPictureOffset(JFFFF)I
    .registers 17

    .line 4531
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_18

    .line 4534
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeSetStylePictureOffset(JJFFFF)I
    invoke-static/range {v1 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->access$3600(Lcom/ss/android/medialib/RecordInvoker;JJFFFF)I

    move-result p0

    return p0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public updateEvents(JLjava/lang/String;)J
    .registers 11

    .line 4581
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4584
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->mHandler:J

    move-wide v4, p1

    move-object v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateEvents(JJLjava/lang/String;)J
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$4100(Lcom/ss/android/medialib/RecordInvoker;JJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, -0x1

    return-wide p0
.end method
