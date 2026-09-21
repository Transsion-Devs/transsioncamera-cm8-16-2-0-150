.class public final Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    .line 40
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->getOnFail()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_18
    return-void
.end method

.method public onProgress(IJ)V
    .registers 4

    .line 30
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->getOnProgress()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_16
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksSuccess()V

    .line 35
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->getOnSuccess()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_13
    return-void
.end method
