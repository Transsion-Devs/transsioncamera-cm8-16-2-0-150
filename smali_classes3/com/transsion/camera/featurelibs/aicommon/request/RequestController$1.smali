.class Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->loadRequests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;Ljava/lang/String;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 8

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "loadRequests start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->update(II)V

    .line 73
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->update(II)V

    .line 75
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestHolder(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v4}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->add(Ljava/util/List;)V

    .line 76
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {v3}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmRequestHolder(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$fgetmDbManager(Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;)Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;

    move-result-object p0

    invoke-interface {p0, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;->query(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->add(Ljava/util/List;)V

    .line 78
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadRequests end, cost: "

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

    .line 79
    monitor-exit v0

    return-void

    :catchall_70
    move-exception p0

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw p0
.end method
