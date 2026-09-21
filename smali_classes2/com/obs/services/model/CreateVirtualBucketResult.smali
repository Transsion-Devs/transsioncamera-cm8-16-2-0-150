.class public Lcom/obs/services/model/CreateVirtualBucketResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private bucketName1:Ljava/lang/String;

.field private bucketName2:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private virtualBucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName1()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->bucketName1:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketName2()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->bucketName2:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getVirtualBucketName()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->virtualBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName1(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->bucketName1:Ljava/lang/String;

    return-void
.end method

.method public setBucketName2(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->bucketName2:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setVirtualBucketName(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketResult;->virtualBucketName:Ljava/lang/String;

    return-void
.end method
