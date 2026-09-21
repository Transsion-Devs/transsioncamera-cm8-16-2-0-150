.class public final Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

.field private static final classLock:Lbytekn/foundation/concurrent/lock/Lock;

.field private static final downloadListenerRegistry:Lbytekn/foundation/collections/SharedMutableMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

    .line 18
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->downloadListenerRegistry:Lbytekn/foundation/collections/SharedMutableMap;

    .line 19
    new-instance v0, Lbytekn/foundation/concurrent/lock/Lock;

    invoke-direct {v0}, Lbytekn/foundation/concurrent/lock/Lock;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$notifyFailed(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->notifyFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static final synthetic access$notifyProgress(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Ljava/lang/String;IJ)V
    .registers 5

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->notifyProgress(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static final synthetic access$notifySuccess(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->notifySuccess(Ljava/lang/String;)V

    return-void
.end method

.method private final executeDownloadTask(Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 8

    .line 30
    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 32
    :try_start_d
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getListener()Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    move-result-object v1

    .line 33
    sget-object v2, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->downloadListenerRegistry:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getDownloadKey()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2b

    const/4 v4, 0x1

    .line 34
    iput-boolean v4, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_4f

    .line 33
    :cond_2b
    :goto_2b
    check-cast v4, Ljava/util/ArrayList;

    .line 37
    iget-boolean v2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_38

    .line 38
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_29

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 41
    :cond_38
    :try_start_38
    new-instance v2, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;

    invoke-direct {v2, v1, p1, p0}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p1, v2}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->setListener(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_29

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    if-nez p2, :cond_4b

    .line 59
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->run()V

    return-void

    .line 61
    :cond_4b
    invoke-virtual {p2, p1}, Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V

    return-void

    .line 8
    :goto_4f
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method static synthetic executeDownloadTask$default(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lcom/ss/ugc/effectplatform/task/TaskManager;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 29
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->executeDownloadTask(Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    return-void
.end method

.method private final notifyFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 76
    sget-object p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 77
    :try_start_5
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->downloadListenerRegistry:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 78
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_28

    .line 8
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    if-eqz p1, :cond_27

    .line 1642
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, p0, :cond_27

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    .line 80
    invoke-interface {v1, p2}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onFail(Ljava/lang/Exception;)V

    goto :goto_19

    :cond_27
    return-void

    :catchall_28
    move-exception p1

    .line 8
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p1
.end method

.method private final notifyProgress(Ljava/lang/String;IJ)V
    .registers 6

    .line 86
    sget-object p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 87
    :try_start_5
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->downloadListenerRegistry:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_16

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_35

    :cond_16
    const/4 p1, 0x0

    .line 88
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_14

    .line 8
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    if-eqz p1, :cond_34

    .line 89
    check-cast p1, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    .line 90
    invoke-interface {p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onProgress(IJ)V

    goto :goto_24

    :cond_34
    return-void

    .line 8
    :goto_35
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p1
.end method

.method private final notifySuccess(Ljava/lang/String;)V
    .registers 4

    .line 66
    sget-object p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 67
    :try_start_5
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->downloadListenerRegistry:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_28

    .line 8
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    if-eqz p1, :cond_27

    .line 1642
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, p0, :cond_27

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    .line 70
    invoke-interface {v1}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onSuccess()V

    goto :goto_19

    :cond_27
    return-void

    :catchall_28
    move-exception p1

    .line 8
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p1
.end method


# virtual methods
.method public final syncExec(Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;)V
    .registers 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 22
    invoke-static {p0, p1, v0, v1, v0}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->executeDownloadTask$default(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lcom/ss/ugc/effectplatform/task/TaskManager;ILjava/lang/Object;)V

    return-void
.end method
