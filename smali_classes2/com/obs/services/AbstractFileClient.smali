.class public abstract Lcom/obs/services/AbstractFileClient;
.super Lcom/obs/services/AbstractPFSClient;
.source "SourceFile"


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/obs/services/AbstractFileClient;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/AbstractFileClient;->ILOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/obs/services/AbstractPFSClient;-><init>()V

    return-void
.end method

.method private checkDropFutures(Ljava/util/Map;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "I)Z"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 210
    :try_start_16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1f} :catch_22
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_63

    :catch_20
    move-exception v0

    goto :goto_24

    :catch_22
    move-exception v0

    goto :goto_39

    .line 220
    :goto_24
    invoke-virtual {p2}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 221
    new-instance v3, Lcom/obs/services/exception/ObsException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    :goto_37
    move v0, v2

    goto :goto_63

    .line 212
    :goto_39
    invoke-virtual {p2}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/obs/services/exception/ObsException;

    if-eqz v3, :cond_52

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/obs/services/exception/ObsException;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    goto :goto_37

    .line 216
    :cond_52
    new-instance v3, Lcom/obs/services/exception/ObsException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    goto :goto_37

    .line 224
    :goto_63
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/obs/services/internal/ObsService;->recordBulkTaskStatus(Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)V

    goto :goto_9

    :cond_67
    return v0
.end method

.method private recurseFolders(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;[I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/fs/DropFolderRequest;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "[I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 136
    new-instance v7, Lcom/obs/services/model/ListObjectsRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/obs/services/model/ListObjectsRequest;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v8, "/"

    invoke-virtual {v7, v8}, Lcom/obs/services/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 138
    invoke-virtual {v7, v1}, Lcom/obs/services/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/fs/DropFolderRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/obs/services/model/ListObjectsRequest;->setEncodingType(Ljava/lang/String;)V

    const/4 v9, 0x1

    move v1, v9

    .line 144
    :goto_25
    invoke-virtual {v0, v7}, Lcom/obs/services/AbstractObjectClient;->listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object v10

    .line 145
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 147
    invoke-virtual {v10}, Lcom/obs/services/model/ObjectListing;->getObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v1

    :goto_37
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v13, " tasks have submitted to delete objects"

    const-string v14, "DropFolder: "

    const/4 v15, 0x0

    if-eqz v1, :cond_a0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/ObsObject;

    .line 148
    invoke-virtual {v1}, Lcom/obs/services/model/ObsObject;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 149
    aget v2, p6, v15

    add-int/2addr v2, v9

    aput v2, p6, v15

    .line 150
    invoke-virtual {v1}, Lcom/obs/services/model/ObsObject;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/obs/services/AbstractFileClient;->submitDropTask(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/Map;)Z

    move-result v2

    move-object/from16 v16, v6

    if-eqz v2, :cond_6f

    if-eqz v12, :cond_6f

    move v0, v9

    goto :goto_70

    :cond_6f
    move v0, v15

    .line 152
    :goto_70
    sget-object v1, Lcom/obs/services/AbstractFileClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 153
    aget v2, p6, v15

    rem-int/lit16 v2, v2, 0x3e8

    if-nez v2, :cond_97

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_97
    move v12, v0

    goto :goto_9b

    :cond_99
    move-object/from16 v16, v6

    :goto_9b
    move-object/from16 v0, p0

    move-object/from16 v6, v16

    goto :goto_37

    :cond_a0
    move-object/from16 v16, v6

    .line 161
    invoke-virtual {v10}, Lcom/obs/services/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_aa
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 162
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/AbstractFileClient;->recurseFolders(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;[I)Z

    move-result v17

    .line 163
    aget v0, p6, v15

    add-int/2addr v0, v9

    aput v0, p6, v15

    if-eqz v17, :cond_e9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v16

    .line 165
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/AbstractFileClient;->submitDropTask(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_e4

    if-eqz v12, :cond_e4

    move v1, v9

    goto :goto_e5

    :cond_e4
    move v1, v15

    :goto_e5
    move-object/from16 v4, p4

    move v12, v1

    goto :goto_109

    :cond_e9
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v6, v16

    .line 168
    invoke-virtual/range {p4 .. p4}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 169
    new-instance v1, Lcom/obs/services/exception/ObsException;

    const-string v4, "Failed to delete due to child file deletion failed"

    invoke-direct {v1, v4}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v1

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressInterval()I

    move-result v2

    move-object/from16 v4, p4

    .line 171
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/obs/services/internal/ObsService;->recordBulkTaskStatus(Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)V

    .line 174
    :goto_109
    sget-object v1, Lcom/obs/services/AbstractFileClient;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 175
    aget v2, p6, v15

    rem-int/lit16 v2, v2, 0x3e8

    if-nez v2, :cond_130

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_130
    move-object/from16 v16, v6

    goto/16 :goto_aa

    :cond_134
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, v16

    .line 181
    invoke-virtual {v10}, Lcom/obs/services/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/obs/services/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v4

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressInterval()I

    move-result v5

    move-object/from16 v2, p4

    move-object v1, v6

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/AbstractFileClient;->checkDropFutures(Ljava/util/Map;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)Z

    move-result v1

    if-eqz v1, :cond_158

    if-eqz v12, :cond_158

    move v1, v9

    goto :goto_159

    :cond_158
    move v1, v15

    .line 184
    :goto_159
    invoke-virtual {v10}, Lcom/obs/services/model/ObjectListing;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_160

    return v1

    :cond_160
    move-object/from16 v0, p0

    goto/16 :goto_25
.end method

.method private submitDropTask(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/Map;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/fs/DropFolderRequest;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;)Z"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/obs/services/internal/task/DropFolderTask;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressInterval()I

    move-result v6

    .line 194
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v8

    move-object v1, p0

    move-object v3, p2

    move-object v7, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/obs/services/internal/task/DropFolderTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskProgressListener;ILcom/obs/services/model/TaskCallback;Z)V

    .line 196
    :try_start_19
    invoke-virtual {p5, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p6, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_19 .. :try_end_20} :catch_22

    const/4 p0, 0x1

    return p0

    :catch_22
    move-exception v0

    move-object p0, v0

    .line 198
    invoke-virtual {v4}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 199
    new-instance p1, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v7, p1, v3}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public downloadFile(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/DownloadFileResult;
    .registers 3

    .line 74
    :try_start_0
    new-instance v0, Lcom/obs/services/internal/DownloadResumableClient;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/DownloadResumableClient;-><init>(Lcom/obs/services/AbstractClient;)V

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/DownloadResumableClient;->downloadFileResume(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/DownloadFileResult;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_21

    .line 76
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 77
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v0

    instance-of v0, v0, Lcom/obs/services/model/MonitorableProgressListener;

    if-eqz v0, :cond_20

    .line 78
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/MonitorableProgressListener;

    invoke-virtual {p1}, Lcom/obs/services/model/MonitorableProgressListener;->finishOneTask()V

    :cond_20
    return-object p0

    :catchall_21
    move-exception p0

    .line 76
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 77
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v0

    instance-of v0, v0, Lcom/obs/services/model/MonitorableProgressListener;

    if-eqz v0, :cond_39

    .line 78
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/MonitorableProgressListener;

    invoke-virtual {p1}, Lcom/obs/services/model/MonitorableProgressListener;->finishOneTask()V

    .line 80
    :cond_39
    throw p0
.end method

.method public dropFolder(Lcom/obs/services/model/fs/DropFolderRequest;)Lcom/obs/services/model/TaskProgressStatus;
    .registers 14

    .line 91
    const-string v0, "DropFolderRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v0

    if-nez v0, :cond_14

    .line 93
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_14
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ObsService;->initThreadPool(Lcom/obs/services/model/AbstractBulkRequest;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    .line 96
    new-instance v6, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    invoke-direct {v6}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;-><init>()V

    .line 98
    :try_start_1d
    invoke-virtual {p1}, Lcom/obs/services/model/fs/DropFolderRequest;->getFolderName()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getFileSystemDelimiter()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    move-object v4, v0

    .line 103
    invoke-virtual {p1}, Lcom/obs/services/model/fs/DropFolderRequest;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    if-nez v0, :cond_48

    new-instance v0, Lcom/obs/services/internal/task/LazyTaksCallback;

    invoke-direct {v0}, Lcom/obs/services/internal/task/LazyTaksCallback;-><init>()V

    :goto_46
    move-object v5, v0

    goto :goto_4d

    .line 105
    :cond_48
    invoke-virtual {p1}, Lcom/obs/services/model/fs/DropFolderRequest;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    goto :goto_46

    .line 106
    :goto_4d
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractBulkRequest;->getProgressInterval()I

    move-result v1

    const/4 v9, 0x1

    .line 108
    new-array v8, v9, [I

    const/4 v10, 0x0

    aput v10, v8, v10

    move-object v2, p0

    move-object v3, p1

    .line 109
    invoke-direct/range {v2 .. v8}, Lcom/obs/services/AbstractFileClient;->recurseFolders(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;[I)Z

    move-result p0

    move-object p1, v8

    .line 110
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 111
    aget v11, p1, v10

    add-int/2addr v11, v9

    aput v11, p1, v10

    .line 112
    invoke-virtual {v6, v11}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->setTotalTaskNum(I)V

    if-eqz p0, :cond_7f

    .line 115
    invoke-direct/range {v2 .. v8}, Lcom/obs/services/AbstractFileClient;->submitDropTask(Lcom/obs/services/model/fs/DropFolderRequest;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/Map;)Z

    move-object v4, v0

    move-object v0, v2

    move-object v3, v5

    move-object v2, v6

    move v5, v1

    move-object v1, v8

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/AbstractFileClient;->checkDropFutures(Ljava/util/Map;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)Z

    move-object v6, v2

    goto :goto_91

    :cond_7f
    move-object p0, v0

    move p1, v1

    .line 118
    invoke-virtual {v6}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 119
    new-instance v0, Lcom/obs/services/exception/ObsException;

    const-string v1, "Failed to delete due to child file deletion failed"

    invoke-direct {v0, v1}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v4}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v2, v6, v5, p0, p1}, Lcom/obs/services/internal/ObsService;->recordBulkTaskStatus(Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;I)V

    .line 124
    :goto_91
    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 125
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {v7, v0, v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_9e} :catch_9f

    return-object v6

    :catch_9f
    move-exception v0

    move-object p0, v0

    .line 127
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0
.end method

.method public uploadFile(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 3

    .line 62
    new-instance v0, Lcom/obs/services/internal/UploadResumableClient;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/UploadResumableClient;-><init>(Lcom/obs/services/AbstractClient;)V

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/UploadResumableClient;->uploadFileResume(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method
