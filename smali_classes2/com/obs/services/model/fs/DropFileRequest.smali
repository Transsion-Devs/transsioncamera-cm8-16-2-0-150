.class public Lcom/obs/services/model/fs/DropFileRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/obs/services/model/fs/DropFileRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/obs/services/model/fs/DropFileRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/obs/services/model/fs/DropFileRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropFileRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/fs/DropFileRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
