.class public Lcom/obs/services/model/fs/GetBucketFSStatusRequest;
.super Lcom/obs/services/model/BucketMetadataInfoRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/obs/services/model/BucketMetadataInfoRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/BucketMetadataInfoRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method
