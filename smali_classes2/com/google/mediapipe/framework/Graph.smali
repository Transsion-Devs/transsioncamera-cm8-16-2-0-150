.class public Lcom/google/mediapipe/framework/Graph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/Graph$PacketBufferItem;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x14

.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private graphRunning:Z

.field private nativeGraphHandle:J

.field private packetBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/mediapipe/framework/Graph$PacketBufferItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private sidePackets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private startRunningGraphCalled:Z

.field private stepMode:Z

.field private streamHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final terminationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->stepMode:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->terminationLock:Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->nativeCreateGraph()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    return-void
.end method

.method private addPacketToBuffer(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)Z
    .registers 7

    .line 570
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 571
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_12
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 574
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_58

    .line 575
    iget-object p0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2c

    .line 577
    sget-object p2, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p2}, Lcom/google/common/flogger/AbstractLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object p2

    check-cast p2, Lcom/google/common/flogger/FluentLogger$Api;

    const-string p3, "Stream: %s might be missing."

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    .line 580
    :cond_50
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Graph is not started because of missing streams"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 582
    :cond_58
    new-instance p0, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;-><init>(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Long;Lcom/google/mediapipe/framework/Graph$1;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private hasAllStreamHeaders()Z
    .registers 2

    .line 622
    iget-object p0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 623
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private moveBufferedPacketsToInputStream()V
    .registers 15

    .line 589
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 590
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 591
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_12

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;

    .line 593
    :try_start_33
    iget-wide v7, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 594
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v6, v5, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v6}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v10

    iget-object v6, v5, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->timestamp:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v6, p0

    .line 593
    invoke-direct/range {v6 .. v13}, Lcom/google/mediapipe/framework/Graph;->nativeMovePacketToInputStream(JLjava/lang/String;JJ)V
    :try_end_4c
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_33 .. :try_end_4c} :catch_53

    .line 601
    iget-object p0, v5, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->release()V

    move-object p0, v6

    goto :goto_29

    :catch_53
    move-exception v0

    move-object p0, v0

    .line 596
    sget-object v0, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v0}, Lcom/google/common/flogger/AbstractLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    .line 597
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 596
    const-string v3, "AddPacket for stream: %s failed: %s."

    invoke-interface {v0, v3, v1, v2}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    throw p0

    :cond_6b
    move-object v6, p0

    .line 604
    iget-object p0, v6, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_71
    return-void
.end method

.method private native nativeAddMultiStreamCallback(JLjava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/framework/PacketListCallback;",
            "Z)V"
        }
    .end annotation
.end method

.method private native nativeAddPacketCallback(JLjava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
.end method

.method private native nativeAddPacketToInputStream(JLjava/lang/String;JJ)V
.end method

.method private native nativeAddSurfaceOutput(JLjava/lang/String;)J
.end method

.method private native nativeCancelGraph(J)V
.end method

.method private native nativeCloseAllInputStreams(J)V
.end method

.method private native nativeCloseAllPacketSources(J)V
.end method

.method private native nativeCloseInputStream(JLjava/lang/String;)V
.end method

.method private native nativeCreateGraph()J
.end method

.method private native nativeGetCalculatorGraphConfig(J)[B
.end method

.method private native nativeGetProfiler(J)J
.end method

.method private native nativeLoadBinaryGraph(JLjava/lang/String;)V
.end method

.method private native nativeLoadBinaryGraphBytes(J[B)V
.end method

.method private native nativeLoadBinaryGraphTemplate(J[B)V
.end method

.method private native nativeMovePacketToInputStream(JLjava/lang/String;JJ)V
.end method

.method private native nativeReleaseGraph(J)V
.end method

.method private native nativeRunGraphUntilClose(J[Ljava/lang/String;[J)V
.end method

.method private native nativeSetGraphInputStreamBlockingMode(JZ)V
.end method

.method private native nativeSetGraphOptions(J[B)V
.end method

.method private native nativeSetGraphType(JLjava/lang/String;)V
.end method

.method private native nativeSetParentGlContext(JJ)V
.end method

.method private native nativeStartRunningGraph(J[Ljava/lang/String;[J[Ljava/lang/String;[J)V
.end method

.method private native nativeUpdatePacketReference(JJ)V
.end method

.method private native nativeWaitUntilGraphDone(J)V
.end method

.method private native nativeWaitUntilGraphIdle(J)V
.end method

.method private static splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .line 610
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    array-length v1, p2

    if-ne v0, v1, :cond_3b

    .line 614
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 615
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v0

    .line 616
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3a
    return-void

    .line 611
    :cond_3b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Input array length doesn\'t match the map size!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    .registers 14

    monitor-enter p0

    .line 405
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 407
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_39

    if-nez v0, :cond_25

    .line 408
    :try_start_15
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/mediapipe/framework/Graph;->addPacketToBuffer(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)Z

    .line 410
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_21

    move-object v1, p0

    goto :goto_34

    :catchall_21
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_3c

    .line 414
    :cond_25
    :try_start_25
    iget-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 415
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v5
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_39

    move-object v1, p0

    move-object v4, p1

    move-wide v7, p3

    .line 414
    :try_start_2e
    invoke-direct/range {v1 .. v8}, Lcom/google/mediapipe/framework/Graph;->nativeMovePacketToInputStream(JLjava/lang/String;JJ)V

    .line 418
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_36

    .line 420
    :goto_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    :goto_37
    move-object p1, v0

    goto :goto_3c

    :catchall_39
    move-exception v0

    move-object v1, p0

    goto :goto_37

    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_36

    throw p1
.end method

.method public declared-synchronized addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/framework/PacketListCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 187
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mediapipe/framework/Graph;->addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 188
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/framework/PacketListCallback;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const-string v3, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 205
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_3d

    if-nez v0, :cond_27

    :try_start_1d
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_23

    if-nez v0, :cond_27

    move v1, v2

    goto :goto_27

    :catchall_23
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_40

    :cond_27
    :goto_27
    :try_start_27
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 208
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3d

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    :try_start_35
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/Graph;->nativeAddMultiStreamCallback(JLjava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    .line 210
    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    :goto_3b
    move-object p1, v0

    goto :goto_40

    :catchall_3d
    move-exception v0

    move-object v1, p0

    goto :goto_3b

    :goto_40
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3a

    throw p1
.end method

.method public declared-synchronized addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
    .registers 7

    monitor-enter p0

    .line 168
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const-string v3, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 170
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_25

    move v1, v2

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_34

    :cond_25
    :goto_25
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/Graph;->nativeAddPacketCallback(JLjava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_23

    .line 175
    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_23

    throw p1
.end method

.method public declared-synchronized addPacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    .registers 14

    monitor-enter p0

    .line 380
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 382
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_33

    if-nez v0, :cond_22

    .line 383
    :try_start_15
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/framework/Graph;->addPacketToBuffer(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    move-object v1, p0

    goto :goto_2e

    :catchall_1e
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_36

    .line 385
    :cond_22
    :try_start_22
    iget-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 386
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v5
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_33

    move-object v1, p0

    move-object v4, p1

    move-wide v7, p3

    .line 385
    :try_start_2b
    invoke-direct/range {v1 .. v8}, Lcom/google/mediapipe/framework/Graph;->nativeAddPacketToInputStream(JLjava/lang/String;JJ)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_30

    .line 388
    :goto_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    :goto_31
    move-object p1, v0

    goto :goto_36

    :catchall_33
    move-exception v0

    move-object v1, p0

    goto :goto_31

    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_30

    throw p1
.end method

.method public declared-synchronized addStreamNameExpectingHeader(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 257
    :try_start_1
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :catchall_b
    move-exception p1

    goto :goto_19

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 258
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b

    .line 259
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_b

    throw p1
.end method

.method public declared-synchronized addSurfaceOutput(Ljava/lang/String;)Lcom/google/mediapipe/framework/SurfaceOutput;
    .registers 6

    monitor-enter p0

    .line 221
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const-string v3, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 223
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_22

    move v1, v2

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_36

    :cond_22
    :goto_22
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 226
    new-instance v0, Lcom/google/mediapipe/framework/SurfaceOutput;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 227
    invoke-direct {p0, v1, v2, p1}, Lcom/google/mediapipe/framework/Graph;->nativeAddSurfaceOutput(JLjava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;-><init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/framework/Packet;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_20

    .line 226
    monitor-exit p0

    return-object v0

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_20

    throw p1
.end method

.method public declared-synchronized cancelGraph()V
    .registers 5

    monitor-enter p0

    .line 557
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 559
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeCancelGraph(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 560
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized closeAllInputStreams()V
    .registers 5

    monitor-enter p0

    .line 437
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 439
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeCloseAllInputStreams(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 440
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized closeAllPacketSources()V
    .registers 5

    monitor-enter p0

    .line 447
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 449
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeCloseAllPacketSources(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 450
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized closeInputStream(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 427
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 429
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeCloseInputStream(JLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 430
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized createGlRunner(Ljava/lang/String;J)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 535
    const-string v0, "gpu_shared"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 536
    invoke-virtual {p0, p2, p3}, Lcom/google/mediapipe/framework/Graph;->setParentGlContext(J)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 537
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .registers 2

    monitor-enter p0

    .line 157
    :try_start_1
    invoke-static {}, Lcom/google/mediapipe/framework/ProtoUtil;->getExtensionRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/Graph;->getCalculatorGraphConfig(Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized getCalculatorGraphConfig(Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .registers 6

    monitor-enter p0

    .line 140
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 142
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeGetCalculatorGraphConfig(J)[B

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1f

    if-eqz v0, :cond_28

    .line 145
    :try_start_19
    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object p1
    :try_end_1d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_19 .. :try_end_1d} :catch_21
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object p1

    :catchall_1f
    move-exception p1

    goto :goto_2b

    :catch_21
    move-exception p1

    .line 147
    :try_start_22
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    .line 150
    :cond_28
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1f

    throw p1
.end method

.method public declared-synchronized getNativeHandle()J
    .registers 3

    monitor-enter p0

    .line 75
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getProfiler()Lcom/google/mediapipe/framework/GraphProfiler;
    .registers 5

    .line 564
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 566
    new-instance v0, Lcom/google/mediapipe/framework/GraphProfiler;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/Graph;->nativeGetProfiler(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/mediapipe/framework/GraphProfiler;-><init>(JLcom/google/mediapipe/framework/Graph;)V

    return-object v0
.end method

.method public declared-synchronized getStepMode()Z
    .registers 2

    monitor-enter p0

    .line 83
    :try_start_1
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->stepMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized loadBinaryGraph(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V
    .registers 2

    monitor-enter p0

    .line 107
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph([B)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 108
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized loadBinaryGraph(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 93
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 95
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraph(JLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 96
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized loadBinaryGraph([B)V
    .registers 6

    monitor-enter p0

    .line 100
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 102
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraphBytes(J[B)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 103
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized loadBinaryGraphTemplate(Lcom/google/mediapipe/proto/GraphTemplateProto$CalculatorGraphTemplate;)V
    .registers 4

    monitor-enter p0

    .line 112
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/GraphTemplateProto$CalculatorGraphTemplate;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraphTemplate(J[B)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 113
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized loadBinaryGraphTemplate([B)V
    .registers 6

    monitor-enter p0

    .line 117
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraphTemplate(J[B)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 120
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized runGraphUntilClose()V
    .registers 5

    monitor-enter p0

    .line 309
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 314
    iget-object v2, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lcom/google/mediapipe/framework/Graph;->splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V

    .line 315
    iget-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeRunGraphUntilClose(J[Ljava/lang/String;[J)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 316
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public declared-synchronized setGraphInputStreamBlockingMode(Z)V
    .registers 6

    monitor-enter p0

    .line 363
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v2, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 365
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 366
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeSetGraphInputStreamBlockingMode(JZ)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 367
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized setGraphOptions(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .registers 4

    monitor-enter p0

    .line 129
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeSetGraphOptions(J[B)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 130
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized setGraphType(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 124
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeSetGraphType(JLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 125
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized setInputSidePackets(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const-string v3, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 238
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_1f

    move v1, v2

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_4e

    :cond_1f
    :goto_1f
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    iget-object v1, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_1d

    goto :goto_2a

    .line 242
    :cond_4c
    monitor-exit p0

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_1d

    throw p1
.end method

.method public declared-synchronized setParentGlContext(J)V
    .registers 7

    monitor-enter p0

    .line 547
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v2, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 549
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 550
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/Graph;->nativeSetParentGlContext(JJ)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 551
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mediapipe/framework/GraphService<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-interface {p1, v0, v1, p2}, Lcom/google/mediapipe/framework/GraphService;->installServiceObject(JLjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 246
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized setStepMode(Z)V
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_1
    iput-boolean p1, p0, Lcom/google/mediapipe/framework/Graph;->stepMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 80
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 270
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mediapipe/framework/Graph;->setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 271
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;Z)V
    .registers 5

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    if-eqz v0, :cond_21

    if-eqz p3, :cond_1f

    .line 286
    iget-boolean p3, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez p3, :cond_17

    .line 290
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_21

    :catchall_15
    move-exception p1

    goto :goto_3d

    .line 287
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t override an existing stream header, after graph started running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_15

    .line 293
    :cond_1f
    monitor-exit p0

    return-void

    .line 296
    :cond_21
    :goto_21
    :try_start_21
    iget-object p3, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-boolean p1, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez p1, :cond_3b

    iget-boolean p1, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-eqz p1, :cond_3b

    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->hasAllStreamHeaders()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 298
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_15

    .line 300
    :cond_3b
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_15

    throw p1
.end method

.method public declared-synchronized startRunningGraph()V
    .registers 10

    monitor-enter p0

    .line 327
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v2, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 329
    iput-boolean v1, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    .line 330
    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->hasAllStreamHeaders()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 332
    sget-object v0, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v0}, Lcom/google/common/flogger/AbstractLogger;->atInfo()Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "MediaPipe graph won\'t start until all stream headers are available."

    invoke-interface {v0, v1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 333
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    move-object v2, p0

    goto :goto_64

    .line 336
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v6, v0, [J

    .line 338
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-static {v0, v5, v6}, Lcom/google/mediapipe/framework/Graph;->splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V

    .line 340
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v8, v0, [J

    .line 342
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-static {v0, v7, v8}, Lcom/google/mediapipe/framework/Graph;->splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V

    .line 343
    iget-wide v3, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_29

    move-object v2, p0

    :try_start_59
    invoke-direct/range {v2 .. v8}, Lcom/google/mediapipe/framework/Graph;->nativeStartRunningGraph(J[Ljava/lang/String;[J[Ljava/lang/String;[J)V

    .line 351
    iput-boolean v1, v2, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    .line 352
    invoke-direct {v2}, Lcom/google/mediapipe/framework/Graph;->moveBufferedPacketsToInputStream()V
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_63

    .line 353
    monitor-exit v2

    return-void

    :catchall_63
    move-exception v0

    :goto_64
    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0
.end method

.method public declared-synchronized tearDown()V
    .registers 9

    monitor-enter p0

    .line 476
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    const-string v4, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v4}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_1c

    :catchall_32
    move-exception v0

    goto/16 :goto_b6

    .line 481
    :cond_35
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 482
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 483
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 484
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v4}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_44

    .line 487
    :cond_60
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 488
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_86
    if-ge v6, v5, :cond_6f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;

    .line 490
    iget-object v7, v7, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v7}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_86

    .line 493
    :cond_96
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 494
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->terminationLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_9e
    .catchall {:try_start_1 .. :try_end_9e} :catchall_32

    .line 495
    :try_start_9e
    iget-wide v4, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_ac

    .line 496
    invoke-direct {p0, v4, v5}, Lcom/google/mediapipe/framework/Graph;->nativeReleaseGraph(J)V

    .line 497
    iput-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    goto :goto_ac

    :catchall_aa
    move-exception v1

    goto :goto_b4

    .line 499
    :cond_ac
    :goto_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_aa

    .line 500
    :try_start_ad
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_32

    .line 501
    monitor-exit p0

    return-void

    .line 499
    :goto_b4
    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_aa

    :try_start_b5
    throw v1

    :goto_b6
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_32

    throw v0
.end method

.method public declared-synchronized updatePacketReference(Lcom/google/mediapipe/framework/Packet;Lcom/google/mediapipe/framework/Packet;)V
    .registers 7

    monitor-enter p0

    .line 516
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called already."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 519
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide p1

    .line 518
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/Graph;->nativeUpdatePacketReference(JJ)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 520
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public declared-synchronized waitUntilGraphDone()V
    .registers 5

    monitor-enter p0

    .line 459
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 461
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeWaitUntilGraphDone(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 462
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized waitUntilGraphIdle()V
    .registers 5

    monitor-enter p0

    .line 469
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid context, tearDown() might have been called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 471
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeWaitUntilGraphIdle(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 472
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method
