.class public final Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->executeDownloadTask(Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lcom/ss/ugc/effectplatform/task/TaskManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

.field final synthetic $newTask$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $task$inlined:Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$task$inlined:Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$newTask$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onFail(Ljava/lang/Exception;)V

    .line 54
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$task$inlined:Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getDownloadKey()Ljava/lang/String;

    move-result-object p0

    # invokes: Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->notifyFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->access$notifyFailed(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onProgress(IJ)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onProgress(IJ)V

    .line 44
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$task$inlined:Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getDownloadKey()Ljava/lang/String;

    move-result-object p0

    # invokes: Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->notifyProgress(Ljava/lang/String;IJ)V
    invoke-static {v0, p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->access$notifyProgress(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Ljava/lang/String;IJ)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-interface {v0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onSuccess()V

    .line 49
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager$executeDownloadTask$$inlined$synchronized$lambda$1;->$task$inlined:Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getDownloadKey()Ljava/lang/String;

    move-result-object p0

    # invokes: Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->notifySuccess(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->access$notifySuccess(Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;Ljava/lang/String;)V

    return-void
.end method
