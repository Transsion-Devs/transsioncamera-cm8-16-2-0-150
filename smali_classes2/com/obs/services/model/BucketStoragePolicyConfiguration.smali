.class public Lcom/obs/services/model/BucketStoragePolicyConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method


# virtual methods
.method public getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketStoragePolicyConfiguration [storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
