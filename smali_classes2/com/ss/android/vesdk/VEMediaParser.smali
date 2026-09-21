.class public Lcom/ss/android/vesdk/VEMediaParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mHandler:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEMediaParser;->mHandler:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getVideoFrame(IIIZ)Landroid/graphics/Bitmap;
    .registers 11

    monitor-enter p0

    .line 33
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEMediaParser;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 34
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_c
    :try_start_c
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEMediaParser;->mHandler:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getFrameWithHandler(JIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception v0

    move-object p1, v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_18

    throw p1
.end method

.method public declared-synchronized init(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 18
    :try_start_1
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->createGetFrameHandler(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEMediaParser;->mHandler:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 19
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 45
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEMediaParser;->mHandler:J

    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->releaseGetFrameHandler(J)V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEMediaParser;->mHandler:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 47
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method
