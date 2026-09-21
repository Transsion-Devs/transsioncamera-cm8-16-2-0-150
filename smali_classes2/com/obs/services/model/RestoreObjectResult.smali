.class public Lcom/obs/services/model/RestoreObjectResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/obs/services/model/RestoreObjectResult;->bucketName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/obs/services/model/RestoreObjectResult;->objectKey:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/obs/services/model/RestoreObjectResult;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/obs/services/model/RestoreObjectResult;->versionId:Ljava/lang/String;

    return-object p0
.end method
