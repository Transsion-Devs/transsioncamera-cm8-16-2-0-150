.class public Lcom/obs/services/model/PutObjectsRequest;
.super Lcom/obs/services/model/AbstractBulkRequest;
.source "SourceFile"


# instance fields
.field private acl:Lcom/obs/services/model/AccessControlList;

.field private bigfileThreshold:J

.field private callback:Lcom/obs/services/model/TaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;"
        }
    .end annotation
.end field

.field private detailProgressInterval:J

.field private extensionPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private filePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private folderPath:Ljava/lang/String;

.field private listener:Lcom/obs/services/model/UploadObjectsProgressListener;

.field private partSize:J

.field private prefix:Ljava/lang/String;

.field private sseCHeader:Lcom/obs/services/model/SseCHeader;

.field private sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

.field private successRedirectLocation:Ljava/lang/String;

.field private taskNum:I

.field private taskProgressInterval:J


# direct methods
.method public static synthetic $r8$lambda$nVDlPOogCbZqG28-Auwu6FDXoB8(Lcom/obs/services/model/ExtensionObjectPermissionEnum;)Ljava/util/Set;
    .registers 1

    .line 375
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    const-wide/32 v0, 0x500000

    .line 41
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->partSize:J

    const-wide/32 v0, 0x6400000

    .line 45
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->bigfileThreshold:J

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskNum:I

    const-wide/32 v0, 0x7d000

    .line 53
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskProgressInterval:J

    const-wide/32 v0, 0x19000

    .line 57
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->detailProgressInterval:J

    .line 78
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/obs/services/model/PutObjectsRequest;->folderPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/obs/services/model/AbstractBulkRequest;-><init>()V

    const-wide/32 v0, 0x500000

    .line 41
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->partSize:J

    const-wide/32 v0, 0x6400000

    .line 45
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->bigfileThreshold:J

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskNum:I

    const-wide/32 v0, 0x7d000

    .line 53
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskProgressInterval:J

    const-wide/32 v0, 0x19000

    .line 57
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->detailProgressInterval:J

    .line 91
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/obs/services/model/PutObjectsRequest;->filePaths:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getAllGrantPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getBigfileThreshold()J
    .registers 3

    .line 158
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->bigfileThreshold:J

    return-wide v0
.end method

.method public getCallback()Lcom/obs/services/model/TaskCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->callback:Lcom/obs/services/model/TaskCallback;

    return-object p0
.end method

.method public getDetailProgressInterval()J
    .registers 3

    .line 273
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->detailProgressInterval:J

    return-wide v0
.end method

.method public getDomainIdsByGrantPermission(Lcom/obs/services/model/ExtensionObjectPermissionEnum;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_11

    .line 434
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :cond_11
    return-object p0
.end method

.method public getExtensionPermissionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/obs/services/model/PutObjectsRequest;->extensionPermissionMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/PutObjectsRequest;->extensionPermissionMap:Ljava/util/Map;

    .line 470
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->extensionPermissionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getFilePaths()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->filePaths:Ljava/util/List;

    return-object p0
.end method

.method public getFolderPath()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->folderPath:Ljava/lang/String;

    return-object p0
.end method

.method public getGrantPermissionsByDomainId(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 448
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    .line 451
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 450
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 453
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3b
    return-object v0
.end method

.method public getPartSize()J
    .registers 3

    .line 139
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->partSize:J

    return-wide v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getSseCHeader()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    return-object p0
.end method

.method public getSuccessRedirectLocation()Ljava/lang/String;
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->successRedirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskNum()I
    .registers 1

    .line 183
    iget p0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskNum:I

    return p0
.end method

.method public getTaskProgressInterval()J
    .registers 3

    .line 253
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskProgressInterval:J

    return-wide v0
.end method

.method public getUploadObjectsProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/obs/services/model/PutObjectsRequest;->listener:Lcom/obs/services/model/UploadObjectsProgressListener;

    return-object p0
.end method

.method public grantExtensionPermission(Ljava/lang/String;Lcom/obs/services/model/ExtensionObjectPermissionEnum;)V
    .registers 4

    if-eqz p2, :cond_1f

    .line 372
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1f

    .line 375
    :cond_9
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/obs/services/model/PutObjectsRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/obs/services/model/PutObjectsRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setAcl(Lcom/obs/services/model/AccessControlList;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public setBigfileThreshold(J)V
    .registers 6

    const-wide/32 v0, 0x19000

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    .line 169
    iput-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->bigfileThreshold:J

    return-void

    :cond_a
    const-wide v0, 0x140000000L

    .line 171
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/obs/services/model/PutObjectsRequest;->bigfileThreshold:J

    return-void
.end method

.method public setCallback(Lcom/obs/services/model/TaskCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public setDetailProgressInterval(J)V
    .registers 3

    .line 284
    iput-wide p1, p0, Lcom/obs/services/model/PutObjectsRequest;->detailProgressInterval:J

    return-void
.end method

.method public setExtensionPermissionMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 484
    :cond_3
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->extensionPermissionMap:Ljava/util/Map;

    return-void
.end method

.method public setPartSize(J)V
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/obs/services/model/PutObjectsRequest;->partSize:J

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 220
    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 221
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->prefix:Ljava/lang/String;

    return-void

    .line 223
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setSseCHeader(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setSseKmsHeader(Lcom/obs/services/model/SseKmsHeader;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    return-void
.end method

.method public setSuccessRedirectLocation(Ljava/lang/String;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->successRedirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setTaskNum(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 196
    iput v0, p0, Lcom/obs/services/model/PutObjectsRequest;->taskNum:I

    return-void

    :cond_6
    const/16 v0, 0x3e8

    .line 198
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/obs/services/model/PutObjectsRequest;->taskNum:I

    return-void
.end method

.method public setTaskProgressInterval(J)V
    .registers 5

    .line 263
    iget-wide v0, p0, Lcom/obs/services/model/PutObjectsRequest;->detailProgressInterval:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/obs/services/model/PutObjectsRequest;->taskProgressInterval:J

    return-void
.end method

.method public setUploadObjectsProgressListener(Lcom/obs/services/model/UploadObjectsProgressListener;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/obs/services/model/PutObjectsRequest;->listener:Lcom/obs/services/model/UploadObjectsProgressListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutObjectsRequest [folderPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->folderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->filePaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->callback:Lcom/obs/services/model/TaskCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", partSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PutObjectsRequest;->partSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bigfileThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PutObjectsRequest;->bigfileThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/PutObjectsRequest;->taskNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->listener:Lcom/obs/services/model/UploadObjectsProgressListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskProgressInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PutObjectsRequest;->taskProgressInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", detailProgressInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PutObjectsRequest;->detailProgressInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", extensionPermissionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->extensionPermissionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectsRequest;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withdrawExtensionPermission(Ljava/lang/String;Lcom/obs/services/model/ExtensionObjectPermissionEnum;)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 388
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 391
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1c

    .line 394
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public withdrawExtensionPermissions(Ljava/lang/String;)V
    .registers 5

    .line 405
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 406
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    .line 407
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 406
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_38
    return-void
.end method
