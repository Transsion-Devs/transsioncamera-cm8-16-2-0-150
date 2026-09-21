.class public Lcom/obs/services/model/fs/NewFolderRequest;
.super Lcom/obs/services/model/PutObjectBasicRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method
