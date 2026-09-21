.class public Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.super Lcom/transsion/camera/utils/encoder/MediaEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;,
        Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;,
        Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;,
        Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final AUDIO_SOURCES_2:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAudioEncodeThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

.field private final mAudioLock:Ljava/lang/Object;

.field private final mAudioQueue:Ljava/util/ArrayDeque;

.field private mAudioReadThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioSource:I

.field private mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

.field private volatile mEncodeThreadRunning:Z

.field private final mFreeBuffers:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioQueue(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/util/ArrayDeque;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEncodeThreadRunning(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mEncodeThreadRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEncodeThreadRunning(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mEncodeThreadRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$macquireBuffer(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/nio/ByteBuffer;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$menqueueAudioFrame(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->enqueueAudioFrame(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseBuffer(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaAudioEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/4 v4, 0x6

    .line 199
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    .line 207
    filled-new-array {v2, v1, v0, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES_2:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V
    .registers 5

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioSource:I

    const/4 p3, 0x0

    .line 39
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 40
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioReadThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

    .line 41
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioEncodeThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioQueue:Ljava/util/ArrayDeque;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    .line 45
    iput-boolean p2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mEncodeThreadRunning:Z

    .line 47
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 51
    const-string p2, "audio_source"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioSource:I

    return-void
.end method

.method private acquireBuffer()Ljava/nio/ByteBuffer;
    .registers 6

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    if-nez v1, :cond_2b

    .line 165
    :try_start_18
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_22
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_3

    :catchall_20
    move-exception p0

    goto :goto_45

    .line 167
    :catch_22
    :try_start_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 168
    monitor-exit v0

    return-object v2

    .line 171
    :cond_2b
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 172
    monitor-exit v0

    return-object v2

    .line 174
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object p0

    .line 175
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_20

    throw p0
.end method

.method private enqueueAudioFrame(Ljava/nio/ByteBuffer;I)V
    .registers 8

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_2b

    .line 194
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioQueue:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;

    invoke-direct {v2, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 196
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_18

    throw p0
.end method

.method private initBufferPool()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_e
    const/16 v2, 0x32

    if-ge v1, v2, :cond_22

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 126
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_20

    throw p0
.end method

.method private prepareAudioRecordBefore()V
    .registers 13

    const/16 v0, 0x10

    const/4 v1, 0x2

    const v2, 0xac44

    .line 216
    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSyncAudioAndVideo:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x32

    goto :goto_17

    :cond_15
    const/16 v1, 0x19

    :goto_17
    const/16 v2, 0x400

    mul-int/2addr v1, v2

    const/4 v3, 0x1

    if-ge v1, v0, :cond_21

    .line 223
    div-int/2addr v0, v2

    add-int/2addr v0, v3

    mul-int/lit16 v1, v0, 0x800

    :cond_21
    move v9, v1

    .line 225
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioSource:I

    if-ne v0, v3, :cond_29

    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    goto :goto_2b

    :cond_29
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES_2:[I

    :goto_2b
    array-length v1, v0

    const/4 v4, 0x0

    move v10, v4

    :goto_2e
    if-ge v10, v1, :cond_5d

    aget v5, v0, v10

    const/4 v11, 0x0

    .line 227
    :try_start_33
    new-instance v4, Landroid/media/AudioRecord;

    const/16 v7, 0x10

    const/4 v8, 0x2

    const v6, 0xac44

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 230
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    if-eq v4, v3, :cond_55

    .line 231
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 232
    iput-object v11, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 233
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v4, p0, v3}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_52} :catch_53

    goto :goto_55

    .line 236
    :catch_53
    iput-object v11, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 238
    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_5a

    goto :goto_5d

    :cond_5a
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 243
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_83

    .line 244
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_78

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v1, p0, v3}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V

    .line 251
    :cond_78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 253
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_83
    return-void
.end method

.method private releaseBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method private static final selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 10

    .line 459
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectAudioCodec:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_55

    .line 466
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 467
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_52

    .line 470
    :cond_1a
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 471
    :goto_1f
    array-length v6, v4

    if-ge v5, v6, :cond_52

    .line 472
    sget-object v6, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportedType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    return-object v3

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method private stopAudioThreads()V
    .registers 5

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSyncAudioAndVideo:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mEncodeThreadRunning:Z

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_e
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_4b

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioReadThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    if-eqz v0, :cond_28

    .line 137
    :try_start_1b
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 139
    :catch_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 141
    :goto_26
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioReadThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

    .line 143
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioEncodeThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

    if-eqz v0, :cond_39

    .line 145
    :try_start_2c
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_37

    .line 147
    :catch_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 149
    :goto_37
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioEncodeThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

    .line 151
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_3c
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mFreeBuffers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 154
    monitor-exit v1

    goto :goto_4e

    :catchall_48
    move-exception p0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_48

    throw p0

    :catchall_4b
    move-exception p0

    .line 134
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method protected prepare()V
    .registers 8

    .line 56
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 57
    iput v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v2, 0x0

    .line 58
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 60
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 62
    const-string p0, "Unable to find an appropriate codec for audio/mp4a-latm"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected codec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v3, 0xac44

    const/4 v4, 0x1

    .line 67
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 68
    const-string v5, "aac-profile"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    const-string v5, "channel-mask"

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 70
    const-string v5, "bitrate"

    const v6, 0xfa00

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    const-string v5, "channel-count"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 77
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 78
    const-string v2, "prepare finishing"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_8d

    .line 81
    :try_start_83
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8d

    :catch_87
    move-exception v0

    .line 83
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v2, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_8d
    :goto_8d
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->prepareAudioRecordBefore()V

    .line 87
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepareAudioRecordBefore finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected release()V
    .registers 2

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->stopAudioThreads()V

    .line 116
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    return-void
.end method

.method protected startRecording()V
    .registers 3

    .line 92
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSyncAudioAndVideo:Z

    if-eqz v0, :cond_32

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->initBufferPool()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mEncodeThreadRunning:Z

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioEncodeThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

    if-nez v0, :cond_21

    .line 97
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

    const-string v1, "AudioEncodeThread"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioEncodeThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioReadThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

    if-nez v0, :cond_41

    .line 101
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

    const-string v1, "AudioReadThread"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioReadThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 105
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_41

    .line 106
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Lcom/transsion/camera/utils/encoder/MediaAudioEncoder-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_41
    return-void
.end method
