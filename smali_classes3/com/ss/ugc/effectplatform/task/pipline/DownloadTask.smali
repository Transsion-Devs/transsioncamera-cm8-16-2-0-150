.class public abstract Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/ITask;


# instance fields
.field private final downloadKey:Ljava/lang/String;

.field private listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 4

    const-string v0, "downloadKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->downloadKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    return-void
.end method


# virtual methods
.method protected abstract executeDownload(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
.end method

.method public final getDownloadKey()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->downloadKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getListener()Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    return-object p0
.end method

.method public run()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->executeDownload(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    return-void
.end method

.method protected final runOnMainThread(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lbytekn/foundation/utils/Transmitter;->INSTANCE:Lbytekn/foundation/utils/Transmitter;

    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask$runOnMainThread$1;

    invoke-direct {v0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask$runOnMainThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lbytekn/foundation/utils/Transmitter;->transmitToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setListener(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    return-void
.end method
