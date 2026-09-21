.class public abstract Lcom/obs/services/AbstractBatchClient;
.super Lcom/obs/services/AbstractFileClient;
.source "SourceFile"


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/obs/services/AbstractBatchClient;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/obs/services/AbstractFileClient;-><init>()V

    return-void
.end method

.method private checkRestoreObjectsRequest(Lcom/obs/services/model/RestoreObjectsRequest;)V
    .registers 3

    .line 186
    const-string v0, "RestoreObjectsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result p0

    if-nez p0, :cond_14

    .line 188
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bucketName is null"

    invoke-static {p0, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_14
    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getKeyAndVersions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_29

    .line 192
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Prefix and keyandVersions cannot coexist in the same request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_29
    :goto_29
    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getDays()I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_35

    const/16 p1, 0x1e

    if-gt p0, p1, :cond_35

    return-void

    .line 197
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Restoration days should be at least 1 and at most 30"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNewProgressListener(Ljava/lang/String;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;)Lcom/obs/services/model/ProgressListener;
    .registers 5

    .line 390
    new-instance v0, Lcom/obs/services/AbstractBatchClient$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/obs/services/AbstractBatchClient$1;-><init>(Lcom/obs/services/AbstractBatchClient;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Ljava/lang/String;Lcom/obs/services/model/UploadObjectsProgressListener;)V

    return-object v0
.end method

.method private restoreCurrentObject(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/RestoreObjectsRequest;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "I)I"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/obs/services/model/ListObjectsRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/obs/services/model/ListObjectsRequest;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ListObjectsRequest;->setEncodingType(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1f
    move-object/from16 v2, p0

    .line 127
    invoke-virtual {v2, v0}, Lcom/obs/services/AbstractObjectClient;->listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object v11

    .line 128
    invoke-virtual {v11}, Lcom/obs/services/model/ObjectListing;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/obs/services/model/ObsObject;

    .line 129
    invoke-virtual {v3}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/ObjectMetadata;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v4

    sget-object v5, Lcom/obs/services/model/StorageClassEnum;->COLD:Lcom/obs/services/model/StorageClassEnum;

    if-ne v4, v5, :cond_6f

    add-int/lit8 v9, v1, 0x1

    .line 131
    new-instance v10, Lcom/obs/services/model/RestoreObjectRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v14

    .line 132
    invoke-virtual {v3}, Lcom/obs/services/model/ObsObject;->getObjectKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getDays()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v18

    const/16 v16, 0x0

    move-object v13, v10

    invoke-direct/range {v13 .. v18}, Lcom/obs/services/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/obs/services/model/RestoreTierEnum;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 133
    invoke-direct/range {v2 .. v10}, Lcom/obs/services/AbstractBatchClient;->submitRestoreTask(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;IILcom/obs/services/model/RestoreObjectRequest;)V

    move v1, v9

    :cond_6f
    move-object/from16 v2, p0

    goto :goto_2d

    .line 137
    :cond_72
    invoke-virtual {v11}, Lcom/obs/services/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v11}, Lcom/obs/services/model/ObjectListing;->isTruncated()Z

    move-result v2

    if-nez v2, :cond_1f

    return v1
.end method

.method private restoreVersions(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)I
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/RestoreObjectsRequest;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "I)I"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/obs/services/model/ListVersionsRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/obs/services/model/ListVersionsRequest;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ListVersionsRequest;->setEncodingType(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ListVersionsRequest;->setPrefix(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :cond_20
    move-object/from16 v2, p0

    .line 169
    invoke-virtual {v2, v0}, Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object v11

    .line 170
    invoke-virtual {v11}, Lcom/obs/services/model/ListVersionsResult;->getVersions()[Lcom/obs/services/model/VersionOrDeleteMarker;

    move-result-object v12

    array-length v13, v12

    move v14, v1

    :goto_2c
    if-ge v14, v13, :cond_69

    aget-object v4, v12, v14

    .line 171
    invoke-virtual {v4}, Lcom/obs/services/model/VersionOrDeleteMarker;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v5

    sget-object v6, Lcom/obs/services/model/StorageClassEnum;->COLD:Lcom/obs/services/model/StorageClassEnum;

    if-ne v5, v6, :cond_64

    add-int/lit8 v9, v3, 0x1

    .line 173
    new-instance v10, Lcom/obs/services/model/RestoreObjectRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/obs/services/model/VersionOrDeleteMarker;->getKey()Ljava/lang/String;

    move-result-object v17

    .line 174
    invoke-virtual {v4}, Lcom/obs/services/model/VersionOrDeleteMarker;->getVersionId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getDays()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v20

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/obs/services/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/obs/services/model/RestoreTierEnum;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 175
    invoke-direct/range {v2 .. v10}, Lcom/obs/services/AbstractBatchClient;->submitRestoreTask(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;IILcom/obs/services/model/RestoreObjectRequest;)V

    move v3, v9

    :cond_64
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    goto :goto_2c

    .line 179
    :cond_69
    invoke-virtual {v11}, Lcom/obs/services/model/ListVersionsResult;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/model/ListVersionsRequest;->setKeyMarker(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v11}, Lcom/obs/services/model/ListVersionsResult;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/model/ListVersionsRequest;->setVersionIdMarker(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v11}, Lcom/obs/services/model/ListVersionsResult;->isTruncated()Z

    move-result v2

    if-nez v2, :cond_20

    return v3
.end method

.method private submitRestoreTask(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;IILcom/obs/services/model/RestoreObjectRequest;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/RestoreObjectsRequest;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "II",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ")V"
        }
    .end annotation

    move/from16 v0, p7

    .line 145
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    move-object/from16 v5, p8

    invoke-virtual {v5, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 147
    new-instance v2, Lcom/obs/services/internal/task/RestoreObjectTask;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v8, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/obs/services/internal/task/RestoreObjectTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/RestoreObjectRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;I)V

    .line 149
    invoke-virtual {p3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    sget-object p0, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 151
    rem-int/lit16 p1, v0, 0x3e8

    if-nez p1, :cond_42

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RestoreObjects: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " tasks have submitted to restore objects"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_42
    return-void
.end method

.method private uploadFileLists(Lcom/obs/services/model/PutObjectsRequest;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/model/TaskCallback;Ljava/lang/String;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/PutObjectsRequest;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lcom/obs/services/internal/task/UploadTaskProgressStatus;",
            "Lcom/obs/services/model/UploadObjectsProgressListener;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getFilePaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 323
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_44

    add-int/lit8 v1, v1, 0x1

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p6

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    .line 327
    invoke-direct/range {v3 .. v10}, Lcom/obs/services/AbstractBatchClient;->uploadObjectTask(Lcom/obs/services/model/PutObjectsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;)V

    goto :goto_9

    :cond_44
    move-object/from16 v11, p6

    .line 329
    sget-object v2, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putObjects: the file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_62
    return v1
.end method

.method private uploadFolder(Lcom/obs/services/model/PutObjectsRequest;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/model/TaskCallback;Ljava/lang/String;)I
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/PutObjectsRequest;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lcom/obs/services/internal/task/UploadTaskProgressStatus;",
            "Lcom/obs/services/model/UploadObjectsProgressListener;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "\" dose not exist"

    const-string v4, "putObjects: the folder \""

    if-eqz v2, :cond_f8

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v5, "\" dose not a folder"

    if-eqz v2, :cond_db

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 267
    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    const/4 v7, 0x0

    .line 270
    :goto_2b
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_da

    .line 271
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    if-nez v8, :cond_3a

    goto :goto_2b

    .line 275
    :cond_3a
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_41

    goto :goto_2b

    .line 279
    :cond_41
    array-length v9, v8

    const/4 v10, 0x0

    :goto_43
    if-ge v10, v9, :cond_d6

    aget-object v11, v8, v10

    .line 280
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_73

    .line 281
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6f

    .line 282
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 285
    sget-object v12, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v12, v11}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    goto :goto_96

    .line 287
    :cond_6f
    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 291
    :cond_73
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 292
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_99

    .line 293
    sget-object v11, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "putObjects: the file \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    :goto_96
    move-object/from16 v12, p6

    goto :goto_d2

    :cond_99
    add-int/lit8 v7, v7, 0x1

    .line 297
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v15, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\"

    const-string v1, "/"

    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v20, p4

    move-object/from16 v19, p5

    .line 299
    invoke-direct/range {v13 .. v20}, Lcom/obs/services/AbstractBatchClient;->uploadObjectTask(Lcom/obs/services/model/PutObjectsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;)V

    :goto_d2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_43

    :cond_d6
    move-object/from16 v12, p6

    goto/16 :goto_2b

    :cond_da
    return v7

    .line 260
    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v1, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v1, Lcom/obs/services/exception/ObsException;

    invoke-direct {v1, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/obs/services/AbstractBatchClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v1, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v1, Lcom/obs/services/exception/ObsException;

    invoke-direct {v1, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private uploadObjectTask(Lcom/obs/services/model/PutObjectsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/PutObjectsRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lcom/obs/services/internal/task/UploadTaskProgressStatus;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;",
            "Lcom/obs/services/model/UploadObjectsProgressListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    move-object/from16 v11, p7

    .line 339
    new-instance v12, Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressInterval()I

    move-result v13

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getTaskNum()I

    move-result v8

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getDetailProgressInterval()J

    move-result-wide v14

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getBigfileThreshold()J

    move-result-wide v3

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getPartSize()J

    move-result-wide v6

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v9

    move-object/from16 v16, v9

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v17, v9

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v9

    move-object/from16 v18, v9

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;

    move-result-object v9

    move-object/from16 v19, v9

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/PutObjectsRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v9

    .line 352
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v3, v20, v3

    if-lez v3, :cond_a4

    .line 353
    new-instance v3, Lcom/obs/services/model/UploadFileRequest;

    move-object v4, v9

    const/4 v9, 0x1

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    move/from16 v20, v13

    move-object/from16 v13, v16

    move-object/from16 v10, v18

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move-wide/from16 v17, v14

    move-object/from16 v14, v19

    move-object v15, v4

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Lcom/obs/services/model/UploadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    .line 356
    invoke-virtual {v3, v12}, Lcom/obs/services/model/PutObjectBasicRequest;->setExtensionPermissionMap(Ljava/util/Map;)V

    .line 357
    invoke-virtual {v3, v13}, Lcom/obs/services/model/PutObjectBasicRequest;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 358
    invoke-virtual {v3, v15}, Lcom/obs/services/model/PutObjectBasicRequest;->setSuccessRedirectLocation(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v3, v10}, Lcom/obs/services/model/PutObjectBasicRequest;->setSseCHeader(Lcom/obs/services/model/SseCHeader;)V

    .line 360
    invoke-virtual {v3, v14}, Lcom/obs/services/model/PutObjectBasicRequest;->setSseKmsHeader(Lcom/obs/services/model/SseKmsHeader;)V

    .line 361
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->addTotalSize(J)V

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 364
    invoke-direct {v1, v4, v0, v11}, Lcom/obs/services/AbstractBatchClient;->createNewProgressListener(Ljava/lang/String;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;)Lcom/obs/services/model/ProgressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/UploadFileRequest;->setProgressListener(Lcom/obs/services/model/ProgressListener;)V

    move-wide/from16 v5, v17

    .line 365
    invoke-virtual {v3, v5, v6}, Lcom/obs/services/model/UploadFileRequest;->setProgressInterval(J)V

    .line 367
    new-instance v0, Lcom/obs/services/internal/task/ResumableUploadTask;

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    move-object v5, v11

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/obs/services/internal/task/ResumableUploadTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/internal/task/UploadTaskProgressStatus;I)V

    move-object/from16 v8, p4

    .line 369
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_a4
    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move v7, v13

    move-wide v5, v14

    move-object/from16 v13, v16

    move-object/from16 v10, v18

    move-object/from16 v14, v19

    move-object v15, v9

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    .line 371
    new-instance v3, Lcom/obs/services/model/PutObjectRequest;

    move-object/from16 v9, v16

    invoke-direct {v3, v2, v4, v9}, Lcom/obs/services/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 372
    invoke-virtual {v3, v12}, Lcom/obs/services/model/PutObjectBasicRequest;->setExtensionPermissionMap(Ljava/util/Map;)V

    .line 373
    invoke-virtual {v3, v13}, Lcom/obs/services/model/PutObjectBasicRequest;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 374
    invoke-virtual {v3, v15}, Lcom/obs/services/model/PutObjectBasicRequest;->setSuccessRedirectLocation(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3, v10}, Lcom/obs/services/model/PutObjectBasicRequest;->setSseCHeader(Lcom/obs/services/model/SseCHeader;)V

    .line 376
    invoke-virtual {v3, v14}, Lcom/obs/services/model/PutObjectBasicRequest;->setSseKmsHeader(Lcom/obs/services/model/SseKmsHeader;)V

    .line 377
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->addTotalSize(J)V

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 380
    invoke-direct {v1, v4, v0, v11}, Lcom/obs/services/AbstractBatchClient;->createNewProgressListener(Ljava/lang/String;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;)Lcom/obs/services/model/ProgressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/PutObjectRequest;->setProgressListener(Lcom/obs/services/model/ProgressListener;)V

    .line 381
    invoke-virtual {v3, v5, v6}, Lcom/obs/services/model/PutObjectRequest;->setProgressInterval(J)V

    .line 382
    new-instance v0, Lcom/obs/services/internal/task/PutObjectTask;

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    move-object v5, v11

    invoke-direct/range {v0 .. v7}, Lcom/obs/services/internal/task/PutObjectTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/PutObjectRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/internal/task/UploadTaskProgressStatus;I)V

    .line 384
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public putObjects(Lcom/obs/services/model/PutObjectsRequest;)Lcom/obs/services/model/UploadProgressStatus;
    .registers 10

    .line 203
    const-string v0, "PutObjectsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ObsService;->initThreadPool(Lcom/obs/services/model/AbstractBulkRequest;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    .line 206
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 207
    new-instance v4, Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getTaskProgressInterval()J

    move-result-wide v1

    invoke-direct {v4, v1, v2, v0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;-><init>(JLjava/util/Date;)V

    .line 210
    :try_start_17
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getUploadObjectsProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v5

    .line 211
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/obs/services/internal/task/LazyTaksCallback;

    invoke-direct {v0}, Lcom/obs/services/internal/task/LazyTaksCallback;-><init>()V

    :goto_26
    move-object v6, v0

    goto :goto_2d

    .line 212
    :cond_28
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    goto :goto_26

    .line 213
    :goto_2d
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    const-string v0, ""

    :goto_35
    move-object v7, v0

    goto :goto_3c

    :cond_37
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 216
    :goto_3c
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectsRequest;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    move-object v1, p0

    move-object v2, p1

    .line 217
    invoke-direct/range {v1 .. v7}, Lcom/obs/services/AbstractBatchClient;->uploadFolder(Lcom/obs/services/model/PutObjectsRequest;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/model/TaskCallback;Ljava/lang/String;)I

    move-result p0

    goto :goto_57

    :cond_49
    move-object v1, p0

    move-object v2, p1

    .line 219
    invoke-virtual {v2}, Lcom/obs/services/model/PutObjectsRequest;->getFilePaths()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 220
    invoke-direct/range {v1 .. v7}, Lcom/obs/services/AbstractBatchClient;->uploadFileLists(Lcom/obs/services/model/PutObjectsRequest;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/internal/task/UploadTaskProgressStatus;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/model/TaskCallback;Ljava/lang/String;)I

    move-result p0

    goto :goto_57

    :cond_56
    const/4 p0, 0x0

    .line 224
    :goto_57
    invoke-virtual {v4, p0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->setTotalTaskNum(I)V

    .line 225
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 226
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {v3, v0, v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_67} :catch_68

    return-object v4

    :catch_68
    move-exception v0

    move-object p0, v0

    .line 228
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0
.end method

.method public restoreObjects(Lcom/obs/services/model/RestoreObjectsRequest;)Lcom/obs/services/model/TaskProgressStatus;
    .registers 19

    .line 76
    invoke-direct/range {p0 .. p1}, Lcom/obs/services/AbstractBatchClient;->checkRestoreObjectsRequest(Lcom/obs/services/model/RestoreObjectsRequest;)V

    .line 77
    new-instance v2, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    invoke-direct {v2}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;-><init>()V

    .line 78
    invoke-virtual/range {p0 .. p1}, Lcom/obs/services/internal/ObsService;->initThreadPool(Lcom/obs/services/model/AbstractBulkRequest;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v8

    .line 83
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/obs/services/internal/task/LazyTaksCallback;

    invoke-direct {v0}, Lcom/obs/services/internal/task/LazyTaksCallback;-><init>()V

    :goto_17
    move-object v4, v0

    goto :goto_1e

    .line 84
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    goto :goto_17

    .line 85
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v5

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressInterval()I

    move-result v6

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getKeyAndVersions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getKeyAndVersions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getKeyAndVersions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/KeyAndVersion;

    .line 91
    new-instance v3, Lcom/obs/services/model/RestoreObjectRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/obs/services/model/KeyAndVersion;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 92
    invoke-virtual {v0}, Lcom/obs/services/model/KeyAndVersion;->getVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getDays()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v16

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/obs/services/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/obs/services/model/RestoreTierEnum;)V

    move-object v3, v11

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 94
    new-instance v0, Lcom/obs/services/internal/task/RestoreObjectTask;

    move v7, v6

    move-object v6, v2

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/obs/services/internal/task/RestoreObjectTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/RestoreObjectRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;I)V

    move-object v2, v6

    move v6, v7

    .line 97
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3c

    :cond_7d
    move-object v3, v8

    goto :goto_98

    .line 100
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/RestoreObjectsRequest;->isVersionRestored()Z

    move-result v0

    if-eqz v0, :cond_8f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v8

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/AbstractBatchClient;->restoreVersions(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)I

    move-result v9

    goto :goto_98

    :cond_8f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v8

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/AbstractBatchClient;->restoreCurrentObject(Lcom/obs/services/model/RestoreObjectsRequest;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)I

    move-result v9

    .line 108
    :goto_98
    invoke-virtual {v2, v9}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->setTotalTaskNum(I)V

    .line 109
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_a8} :catch_a9

    return-object v2

    :catch_a9
    move-exception v0

    .line 112
    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object v0

    throw v0
.end method
