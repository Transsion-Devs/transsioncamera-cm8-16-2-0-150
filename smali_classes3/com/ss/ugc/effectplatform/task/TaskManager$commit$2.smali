.class public final Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $task:Lbytekn/foundation/task/ITask;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/TaskManager;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/TaskManager;Lbytekn/foundation/task/ITask;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->this$0:Lcom/ss/ugc/effectplatform/task/TaskManager;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->$task:Lbytekn/foundation/task/ITask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->this$0:Lcom/ss/ugc/effectplatform/task/TaskManager;

    # getter for: Lcom/ss/ugc/effectplatform/task/TaskManager;->executingTask:Lbytekn/foundation/collections/SharedMutableMap;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/TaskManager;->access$getExecutingTask$p(Lcom/ss/ugc/effectplatform/task/TaskManager;)Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->$task:Lbytekn/foundation/task/ITask;

    invoke-interface {v1}, Lbytekn/foundation/task/ITask;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->$task:Lbytekn/foundation/task/ITask;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->$task:Lbytekn/foundation/task/ITask;

    invoke-interface {v0}, Lbytekn/foundation/task/ITask;->run()V

    .line 36
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->this$0:Lcom/ss/ugc/effectplatform/task/TaskManager;

    # getter for: Lcom/ss/ugc/effectplatform/task/TaskManager;->executingTask:Lbytekn/foundation/collections/SharedMutableMap;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/TaskManager;->access$getExecutingTask$p(Lcom/ss/ugc/effectplatform/task/TaskManager;)Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;->$task:Lbytekn/foundation/task/ITask;

    invoke-interface {p0}, Lbytekn/foundation/task/ITask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
