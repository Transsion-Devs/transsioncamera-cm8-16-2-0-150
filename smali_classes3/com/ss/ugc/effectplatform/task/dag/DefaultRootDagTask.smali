.class Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;
.super Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.source "SourceFile"


# instance fields
.field private final id:Ljava/lang/String;

.field private taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 2

    .line 147
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    .line 148
    const-string p1, ""

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 150
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksSuccess()V

    return-void
.end method

.method public setTaskManager(Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    return-void
.end method
