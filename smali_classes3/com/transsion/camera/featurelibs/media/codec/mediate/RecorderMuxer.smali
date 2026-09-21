.class public Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private final mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrackIndexPresentationTimeUsMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static synthetic $r8$lambda$RpjL3LJmEV8_uHtn5xXUaRsGi7M(Ljava/util/Map$Entry;)Z
    .registers 5

    .line 184
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    .line 185
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->trackValid()Z

    move-result v2

    if-nez v2, :cond_26

    .line 186
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack has invalid track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 189
    :cond_26
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_36

    .line 190
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_35

    goto :goto_36

    :cond_35
    return v1

    .line 191
    :cond_36
    :goto_36
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid trackIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", track: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecorderMuxer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackIndexPresentationTimeUsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private checkAllTrackPrepared()Z
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "start muxer already"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 183
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addTrack(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;)V
    .registers 3

    .line 76
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->trackValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public onTrackPrepared(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;Landroid/media/MediaFormat;)I
    .registers 8

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    const/4 v1, -0x1

    if-nez v0, :cond_d

    .line 133
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEncoderPrepared mediaMuxer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 137
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 138
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEncoderPrepared trackRecorder is not in mTrackRecorders"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 142
    :cond_1d
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_32

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_32

    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 147
    :cond_32
    monitor-enter p0

    .line 149
    :try_start_33
    invoke-virtual {v0, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_9f
    .catchall {:try_start_33 .. :try_end_3b} :catchall_9d

    .line 154
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_9d

    .line 156
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrackPrepared trackIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", trackRecorder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->checkAllTrackPrepared()Z

    move-result p1

    if-eqz p1, :cond_9c

    const/4 p1, 0x1

    .line 162
    :try_start_66
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    const-string p2, "onTrackPrepared mediaMuxer started"

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_7c

    .line 169
    monitor-enter p0

    .line 170
    :try_start_74
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit p0

    return v2

    :catchall_79
    move-exception p1

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_79

    throw p1

    :catchall_7c
    move-exception p2

    .line 166
    :try_start_7d
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "start muxer error"

    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_92

    .line 169
    monitor-enter p0

    .line 170
    :try_start_8a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit p0

    goto :goto_9c

    :catchall_8f
    move-exception p1

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_8f

    throw p1

    :catchall_92
    move-exception p1

    .line 169
    monitor-enter p0

    .line 170
    :try_start_94
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_99

    .line 172
    throw p1

    :catchall_99
    move-exception p1

    .line 171
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1

    :cond_9c
    :goto_9c
    return v2

    :catchall_9d
    move-exception p1

    goto :goto_b8

    :catch_9f
    move-exception p1

    .line 151
    :try_start_a0
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrackPrepared format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    monitor-exit p0

    return v1

    .line 154
    :goto_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_a0 .. :try_end_b9} :catchall_9d

    throw p1
.end method

.method public prepare()V
    .registers 4

    .line 51
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->prepare()V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->fileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 57
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->fileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->outputFormat()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_55

    .line 58
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->filePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 59
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->filePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->outputFormat()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 65
    :goto_55
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare orientationHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->orientationHint()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->orientationHint()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void

    .line 61
    :cond_81
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare fail mParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath or fileDescriptor must be specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .registers 2

    .line 115
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->release()V

    .line 117
    monitor-enter p0

    .line 118
    :try_start_4
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_25

    .line 121
    :cond_12
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_10

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1a

    .line 124
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 126
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackRecorders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackIndexPresentationTimeUsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    .line 121
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_10

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 105
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->reset()V

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->release()V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public stop()V
    .registers 5

    .line 83
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stop()V

    .line 85
    monitor-enter p0

    .line 86
    :try_start_4
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_18

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_52

    .line 90
    :cond_18
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_16

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 94
    :try_start_25
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    goto :goto_4b

    :catch_30
    move-exception v0

    .line 97
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    :goto_4b
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_51
    return-void

    .line 90
    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_16

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 10

    .line 199
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    .line 200
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Skipping codec config data in writeSampleData to prevent duplication"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_e
    monitor-enter p0

    .line 205
    :goto_f
    :try_start_f
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_23

    if-nez v0, :cond_30

    .line 207
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_26
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_f

    :catchall_23
    move-exception p1

    goto/16 :goto_eb

    :catch_26
    move-exception v0

    .line 209
    :try_start_27
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSampleData wait error"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 212
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_23

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_43

    goto/16 :goto_c7

    .line 220
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-nez v0, :cond_50

    .line 222
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "writeSampleData mediaMuxer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_50
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackIndexPresentationTimeUsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_89

    .line 227
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_89

    .line 228
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drop invalid data, presentationTimeUs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", info.presentationTimeUs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_89
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeSampleData trackIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", presentationTimeUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mTrackIndexPresentationTimeUsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :try_start_b9
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_c6

    :catch_bd
    move-exception p0

    .line 243
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "writeSampleData exception"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c6
    return-void

    .line 215
    :cond_c7
    :goto_c7
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "writeSampleData muxer not started, mMuxerStartedReally: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedReally:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mMuxerStartedFailed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->mMuxerStartedFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 212
    :goto_eb
    :try_start_eb
    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_23

    throw p1
.end method
