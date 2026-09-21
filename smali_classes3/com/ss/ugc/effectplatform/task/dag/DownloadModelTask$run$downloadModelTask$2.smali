.class final Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$2;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 20
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$2;->invoke(Ljava/lang/Exception;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$2;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    return-void
.end method
