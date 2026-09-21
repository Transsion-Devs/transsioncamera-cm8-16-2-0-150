.class public Lcom/ss/android/ttve/nativePort/TEEffectInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEEffectInterface"


# instance fields
.field private mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

.field private volatile mHandle:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    .line 26
    new-instance p1, Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    invoke-direct {p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    .line 27
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setEffectCallback()V

    return-void
.end method

.method private native nativeCallEffectInterface(JJ)I
.end method

.method private native nativeCallEffectInterfaceWithObjectResult(JJ)Ljava/lang/Object;
.end method

.method private native nativeCallEffectInterfaceWithResult(JJJ)I
.end method

.method private native nativeSetEffectCallback(JLcom/ss/android/ttve/nativePort/TEEffectCallback;)I
.end method

.method private setEffectCallback()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz v0, :cond_b

    .line 126
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->nativeSetEffectCallback(JLcom/ss/android/ttve/nativePort/TEEffectCallback;)I

    :cond_b
    return-void
.end method


# virtual methods
.method public callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I
    .registers 6

    .line 31
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 32
    const-string p0, "TEEffectInterface"

    const-string p1, "callEffectInterface, but mHandle is invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_11
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->nativeCallEffectInterface(JJ)I

    move-result p0

    .line 37
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I
    .registers 10

    .line 42
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 43
    const-string p0, "TEEffectInterface"

    const-string p1, "callEffectInterfaceWithResult, but mHandle is invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 47
    :cond_11
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->nativeCallEffectInterfaceWithResult(JJJ)I

    move-result p0

    .line 48
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;)Ljava/lang/Object;
    .registers 6

    .line 53
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 54
    const-string p0, "TEEffectInterface"

    const-string p1, "callEffectInterfaceWithResult, but mHandle is invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 58
    :cond_15
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->nativeCallEffectInterfaceWithObjectResult(JJ)Ljava/lang/Object;

    move-result-object p0

    .line 59
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return-object p0
.end method

.method public regBachAlgorithmCallback(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 132
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->regBachAlgorithmCallback(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 3

    .line 88
    const-string v0, "TEEffectInterface"

    const-string v1, "release..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mHandle:J

    return-void
.end method

.method public setARTextBitmapCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 95
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setARTextBitmapCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)V

    :cond_7
    return-void
.end method

.method public setARTextParagraphContentCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 101
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setARTextParagraphContentCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V

    :cond_7
    return-void
.end method

.method public setEffectAlgorithmInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 112
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setEffectAlgorithmInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    :cond_7
    return-void
.end method

.method public setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 71
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V

    :cond_7
    return-void
.end method

.method public setFaceInfoCallback(Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;)V
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 65
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setFaceInfoCallback(Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;)V

    :cond_7
    return-void
.end method

.method public setLandMarkDetectCallback(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 106
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setLandmarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    :cond_7
    return-void
.end method

.method public setSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_8

    .line 118
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    return-void

    .line 120
    :cond_8
    const-string p0, "TEEffectInterface"

    const-string p1, "setSkeletonDetectCallback failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 77
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setOnSmartBeautyListener(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    :cond_7
    return-void
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 83
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    :cond_7
    return-void
.end method

.method public unregBachAlgorithmCallback()V
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->mEffectCallback:Lcom/ss/android/ttve/nativePort/TEEffectCallback;

    if-eqz p0, :cond_7

    .line 138
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEEffectCallback;->unregBachAlgorithmCallback()V

    :cond_7
    return-void
.end method
