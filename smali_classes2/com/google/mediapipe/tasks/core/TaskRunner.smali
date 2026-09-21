.class public Lcom/google/mediapipe/tasks/core/TaskRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskRunner"

.field private static final TIMESATMP_UNITS_PER_SECOND:J = 0xf4240L


# instance fields
.field private errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

.field private final graph:Lcom/google/mediapipe/framework/Graph;

.field private final graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSeenTimestamp:J

.field private final modelResourcesCache:Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

.field private final outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/tasks/core/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskResult;",
            "*>;"
        }
    .end annotation
.end field

.field private final packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

.field private final statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;


# direct methods
.method public static synthetic $r8$lambda$uV5eJ0E2p93kwD73qbTBFaFAplg(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;Ljava/util/List;)V
    .registers 5

    .line 69
    invoke-virtual {p0, p2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->run(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 70
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordInvocationEnd(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/tasks/core/ModelResourcesCache;Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/framework/Graph;",
            "Lcom/google/mediapipe/tasks/core/ModelResourcesCache;",
            "Lcom/google/mediapipe/tasks/core/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskResult;",
            "*>;",
            "Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;",
            ")V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/high16 v1, -0x8000000000000000L

    .line 41
    iput-wide v1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    .line 274
    iput-object p3, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    .line 275
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 276
    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->modelResourcesCache:Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    .line 277
    new-instance p2, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-direct {p2, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    .line 278
    iput-object p4, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    const/4 p0, 0x1

    .line 279
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    invoke-interface {p4}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionStart()V

    return-void
.end method

.method private declared-synchronized addPackets(Ljava/util/Map;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 212
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "The task graph hasn\'t been successfully started or error occurs during graph initializaton."

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_1d

    :catchall_1a
    move-exception p1

    goto/16 :goto_a8

    .line 219
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 222
    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V

    const/4 v2, 0x0

    .line 224
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1d .. :try_end_46} :catch_49
    .catchall {:try_start_1d .. :try_end_46} :catchall_47

    goto :goto_25

    :catchall_47
    move-exception p2

    goto :goto_8d

    :catch_49
    move-exception p2

    goto :goto_65

    .line 234
    :cond_4b
    :try_start_4b
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_53
    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/framework/Packet;

    if-eqz p2, :cond_53

    .line 238
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_1a

    goto :goto_53

    .line 228
    :goto_65
    :try_start_65
    iget-object p3, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    if-nez p3, :cond_8c

    .line 229
    sget-object p3, Lcom/google/mediapipe/tasks/core/TaskRunner;->TAG:Ljava/lang/String;

    const-string v0, "Mediapipe error: "

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_47

    .line 234
    :try_start_70
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_78
    :goto_78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/framework/Packet;

    if-eqz p2, :cond_78

    .line 238
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_89
    .catchall {:try_start_70 .. :try_end_89} :catchall_1a

    goto :goto_78

    .line 242
    :cond_8a
    monitor-exit p0

    return-void

    .line 231
    :cond_8c
    :try_start_8c
    throw p2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_47

    .line 234
    :goto_8d
    :try_start_8d
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_95
    :goto_95
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/mediapipe/framework/Packet;

    if-eqz p3, :cond_95

    .line 238
    invoke-virtual {p3}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_95

    .line 241
    :cond_a7
    throw p2

    :goto_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_8d .. :try_end_a9} :catchall_1a

    throw p1
.end method

.method public static create(Landroid/content/Context;Lcom/google/mediapipe/tasks/core/TaskInfo;Lcom/google/mediapipe/tasks/core/OutputHandler;)Lcom/google/mediapipe/tasks/core/TaskRunner;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/mediapipe/tasks/core/TaskInfo<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskOptions;",
            ">;",
            "Lcom/google/mediapipe/tasks/core/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskResult;",
            "*>;)",
            "Lcom/google/mediapipe/tasks/core/TaskRunner;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskRunningModeName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {p0, v0, v1}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLoggerFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    move-result-object v0

    .line 61
    invoke-static {p0}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->initializeNativeAssetManager(Landroid/content/Context;)Z

    .line 62
    new-instance p0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->generateGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    .line 64
    new-instance v1, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    invoke-direct {v1}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;-><init>()V

    .line 65
    new-instance v2, Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;

    invoke-direct {v2}, Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/google/mediapipe/framework/Graph;->setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreamNames()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V

    .line 72
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges()Z

    move-result v3

    .line 66
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/mediapipe/framework/Graph;->addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V

    .line 73
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    .line 75
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    .line 76
    new-instance p1, Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-direct {p1, p0, v1, p2, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;-><init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/tasks/core/ModelResourcesCache;Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V

    return-object p1
.end method

.method private generateSyntheticTimestamp()J
    .registers 5

    .line 263
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, 0x0

    goto :goto_f

    :cond_b
    const-wide/32 v2, 0xf4240

    add-long/2addr v0, v2

    .line 264
    :goto_f
    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    return-wide v0
.end method

.method private reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V
    .registers 2

    .line 285
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    if-eqz p0, :cond_8

    .line 286
    invoke-interface {p0, p1}, Lcom/google/mediapipe/tasks/core/ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    return-void

    .line 288
    :cond_8
    throw p1
.end method

.method private validateInputTimstamp(J)V
    .registers 6

    .line 251
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_16

    .line 252
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 254
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "The received packets having a smaller timestamp than the processed timestamp."

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    .line 257
    :cond_16
    iput-wide p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    .line 186
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    .line 188
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V

    .line 189
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-interface {v0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionEnd()V

    .line 190
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->modelResourcesCache:Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    if-eqz v0, :cond_2a

    .line 191
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->release()V
    :try_end_25
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 197
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    .line 200
    :cond_2a
    :goto_2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->tearDown()V
    :try_end_2f
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v0

    .line 202
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :goto_34
    return-void
.end method

.method public getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object p0

    return-object p0
.end method

.method public getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-object p0
.end method

.method public declared-synchronized process(Ljava/util/Map;)Lcom/google/mediapipe/tasks/core/TaskResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/tasks/core/TaskResult;"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_1
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->generateSyntheticTimestamp()J

    move-result-wide v0

    .line 106
    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-interface {v2, v0, v1}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordCpuInputArrival(J)V

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->addPackets(Ljava/util/Map;J)V

    .line 108
    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    .line 109
    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->getLatestOutputTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    .line 110
    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->retrieveCachedTaskResult()Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public declared-synchronized process(Ljava/util/Map;J)Lcom/google/mediapipe/tasks/core/TaskResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;J)",
            "Lcom/google/mediapipe/tasks/core/TaskResult;"
        }
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->validateInputTimstamp(J)V

    .line 128
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-interface {v0, p2, p3}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordCpuInputArrival(J)V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->addPackets(Ljava/util/Map;J)V

    .line 130
    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    .line 131
    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->retrieveCachedTaskResult()Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object p1

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public restart()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 160
    :try_start_8
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    .line 162
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V

    .line 163
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-interface {v0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionEnd()V
    :try_end_1d
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    .line 165
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    .line 169
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    .line 171
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    .line 172
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-interface {v0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionStart()V
    :try_end_37
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_22 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    .line 175
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :goto_3c
    return-void
.end method

.method public declared-synchronized send(Ljava/util/Map;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->validateInputTimstamp(J)V

    .line 149
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-interface {v0, p2, p3}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordCpuInputArrival(J)V

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->addPackets(Ljava/util/Map;J)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 151
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    return-void
.end method
