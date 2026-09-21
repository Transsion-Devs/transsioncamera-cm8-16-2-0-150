.class public Lcom/obs/services/model/PutObjectRequest;
.super Lcom/obs/services/model/PutObjectBasicRequest;
.source "SourceFile"


# instance fields
.field private autoClose:Z

.field private callback:Lcom/obs/services/model/Callback;

.field protected expires:I

.field protected file:Ljava/io/File;

.field protected input:Ljava/io/InputStream;

.field protected metadata:Lcom/obs/services/model/ObjectMetadata;

.field protected offset:J

.field private progressInterval:J

.field private progressListener:Lcom/obs/services/model/ProgressListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/PutObjectBasicRequest;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    if-eqz p1, :cond_41

    .line 53
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->acl:Lcom/obs/services/model/AccessControlList;

    .line 56
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->extensionPermissionMap:Ljava/util/Map;

    .line 57
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    .line 58
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    .line 59
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->successRedirectLocation:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    :cond_41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    .line 73
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    .line 88
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6

    .line 103
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    .line 104
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/Callback;
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/obs/services/model/PutObjectRequest;->callback:Lcom/obs/services/model/Callback;

    return-object p0
.end method

.method public getExpires()I
    .registers 1

    .line 202
    iget p0, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    return p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    return-object p0
.end method

.method public getInput()Ljava/io/InputStream;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    return-object p0
.end method

.method public getMetadata()Lcom/obs/services/model/ObjectMetadata;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/obs/services/model/PutObjectRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public getOffset()J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->offset:J

    return-wide v0
.end method

.method public getProgressInterval()J
    .registers 3

    .line 265
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/obs/services/model/ProgressListener;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/obs/services/model/PutObjectRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-object p0
.end method

.method public isAutoClose()Z
    .registers 1

    .line 224
    iget-boolean p0, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    return p0
.end method

.method public setAutoClose(Z)V
    .registers 2

    .line 236
    iput-boolean p1, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    return-void
.end method

.method public setCallback(Lcom/obs/services/model/Callback;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->callback:Lcom/obs/services/model/Callback;

    return-void
.end method

.method public setExpires(I)V
    .registers 2

    .line 213
    iput p1, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setMetadata(Lcom/obs/services/model/ObjectMetadata;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    return-void
.end method

.method public setOffset(J)V
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/obs/services/model/PutObjectRequest;->offset:J

    return-void
.end method

.method public setProgressInterval(J)V
    .registers 3

    .line 276
    iput-wide p1, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    return-void
.end method

.method public setProgressListener(Lcom/obs/services/model/ProgressListener;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/obs/services/model/PutObjectRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutObjectRequest [file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectRequest;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectRequest;->input:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/PutObjectRequest;->expires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PutObjectRequest;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", autoClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/PutObjectRequest;->autoClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", progressListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PutObjectRequest;->progressInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getObjectKey()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getSseKmsHeader()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getSseCHeader()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getAcl()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getSuccessRedirectLocation()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getAllGrantPermissions()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getAllGrantPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getExtensionPermissionMap()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
