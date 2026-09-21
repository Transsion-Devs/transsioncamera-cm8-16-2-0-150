.class public Lcom/obs/services/model/SseKmsHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Ljava/lang/String;

.field private encryption:Lcom/obs/services/model/ServerEncryption;

.field private kmsKeyId:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/obs/services/model/SSEAlgorithmEnum;->KMS:Lcom/obs/services/model/SSEAlgorithmEnum;

    iput-object v0, p0, Lcom/obs/services/model/SseKmsHeader;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/obs/services/model/SseKmsHeader;->context:Ljava/lang/String;

    return-object p0
.end method

.method public getEncryption()Lcom/obs/services/model/ServerEncryption;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/obs/services/model/SseKmsHeader;->encryption:Lcom/obs/services/model/ServerEncryption;

    return-object p0
.end method

.method public getKmsKeyId()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/obs/services/model/SseKmsHeader;->kmsKeyId:Ljava/lang/String;

    return-object p0
.end method

.method public getProjectId()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/obs/services/model/SseKmsHeader;->projectId:Ljava/lang/String;

    return-object p0
.end method

.method public getSSEAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/obs/services/model/SseKmsHeader;->sseAlgorithm:Lcom/obs/services/model/SSEAlgorithmEnum;

    return-object p0
.end method

.method public setContext(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/obs/services/model/SseKmsHeader;->context:Ljava/lang/String;

    return-void
.end method

.method public setEncryption(Lcom/obs/services/model/ServerEncryption;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/obs/services/model/SseKmsHeader;->encryption:Lcom/obs/services/model/ServerEncryption;

    return-void
.end method

.method public setKmsKeyId(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/obs/services/model/SseKmsHeader;->kmsKeyId:Ljava/lang/String;

    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/SseKmsHeader;->projectId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SseKmsHeader [encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SseKmsHeader;->encryption:Lcom/obs/services/model/ServerEncryption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kmsKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SseKmsHeader;->kmsKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/SseKmsHeader;->context:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
