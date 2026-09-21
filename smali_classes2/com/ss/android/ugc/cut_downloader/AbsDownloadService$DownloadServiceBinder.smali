.class final Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;
.super Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;


# direct methods
.method public static synthetic $r8$lambda$YbF6F_BWesxXLRczH_Puidj_Eyc(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->download$lambda-3(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hsRzK2KfbdgsPWSPjp-rhuCrZw8(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->registerCallback$lambda-1(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;-><init>()V

    return-void
.end method

.method private static final download$lambda-3(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getRunningCallback$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    if-eqz v0, :cond_19

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->addListenerPid$cut_downloader_release(I)V

    return-void

    .line 157
    :cond_19
    new-instance v0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;-><init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Ljava/lang/String;)V

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getRunningCallback$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->addListenerPid$cut_downloader_release(I)V

    .line 160
    const-string v1, "download start : "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cutui.DownloadService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->download(Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;)V

    return-void
.end method

.method private static final registerCallback$lambda-1(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2d

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 170
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getRunningCallback$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    .line 171
    const-string v0, "download cancel : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->cancel(Ljava/lang/String;)V

    return-void

    .line 168
    :cond_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "cancel url null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public download(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 152
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->mainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getMainThreadHandler$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    new-instance v1, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda1;-><init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 150
    :cond_13
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "download url null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 137
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->mainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->access$getMainThreadHandler$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->this$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    new-instance v1, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 135
    :cond_13
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "callback null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
