.class Lcom/obs/services/AbstractBatchClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBatchClient;->createNewProgressListener(Ljava/lang/String;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;)Lcom/obs/services/model/ProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBatchClient;

.field final synthetic val$listener:Lcom/obs/services/model/UploadObjectsProgressListener;

.field final synthetic val$objectKey:Ljava/lang/String;

.field final synthetic val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBatchClient;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Ljava/lang/String;Lcom/obs/services/model/UploadObjectsProgressListener;)V
    .registers 5

    .line 390
    iput-object p1, p0, Lcom/obs/services/AbstractBatchClient$1;->this$0:Lcom/obs/services/AbstractBatchClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBatchClient$1;->val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    iput-object p3, p0, Lcom/obs/services/AbstractBatchClient$1;->val$objectKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/obs/services/AbstractBatchClient$1;->val$listener:Lcom/obs/services/model/UploadObjectsProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/obs/services/model/ProgressStatus;)V
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/obs/services/AbstractBatchClient$1;->val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    iget-object v1, p0, Lcom/obs/services/AbstractBatchClient$1;->val$objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->putTaskTable(Ljava/lang/String;Lcom/obs/services/model/ProgressStatus;)V

    .line 394
    iget-object p1, p0, Lcom/obs/services/AbstractBatchClient$1;->val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    invoke-virtual {p1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->isRefreshprogress()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 395
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 396
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/obs/services/AbstractBatchClient$1;->val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    invoke-virtual {p1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 397
    iget-object p1, p0, Lcom/obs/services/AbstractBatchClient$1;->val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    invoke-virtual {p1, v0, v1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->setTotalMilliseconds(J)V

    .line 398
    iget-object p1, p0, Lcom/obs/services/AbstractBatchClient$1;->val$listener:Lcom/obs/services/model/UploadObjectsProgressListener;

    iget-object p0, p0, Lcom/obs/services/AbstractBatchClient$1;->val$progressStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    invoke-interface {p1, p0}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    :cond_2f
    return-void
.end method
