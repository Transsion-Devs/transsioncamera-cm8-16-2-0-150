.class public Lcom/obs/services/model/RestoreObjectsRequest;
.super Lcom/obs/services/model/AbstractBulkRequest;
.source "SourceFile"


# instance fields
.field private callback:Lcom/obs/services/model/TaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;"
        }
    .end annotation
.end field

.field private days:I

.field private encodingType:Ljava/lang/String;

.field private keyAndVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/KeyAndVersion;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private tier:Lcom/obs/services/model/RestoreTierEnum;

.field private versionRestored:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/obs/services/model/RestoreTierEnum;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/obs/services/model/RestoreObjectsRequest;->days:I

    .line 67
    iput-object p3, p0, Lcom/obs/services/model/RestoreObjectsRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/obs/services/model/RestoreTierEnum;Ljava/lang/String;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/obs/services/model/RestoreObjectsRequest;->days:I

    .line 85
    iput-object p3, p0, Lcom/obs/services/model/RestoreObjectsRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    .line 86
    iput-object p4, p0, Lcom/obs/services/model/RestoreObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addKeyAndVersion(Ljava/lang/String;)Lcom/obs/services/model/KeyAndVersion;
    .registers 3

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/model/RestoreObjectsRequest;->addKeyAndVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/KeyAndVersion;

    move-result-object p0

    return-object p0
.end method

.method public addKeyAndVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/KeyAndVersion;
    .registers 4

    .line 198
    new-instance v0, Lcom/obs/services/model/KeyAndVersion;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/KeyAndVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/obs/services/model/RestoreObjectsRequest;->getKeyAndVersions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCallback()Lcom/obs/services/model/TaskCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->callback:Lcom/obs/services/model/TaskCallback;

    return-object p0
.end method

.method public getDays()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->days:I

    return p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyAndVersions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/KeyAndVersion;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->keyAndVersions:Ljava/util/List;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-object p0
.end method

.method public isVersionRestored()Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->versionRestored:Z

    return p0
.end method

.method public setCallback(Lcom/obs/services/model/TaskCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public setDays(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->days:I

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyAndVersions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/KeyAndVersion;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->keyAndVersions:Ljava/util/List;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setRestoreTier(Lcom/obs/services/model/RestoreTierEnum;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    return-void
.end method

.method public setVersionRestored(Z)V
    .registers 2

    .line 166
    iput-boolean p1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->versionRestored:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreObjectsRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/RestoreObjectsRequest;->tier:Lcom/obs/services/model/RestoreTierEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectsRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
