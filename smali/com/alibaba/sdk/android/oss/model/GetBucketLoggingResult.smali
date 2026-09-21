.class public Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field private mLoggingEnabled:Z

.field private mTargetBucketName:Ljava/lang/String;

.field private mTargetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mLoggingEnabled:Z

    return-void
.end method


# virtual methods
.method public getTargetBucketName()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mTargetBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetPrefix()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mTargetPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public loggingEnabled()Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mLoggingEnabled:Z

    return p0
.end method

.method public setLoggingEnabled(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mLoggingEnabled:Z

    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mTargetBucketName:Ljava/lang/String;

    return-void
.end method

.method public setTargetPrefix(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;->mTargetPrefix:Ljava/lang/String;

    return-void
.end method
