.class public Lcom/obs/services/model/fs/DropFolderRequest;
.super Lcom/obs/services/model/AbstractBulkRequest;
.source "SourceFile"


# instance fields
.field private callback:Lcom/obs/services/model/TaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encodingType:Ljava/lang/String;

.field private folderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/obs/services/model/fs/DropFolderRequest;->folderName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/obs/services/model/fs/DropFolderRequest;->folderName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/obs/services/model/fs/DropFolderRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/TaskCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/obs/services/model/fs/DropFolderRequest;->callback:Lcom/obs/services/model/TaskCallback;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/obs/services/model/fs/DropFolderRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderName()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/obs/services/model/fs/DropFolderRequest;->folderName:Ljava/lang/String;

    return-object p0
.end method

.method public setCallback(Lcom/obs/services/model/TaskCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/obs/services/model/fs/DropFolderRequest;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/obs/services/model/fs/DropFolderRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/obs/services/model/fs/DropFolderRequest;->folderName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropFolderRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", folderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/DropFolderRequest;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/fs/DropFolderRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
