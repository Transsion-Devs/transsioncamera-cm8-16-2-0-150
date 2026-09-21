.class public Lcom/ss/android/vesdk/VECurveSpeedUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VECurveSpeedUtils"

.field private static final TIMEBASE:I = 0x3e8


# instance fields
.field private mAveSpeed:D

.field private mCurveSpeedPointX:[F

.field private mCurveSpeedPointY:[F

.field private volatile mNative:J


# direct methods
.method public constructor <init>([F[F)V
    .registers 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "VECurveSpeedUtils"

    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_41

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_12

    goto :goto_41

    .line 42
    :cond_12
    invoke-static {p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCreateCurveSpeedUtils([F[F)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    .line 43
    iput-object p1, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mCurveSpeedPointX:[F

    .line 44
    iput-object p2, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mCurveSpeedPointY:[F

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VECurveSpeedUtils;->setCurveSpeed([F[F)I

    move-result p1

    .line 47
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECurveSpeedUtils;->getAveCurveSpeed()D

    move-result-wide v1

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VECurveSpeedUtils ret1 "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret2 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    :goto_41
    const-wide/16 p1, 0x0

    .line 38
    iput-wide p1, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    .line 39
    const-string p0, "incorrect curve anchors, mNative == 0"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static transferTrimPointXtoSeqPointX([F[F)[F
    .registers 9

    .line 62
    array-length v0, p0

    .line 63
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 64
    aput v3, v1, v2

    :goto_7
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_20

    add-int/lit8 v4, v2, 0x1

    .line 66
    aget v5, p1, v4

    aget v6, p1, v2

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    .line 67
    aget v6, p0, v4

    aget v2, p0, v2

    sub-float/2addr v6, v2

    div-float/2addr v6, v5

    add-float/2addr v3, v6

    .line 69
    aput v3, v1, v4

    move v2, v4

    goto :goto_7

    :cond_20
    const/4 p0, 0x1

    :goto_21
    if-ge p0, v0, :cond_4b

    .line 73
    aget p1, v1, p0

    div-float/2addr p1, v3

    aput p1, v1, p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transferTrimPointXtoSeqPointX SeqPointX["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TAG"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    :cond_4b
    return-object v1
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 5

    monitor-enter p0

    .line 184
    :try_start_1
    const-string v0, "VECurveSpeedUtils"

    const-string v1, "destroy..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 186
    const-string v0, "VECurveSpeedUtils"

    const-string v1, "destroy, mNative == 0"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 187
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    goto :goto_24

    .line 189
    :cond_1b
    :try_start_1b
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCurveSpeedDestroy(J)V

    .line 190
    iput-wide v2, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_19

    .line 191
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_19

    throw v0
.end method

.method public getAveCurveSpeed()D
    .registers 5

    .line 106
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 107
    const-string p0, "VECurveSpeedUtils"

    const-string v0, "getAveCurveSpeed, mNative == 0"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v0, -0x3fa4000000000000L    # -112.0

    return-wide v0

    .line 111
    :cond_12
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAveCurveSpeed(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mAveSpeed:D

    return-wide v0
.end method

.method public getCurveSpeedWithSeqDelta(J)D
    .registers 7

    .line 139
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 140
    const-string p0, "VECurveSpeedUtils"

    const-string p1, "getCurveSpeedWithSeqDelta, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 p0, -0x3fa4000000000000L    # -112.0

    return-wide p0

    .line 144
    :cond_12
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetCurveSpeedWithSeqDelta(JJ)D

    move-result-wide p0

    return-wide p0
.end method

.method public mapSeqDeltaToTrimDelta(J)J
    .registers 7

    .line 156
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 157
    const-string p0, "VECurveSpeedUtils"

    const-string p1, "mapSeqDeltaToTrimDelta, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x70

    return-wide p0

    .line 160
    :cond_12
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeMapSeqDeltaToTrimDelta(JJ)J

    move-result-wide p0

    .line 161
    div-long/2addr p0, v2

    return-wide p0
.end method

.method public mapTrimDeltaToSeqDelta(J)J
    .registers 7

    .line 172
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 173
    const-string p0, "VECurveSpeedUtils"

    const-string p1, "mapTrimDeltaToSeqDelta, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x70

    return-wide p0

    .line 176
    :cond_12
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeMapTrimDeltaToSeqDelta(JJ)J

    move-result-wide p0

    .line 177
    div-long/2addr p0, v2

    return-wide p0
.end method

.method public setCurveSpeed([F[F)I
    .registers 8

    .line 88
    const-string v0, "VECurveSpeedUtils"

    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_26

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    goto :goto_26

    .line 92
    :cond_f
    iget-wide v1, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    .line 93
    const-string p0, "setCurveSpeed, mNative == 0"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 97
    :cond_1f
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeSetCurveSpeedData(J[F[F)I

    move-result p0

    return p0

    .line 89
    :cond_26
    :goto_26
    const-string p0, "setCurveSpeed,incorrect curve anchors, mNative == 0"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setSeqDuration(J)V
    .registers 7

    .line 122
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 123
    const-string p0, "VECurveSpeedUtils"

    const-string p1, "setSeqDuration, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_10
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECurveSpeedUtils;->mNative:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeSetSeqDuration(JJ)V

    return-void
.end method
