.class final Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 20
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;->invoke(Ljava/lang/Exception;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    .line 113
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
