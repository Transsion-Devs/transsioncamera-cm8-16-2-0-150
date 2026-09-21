.class public final Lcom/cutsame/solution/core/NetworkFetcherAdapter;
.super Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;


# instance fields
.field public final a:Lcom/ss/android/ugc/cut_downloader/Downloader;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/cut_downloader/Downloader;)V
    .registers 3

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;-><init>()V

    iput-object p1, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->a:Lcom/ss/android/ugc/cut_downloader/Downloader;

    .line 5
    invoke-virtual {p1, p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->setCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->b:Landroid/os/Handler;

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lcom/cutsame/solution/core/NetworkFetcherAdapter;Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2c

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->a:Lcom/ss/android/ugc/cut_downloader/Downloader;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->download(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 1
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->a:Lcom/ss/android/ugc/cut_downloader/Downloader;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public download(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cutsame/solution/core/NetworkFetcherAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/cutsame/solution/core/NetworkFetcherAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/cutsame/solution/core/NetworkFetcherAdapter;Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_e

    goto :goto_25

    .line 44
    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;

    const/4 v2, -0x1

    const-string v3, "download cancel"

    .line 45
    invoke-interface {v1, v2, v3}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;->notifyError(ILjava/lang/String;)V

    goto :goto_12

    .line 47
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .registers 6

    if-eqz p1, :cond_2b

    if-nez p2, :cond_5

    goto :goto_2b

    .line 1
    :cond_5
    iget-object v0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_10

    goto :goto_26

    .line 51
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;

    const-string v2, "download error"

    .line 52
    invoke-interface {v1, p2, v2}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;->notifyError(ILjava/lang/String;)V

    goto :goto_14

    .line 54
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_22

    .line 1
    :cond_3
    iget-object p0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_e

    goto :goto_22

    .line 37
    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;

    .line 38
    invoke-interface {p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;->notifyProgress(I)V

    goto :goto_12

    :cond_22
    :goto_22
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_a

    const/4 p2, -0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->onError(Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_a
    iget-object v0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    goto :goto_29

    .line 62
    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;

    .line 63
    invoke-interface {v1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;->notifySuccess(Ljava/lang/String;)V

    goto :goto_19

    .line 65
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
