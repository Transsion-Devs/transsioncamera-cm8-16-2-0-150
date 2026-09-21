.class public final Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field private final downloadUrl:Ljava/lang/String;

.field private final pidSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;

.field final synthetic this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;


# direct methods
.method public static synthetic $r8$lambda$3ZefEhpp0pAUASPzcHrXDUzvyXc(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->progress$lambda-8(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$acTNTdFNXOOJGWSHhE330rH8YvU(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error$lambda-5(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    return-void
.end method

.method private static final error$lambda-5(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V
    .registers 7

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pidSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pidCallbackMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;
    invoke-static {p3}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 96
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;
    invoke-static {p3}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_72

    goto :goto_51

    :cond_72
    check-cast v1, Ljava/lang/Iterable;

    .line 200
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    .line 98
    :try_start_84
    invoke-interface {v2, p1, p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_78

    :catch_88
    move-exception v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_78

    :cond_8d
    const/16 p1, 0x68

    if-eq p0, p1, :cond_9f

    .line 105
    iget-object p0, p2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 106
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;
    invoke-static {p3}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getRunningCallback$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object p0

    iget-object p1, p2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    return-void
.end method

.method private static final progress$lambda-8(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V
    .registers 6

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download progress ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p2, p2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    .line 203
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_33
    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 118
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;
    invoke-static {p3}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_54

    goto :goto_33

    :cond_54
    check-cast v0, Ljava/lang/Iterable;

    .line 204
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    .line 120
    :try_start_66
    invoke-interface {v1, p1, p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onProgress(Ljava/lang/String;I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_5a

    :catch_6a
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :cond_6f
    return-void
.end method


# virtual methods
.method public final addListenerPid$cut_downloader_release(I)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->result:Ljava/lang/String;

    if-nez p1, :cond_e

    return-void

    .line 54
    :cond_e
    const-string v0, "download success [Cache] : "

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->success(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 93
    :cond_e
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->mainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getMainThreadHandler$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    new-instance v2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1, p0, v1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final progress(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 115
    :cond_e
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->mainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getMainThreadHandler$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    new-instance v2, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, p0, v1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeListenerPid$cut_downloader_release(I)Z
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final success(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 72
    :cond_13
    const-string v0, "download success : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    .line 195
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 74
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_47

    goto :goto_26

    :cond_47
    check-cast v2, Ljava/lang/Iterable;

    .line 196
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    .line 76
    :try_start_59
    invoke-interface {v3, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4d

    :catch_5d
    move-exception v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4d

    .line 82
    :cond_62
    iget-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->pidSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 84
    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->result:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;
    invoke-static {p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getRunningCallback$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->downloadUrl:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
