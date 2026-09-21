.class Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->clearTempFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;Ljava/lang/String;)V
    .registers 3

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearTempFiles execute start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->-$$Nest$fgetmClearLock(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_10
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    const-string v2, ".videorecorder"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->-$$Nest$fputmTempCleared(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;Z)V

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->-$$Nest$fgetmClearLock(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_31

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;->this$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clearTempFiles execute end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_31
    move-exception p0

    .line 111
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method
