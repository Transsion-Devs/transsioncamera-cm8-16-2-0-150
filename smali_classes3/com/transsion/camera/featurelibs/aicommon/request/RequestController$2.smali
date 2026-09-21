.class Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;


# direct methods
.method public static synthetic $r8$lambda$3S5ygUEjfr3bdH5MYLaBAAbWaa4(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->lambda$doProcess$3(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8eN_t4RtaqdntXpDf0liSR4Ncts(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V
    .registers 2

    .line 98
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->replaceToReloadedRequest(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$efkMOq9mJI31IfzoCJMeJ2zCdGM(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegUri()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_c
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/FileUtil;->fileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s-4oju9DBsI4CpKkfy7JzT2RIv0(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V
    .registers 2

    .line 104
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;->replaceToReloadedRequest(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xIjYxFX4tIxiUTK2miWrq6ummy8(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->lambda$doProcess$1(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Ljava/lang/String;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doProcess$1(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestHolder(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->findRequest(J)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->setProgress(I)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestCallMap(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 98
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$doProcess$3(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestCallMap(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 104
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 8

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    monitor-enter v0

    .line 89
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "reloadRequests start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 92
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object v3

    .line 93
    new-instance v4, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 101
    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v4}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object v4

    .line 102
    new-instance v5, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    iget-object v5, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v5}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object v5

    .line 108
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda2;-><init>()V

    .line 109
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 116
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestHolder(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->addAll(Ljava/util/List;)V

    .line 127
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadRequests end, cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_a1

    throw p0
.end method
