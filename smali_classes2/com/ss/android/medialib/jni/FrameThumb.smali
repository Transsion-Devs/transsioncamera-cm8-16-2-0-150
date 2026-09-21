.class public Lcom/ss/android/medialib/jni/FrameThumb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 17
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeGetOldFrameThumbnail(JII)[I
.end method

.method private native nativeInitVideoToGraph(JLjava/lang/String;IIZ)[I
.end method

.method private native nativeStart(J)I
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeStopGetFrameThumbnail(J)V
.end method

.method private native nativeUninitVideoToGraph(J)I
.end method


# virtual methods
.method public getFrameThumbnail(I)[I
    .registers 3

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/medialib/jni/FrameThumb;->getFrameThumbnail(II)[I

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getFrameThumbnail(II)[I
    .registers 7

    monitor-enter p0

    .line 94
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_c
    :try_start_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeGetOldFrameThumbnail(JII)[I

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public initVideoToGraph(Ljava/lang/String;)[I
    .registers 3

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p0, p1, v0, v0}, Lcom/ss/android/medialib/jni/FrameThumb;->initVideoToGraph(Ljava/lang/String;II)[I

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized initVideoToGraph(Ljava/lang/String;II)[I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/medialib/jni/FrameThumb;->initVideoToGraph(Ljava/lang/String;IIZ)[I

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized initVideoToGraph(Ljava/lang/String;IIZ)[I
    .registers 13

    monitor-enter p0

    .line 59
    :try_start_1
    iget-wide v2, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_18

    const/16 p1, 0x9

    .line 60
    :try_start_b
    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 p3, -0x2710

    .line 61
    aput p3, p1, p2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 62
    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_29

    :cond_18
    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 64
    :try_start_1d
    invoke-direct/range {v1 .. v7}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeInitVideoToGraph(JLjava/lang/String;IIZ)[I

    move-result-object p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_23

    monitor-exit v1

    return-object p0

    :catchall_23
    move-exception v0

    :goto_24
    move-object p1, v0

    goto :goto_29

    :catchall_26
    move-exception v0

    move-object v1, p0

    goto :goto_24

    :goto_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_23

    throw p1
.end method

.method public declared-synchronized start()I
    .registers 5

    monitor-enter p0

    .line 120
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/4 v0, -0x1

    goto :goto_f

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeStart(J)I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 5

    monitor-enter p0

    .line 127
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeStop(J)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    .line 130
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method

.method public stopGetFrameThumbnail()V
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeStopGetFrameThumbnail(J)V

    return-void
.end method

.method public unInitVideoToGraph()I
    .registers 6

    .line 76
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 p0, -0x1

    return p0

    .line 77
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeStopGetFrameThumbnail(J)V

    .line 79
    monitor-enter p0

    .line 80
    :try_start_e
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/FrameThumb;->nativeUninitVideoToGraph(J)I

    move-result v0

    .line 81
    iput-wide v2, p0, Lcom/ss/android/medialib/jni/FrameThumb;->handle:J

    .line 82
    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v0
.end method
