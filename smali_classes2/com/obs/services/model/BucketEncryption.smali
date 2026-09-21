.class public Lcom/obs/services/model/BucketEncryption;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private kmsKeyId:Ljava/lang/String;

.field private sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/SSEAlgorithmEnum;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/BucketEncryption;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-void
.end method


# virtual methods
.method public getKmsKeyId()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/obs/services/model/BucketEncryption;->kmsKeyId:Ljava/lang/String;

    return-object p0
.end method

.method public getSseAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/obs/services/model/BucketEncryption;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-object p0
.end method

.method public setKmsKeyId(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/obs/services/model/BucketEncryption;->kmsKeyId:Ljava/lang/String;

    return-void
.end method

.method public setSseAlgorithm(Lcom/obs/services/model/SSEAlgorithmEnum;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/obs/services/model/BucketEncryption;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketEncryption [sseAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketEncryption;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kmsKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketEncryption;->kmsKeyId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
