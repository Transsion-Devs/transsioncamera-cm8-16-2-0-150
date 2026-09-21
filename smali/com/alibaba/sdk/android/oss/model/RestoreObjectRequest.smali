.class public Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method
