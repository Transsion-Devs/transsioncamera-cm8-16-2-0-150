.class final Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->onFail(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;->$e:Ljava/lang/Exception;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->getListener()Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;->$e:Ljava/lang/Exception;

    invoke-interface {v0, p0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;->onFail(Ljava/lang/Exception;)V

    return-void
.end method
