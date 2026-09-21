.class public final Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$fetchModelListInfoTask$1;
.super Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$fetchModelListInfoTask$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 73
    const-string p0, ""

    return-object p0
.end method

.method public run()V
    .registers 4

    .line 76
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$fetchModelListInfoTask$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->getEffectConfig()Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance(Lcom/ss/ugc/effectplatform/EffectConfig;)Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$fetchModelListInfoTask$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->getBusinessId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    .line 77
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksSuccess()V

    return-void
.end method
