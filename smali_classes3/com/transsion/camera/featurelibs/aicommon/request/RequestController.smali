.class public Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDbManager:Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

.field private final mProcessingRequests:Ljava/util/ArrayDeque;

.field private final mQueuingRequests:Ljava/util/ArrayDeque;

.field private final mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mRequestDispatcher:Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;

.field private final mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;


# direct methods
.method public static synthetic $r8$lambda$4chyJVpBzau2n3_0uHYhZ6iPrxU(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)Z
    .registers 2

    .line 170
    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6j26w1gTz3bkWlcjB9mkBh6r_qs(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)Z
    .registers 2

    .line 165
    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X1aj9gyunoQEOJt_xMmWMoHd5Mw(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->lambda$executeOperationTransaction$2(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mDbManager:Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCallMap(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestHolder(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mQueuingRequests:Ljava/util/ArrayDeque;

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mDbManager:Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    .line 60
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestDispatcher:Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->loadRequests()V

    return-void
.end method

.method private executeOperationTransaction(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;)V
    .registers 3

    .line 252
    monitor-enter p0

    .line 254
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->operations()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)V

    .line 255
    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    .line 257
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private synthetic lambda$executeOperationTransaction$2(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V
    .registers 2

    .line 255
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;->execute(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)V

    return-void
.end method

.method private loadRequests()V
    .registers 4

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;

    const-string v2, "loadRequests"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->add(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    return-void
.end method

.method public add(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V
    .registers 6

    .line 293
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    monitor-enter p0

    .line 295
    :try_start_1b
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->add(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    .line 296
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mDbManager:Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    invoke-interface {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->add(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 297
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw p1
.end method

.method public enqueue(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V
    .registers 6

    .line 161
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue requestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    monitor-enter p0

    .line 164
    :try_start_29
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue duplicate mProcessingRequests request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    goto/16 :goto_100

    .line 169
    :cond_59
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mQueuingRequests:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue duplicate mQueuingRequests request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    monitor-exit p0

    return-void

    .line 175
    :cond_86
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v3, :cond_d2

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestDispatcher:Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;

    iget-object v1, v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->executeOn(Ljava/util/concurrent/ExecutorService;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 179
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v2, v0, :cond_ae

    .line 181
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->move(Lcom/transsion/camera/app/common/ai/AIRequest;I)V

    goto :goto_ef

    .line 183
    :cond_ae
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestStatus(I)V

    .line 184
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->add(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    goto :goto_ef

    .line 187
    :cond_b9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeFailed requestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_ef

    .line 190
    :cond_d2
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mQueuingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    if-ne v2, v0, :cond_e5

    .line 194
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->move(Lcom/transsion/camera/app/common/ai/AIRequest;I)V

    goto :goto_ef

    .line 196
    :cond_e5
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestStatus(I)V

    .line 197
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->add(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 201
    :goto_ef
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit p0

    return-void

    :goto_100
    monitor-exit p0
    :try_end_101
    .catchall {:try_start_29 .. :try_end_101} :catchall_56

    throw p1
.end method

.method public finish(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V
    .registers 6

    .line 206
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish requestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    monitor-enter p0

    .line 209
    :try_start_29
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_61

    :catchall_46
    move-exception p1

    goto/16 :goto_d5

    .line 214
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish failed, requestCall@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    :goto_61
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;-><init>()V

    .line 219
    iget-object v1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->canceled()Z

    move-result v1

    if-nez v1, :cond_80

    .line 220
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->addOperation(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V

    goto :goto_9c

    .line 223
    :cond_80
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->canceled()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 224
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$RemoveOperation;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {v1, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$RemoveOperation;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->addOperation(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V

    goto :goto_9c

    .line 227
    :cond_91
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->addOperation(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V

    .line 232
    :goto_9c
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_d0

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mQueuingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    if-eqz p1, :cond_bf

    .line 235
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;

    iget-object v2, p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$MoveOperation;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;->addOperation(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction$BaseOperation;)V

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 241
    :cond_bf
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mProcessingRequests:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    if-eqz p1, :cond_d0

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestDispatcher:Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;

    iget-object v1, v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->executeOn(Ljava/util/concurrent/ExecutorService;)Z

    .line 247
    :cond_d0
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->executeOperationTransaction(Lcom/transsion/camera/featurelibs/aicommon/request/OperationTransaction;)V

    .line 248
    monitor-exit p0

    return-void

    :goto_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_29 .. :try_end_d6} :catchall_46

    throw p1
.end method

.method public getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    return-object p0
.end method

.method public move(Lcom/transsion/camera/app/common/ai/AIRequest;I)V
    .registers 4

    const/4 v0, 0x1

    .line 315
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->move(Lcom/transsion/camera/app/common/ai/AIRequest;IZ)V

    return-void
.end method

.method public move(Lcom/transsion/camera/app/common/ai/AIRequest;IZ)V
    .registers 7

    .line 319
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    monitor-enter p0

    .line 321
    :try_start_23
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->move(Lcom/transsion/camera/app/common/ai/AIRequest;IZ)V

    .line 322
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mDbManager:Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    invoke-interface {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->update(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 323
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public refresh()V
    .registers 4

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;

    const-string v2, "refreshRequests"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public reload()V
    .registers 4

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;

    const-string v2, "reloadRequests"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V
    .registers 6

    .line 305
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    monitor-enter p0

    .line 307
    :try_start_1b
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    .line 309
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mDbManager:Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    invoke-interface {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 310
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 311
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw p1
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 7

    .line 261
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminate request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    monitor-enter p0

    .line 265
    :try_start_1b
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_41

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminate invalid status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_82

    :catchall_3f
    move-exception p1

    goto :goto_84

    .line 274
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda1;-><init>()V

    .line 275
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_82

    .line 267
    :cond_5e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mQueuingRequests:Ljava/util/ArrayDeque;

    .line 268
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayDeque;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 284
    :goto_82
    monitor-exit p0

    return v2

    .line 285
    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_1b .. :try_end_85} :catchall_3f

    throw p1
.end method

.method public updateProgress(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    .line 327
    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->updateProgress(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 329
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method
