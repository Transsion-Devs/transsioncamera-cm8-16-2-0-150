.class public Lcom/obs/services/model/PutObjectInTwoBucketResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backupBucketException:Lcom/obs/services/exception/ObsException;

.field private backupBucketResult:Lcom/obs/services/model/PutObjectResult;

.field private mainBucketException:Lcom/obs/services/exception/ObsException;

.field private mainBucketResult:Lcom/obs/services/model/PutObjectResult;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupBucketException()Lcom/obs/services/exception/ObsException;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->backupBucketException:Lcom/obs/services/exception/ObsException;

    return-object p0
.end method

.method public getBackupBucketResult()Lcom/obs/services/model/PutObjectResult;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->backupBucketResult:Lcom/obs/services/model/PutObjectResult;

    return-object p0
.end method

.method public getMainBucketException()Lcom/obs/services/exception/ObsException;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->mainBucketException:Lcom/obs/services/exception/ObsException;

    return-object p0
.end method

.method public getMainBucketResult()Lcom/obs/services/model/PutObjectResult;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->mainBucketResult:Lcom/obs/services/model/PutObjectResult;

    return-object p0
.end method

.method public setBackupBucketException(Lcom/obs/services/exception/ObsException;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->backupBucketException:Lcom/obs/services/exception/ObsException;

    return-void
.end method

.method public setBackupBucketResult(Lcom/obs/services/model/PutObjectResult;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->backupBucketResult:Lcom/obs/services/model/PutObjectResult;

    return-void
.end method

.method public setMainBucketException(Lcom/obs/services/exception/ObsException;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->mainBucketException:Lcom/obs/services/exception/ObsException;

    return-void
.end method

.method public setMainBucketResult(Lcom/obs/services/model/PutObjectResult;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;->mainBucketResult:Lcom/obs/services/model/PutObjectResult;

    return-void
.end method
