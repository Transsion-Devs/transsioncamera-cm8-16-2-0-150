.class public Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
.super Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;
    }
.end annotation


# instance fields
.field private deleteUploadOnCancelling:Ljava/lang/Boolean;

.field private exceptionTerminationMode:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

.field private recordDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V
    .registers 6

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    .line 36
    sget-object p1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;->ALL:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->exceptionTerminationMode:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

    .line 133
    invoke-virtual {p0, p5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setRecordDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V
    .registers 6

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    .line 36
    sget-object p1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;->ALL:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->exceptionTerminationMode:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

    .line 84
    invoke-virtual {p0, p5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setRecordDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteUploadOnCancelling()Ljava/lang/Boolean;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getExceptionTerminationMode()Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->exceptionTerminationMode:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

    return-object p0
.end method

.method public getRecordDirectory()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->recordDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public setDeleteUploadOnCancelling(Ljava/lang/Boolean;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    return-void
.end method

.method public setExceptionTerminationMode(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->exceptionTerminationMode:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest$ExceptionTerminationMode;

    return-void
.end method

.method public setRecordDirectory(Ljava/lang/String;)V
    .registers 4

    .line 146
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    .line 149
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Record directory must exist, and it should be a directory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_20
    :goto_20
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->recordDirectory:Ljava/lang/String;

    return-void
.end method
