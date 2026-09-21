.class public final Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->onProgress(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $contentLength:J

.field final synthetic $progress:I

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;IJ)V
    .registers 5

    .line 72
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;->this$0:Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;->$progress:I

    iput-wide p3, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;->$contentLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;->this$0:Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;

    # getter for: Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->onProgressCallback:Lkotlin/jvm/functions/Function2;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->access$getOnProgressCallback$p(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;->$progress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;->$contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_1a
    return-void
.end method
