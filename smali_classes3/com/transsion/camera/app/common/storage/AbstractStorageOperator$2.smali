.class Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->renameLivePhotoVideoInfoFile(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$copyLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$dstCamFileName:Ljava/lang/String;

.field final synthetic val$dstGyroFileName:Ljava/lang/String;

.field final synthetic val$sourceCamFilePath:Ljava/lang/String;

.field final synthetic val$sourceGyroFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 8

    .line 430
    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$sourceCamFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$dstCamFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$sourceGyroFilePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$dstGyroFileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$copyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$sourceCamFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$dstCamFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$sourceGyroFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$dstGyroFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_14

    if-nez v1, :cond_28

    .line 438
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$dstCamFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 439
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$dstGyroFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_30

    .line 442
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$copyLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_2f

    .line 443
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;->val$copyLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_38

    .line 443
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 445
    :cond_38
    throw v0
.end method
