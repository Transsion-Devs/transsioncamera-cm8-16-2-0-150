.class public Lcom/obs/services/model/PutObjectInTwoBucketRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backupBucketRequest:Lcom/obs/services/model/PutObjectRequest;

.field private filePath:Ljava/lang/String;

.field private mainBucketRequest:Lcom/obs/services/model/PutObjectRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->backupBucketRequest:Lcom/obs/services/model/PutObjectRequest;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->mainBucketRequest:Lcom/obs/services/model/PutObjectRequest;

    return-object p0
.end method

.method public setBackupBucketRequest(Lcom/obs/services/model/PutObjectRequest;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->backupBucketRequest:Lcom/obs/services/model/PutObjectRequest;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setMainBucketRequest(Lcom/obs/services/model/PutObjectRequest;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->mainBucketRequest:Lcom/obs/services/model/PutObjectRequest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutObjectInTwoBucketRequest{mainBucketRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->mainBucketRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backupBucketRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->backupBucketRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
