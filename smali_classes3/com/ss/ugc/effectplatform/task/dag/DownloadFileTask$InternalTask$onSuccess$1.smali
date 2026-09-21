.class final Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onSuccess$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getListener()Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onSuccess()V

    return-void
.end method
