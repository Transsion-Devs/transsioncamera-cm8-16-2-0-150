.class public Lcom/obs/services/model/BucketDirectColdAccess;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private status:Lcom/obs/services/model/RuleStatusEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/RuleStatusEnum;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/obs/services/model/BucketDirectColdAccess;->status:Lcom/obs/services/model/RuleStatusEnum;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/obs/services/model/RuleStatusEnum;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/obs/services/model/BucketDirectColdAccess;->status:Lcom/obs/services/model/RuleStatusEnum;

    return-object p0
.end method

.method public setStatus(Lcom/obs/services/model/RuleStatusEnum;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/obs/services/model/BucketDirectColdAccess;->status:Lcom/obs/services/model/RuleStatusEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketDirectColdAccess [Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketDirectColdAccess;->status:Lcom/obs/services/model/RuleStatusEnum;

    invoke-virtual {p0}, Lcom/obs/services/model/RuleStatusEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
