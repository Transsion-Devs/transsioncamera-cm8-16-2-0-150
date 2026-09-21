.class public Lcom/obs/services/model/AbstractMultipartRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field protected uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUploadId()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/obs/services/model/AbstractMultipartRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/AbstractMultipartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
