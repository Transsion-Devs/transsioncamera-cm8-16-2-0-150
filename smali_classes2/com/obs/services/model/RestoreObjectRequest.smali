.class public Lcom/obs/services/model/RestoreObjectRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    }
.end annotation


# static fields
.field public static final BULK:Ljava/lang/String; = "Bulk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXPEDITED:Ljava/lang/String; = "Expedited"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD:Ljava/lang/String; = "Standard"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private days:I

.field private tier:Lcom/obs/services/model/RestoreTierEnum;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 120
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 121
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 123
    iput p3, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 138
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 139
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/obs/services/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    .line 142
    iput p4, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/obs/services/model/RestoreTierEnum;)V
    .registers 7

    .line 182
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 183
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/obs/services/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    .line 186
    iput p4, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    .line 187
    iput-object p5, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 161
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/obs/services/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    .line 164
    iput p4, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    .line 165
    invoke-static {p5}, Lcom/obs/services/model/RestoreTierEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/RestoreTierEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-void
.end method


# virtual methods
.method public getDays()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    return p0
.end method

.method public getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-object p0
.end method

.method public getTier()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/RestoreTierEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setDays(I)V
    .registers 2

    .line 208
    iput p1, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    return-void
.end method

.method public setRestoreTier(Lcom/obs/services/model/RestoreTierEnum;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-void
.end method

.method public setTier(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-static {p1}, Lcom/obs/services/model/RestoreTierEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/RestoreTierEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreObjectRequest [days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/RestoreObjectRequest;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/RestoreObjectRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getObjectKey()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getVersionId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/RestoreObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
