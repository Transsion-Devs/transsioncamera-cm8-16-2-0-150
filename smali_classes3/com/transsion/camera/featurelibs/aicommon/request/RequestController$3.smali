.class Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;


# direct methods
.method public static synthetic $r8$lambda$CSGmsOS9XaRbecbH1Xnhip0X9GY(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegUri()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_c
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/FileUtil;->fileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Ljava/lang/String;)V
    .registers 3

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 7

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "refreshRequests start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 141
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object v3

    .line 142
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3$$ExternalSyntheticLambda0;-><init>()V

    .line 143
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 150
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestHolder(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->add(ILjava/util/List;)V

    .line 154
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshRequests end, cost: "

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

    .line 155
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw p0
.end method
