.class public final Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;
.super Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/cut_downloader/Downloader;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/cut_downloader/Downloader;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    .line 51
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1f

    .line 71
    :cond_3
    const-string v0, "download cancel : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getRunningMap$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getCallback$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-nez p0, :cond_20

    :goto_1f
    return-void

    :cond_20
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_4a

    if-nez p2, :cond_5

    goto :goto_4a

    .line 62
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getRunningMap$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

    if-nez v0, :cond_32

    goto :goto_35

    :cond_32
    invoke-virtual {v0, p2}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->setErrorCode(I)V

    .line 64
    :goto_35
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getCallback$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-interface {v0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V

    .line 66
    :goto_41
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getRunningMap$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_29

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download onProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getCallback$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-nez p0, :cond_2a

    :goto_29
    return-void

    :cond_2a
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_2e

    if-nez p2, :cond_5

    goto :goto_2e

    .line 55
    :cond_5
    const-string v0, "download success : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getRunningMap$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

    if-nez v0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {v0, p2}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->setFilePath(Ljava/lang/String;)V

    .line 57
    :goto_22
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;->this$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    # getter for: Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->access$getCallback$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method
