.class public abstract Lcom/obs/services/AbstractPFSClient;
.super Lcom/obs/services/AbstractMultipartObjectClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/obs/services/AbstractMultipartObjectClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/model/fs/ListContentSummaryResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->listContentSummaryImpl(Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/model/fs/ListContentSummaryResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->renameObjectImpl(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->getAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->deleteAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/TruncateObjectRequest;)Lcom/obs/services/model/TruncateObjectResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->truncateObjectImpl(Lcom/obs/services/model/TruncateObjectRequest;)Lcom/obs/services/model/TruncateObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->modifyObjectImpl(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->renameFileImpl(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/TruncateFileRequest;)Lcom/obs/services/model/fs/TruncateFileResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->truncateFileImpl(Lcom/obs/services/model/fs/TruncateFileRequest;)Lcom/obs/services/model/fs/TruncateFileResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->deleteObjectImpl(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->listContentSummaryFsImpl(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/model/fs/ContentSummaryFsResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->getContentSummaryFsImpl(Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/model/fs/ContentSummaryFsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->setAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 7

    .line 174
    const-string v0, "WriteFileRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/obs/services/model/GetObjectMetadataRequest;

    .line 177
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3e

    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/obs/services/model/ObjectMetadata;->getNextPosition()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_36

    goto :goto_3e

    .line 179
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Where you proposed append to is not equal to length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Lcom/obs/services/model/ObjectMetadata;->getNextPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/obs/services/model/AppendObjectRequest;->setPosition(J)V

    .line 182
    invoke-interface {p0, p1}, Lcom/obs/services/IFSClient;->writeFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public deleteAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;
    .registers 4

    .line 295
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$12;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$12;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;)V

    const-string p1, "deleteaccesslabel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;

    return-object p0
.end method

.method public dropFile(Lcom/obs/services/model/fs/DropFileRequest;)Lcom/obs/services/model/fs/DropFileResult;
    .registers 4

    .line 233
    const-string v0, "DropFileRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$7;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$7;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/DropFileRequest;)V

    const-string p1, "dropFile"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/DropFileResult;

    return-object p0
.end method

.method public getAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
    .registers 4

    .line 284
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$11;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$11;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)V

    const-string p1, "getaccesslabel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;

    return-object p0
.end method

.method public getAttribute(Lcom/obs/services/model/fs/GetAttributeRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;
    .registers 2

    .line 164
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ObsFSAttribute;

    return-object p0
.end method

.method public getContentSummaryFs(Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/model/fs/ContentSummaryFsResult;
    .registers 4

    .line 260
    const-string v0, "ContentSummaryFsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ContentSummaryFsRequest;->getDirName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$9;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$9;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ContentSummaryFsRequest;)V

    const-string p1, "contentsummaryfs"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ContentSummaryFsResult;

    return-object p0
.end method

.method public listContentSummary(Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/model/fs/ListContentSummaryResult;
    .registers 4

    .line 65
    const-string v0, "ListContentSummaryRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$1;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ListContentSummaryRequest;)V

    const-string p1, "listcontentsummary"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ListContentSummaryResult;

    return-object p0
.end method

.method public listContentSummaryFs(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;
    .registers 4

    .line 248
    const-string v0, "ListContentSummaryFsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$8;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$8;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)V

    const-string p1, "listcontentsummaryfs"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ListContentSummaryFsResult;

    return-object p0
.end method

.method public modifyObject(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;
    .registers 4

    .line 149
    const-string v0, "ModifyObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/obs/services/model/AppendObjectRequest;->getPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "position is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$4;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$4;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/ModifyObjectRequest;)V

    const-string p1, "modifyObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ModifyObjectResult;

    return-object p0
.end method

.method public modifyObject(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;)Lcom/obs/services/model/ModifyObjectResult;
    .registers 7

    .line 128
    new-instance v0, Lcom/obs/services/model/ModifyObjectRequest;

    invoke-direct {v0}, Lcom/obs/services/model/ModifyObjectRequest;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p3, p4}, Lcom/obs/services/model/AppendObjectRequest;->setPosition(J)V

    .line 132
    invoke-virtual {v0, p5}, Lcom/obs/services/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->modifyObject(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public modifyObject(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)Lcom/obs/services/model/ModifyObjectResult;
    .registers 7

    .line 139
    new-instance v0, Lcom/obs/services/model/ModifyObjectRequest;

    invoke-direct {v0}, Lcom/obs/services/model/ModifyObjectRequest;-><init>()V

    .line 140
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p3, p4}, Lcom/obs/services/model/AppendObjectRequest;->setPosition(J)V

    .line 143
    invoke-virtual {v0, p5}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->modifyObject(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public readFile(Lcom/obs/services/model/fs/ReadFileRequest;)Lcom/obs/services/model/fs/ReadFileResult;
    .registers 2

    .line 169
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractObjectClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ReadFileResult;

    return-object p0
.end method

.method public renameFile(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
    .registers 4

    .line 187
    const-string v0, "RenameRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/obs/services/model/fs/RenameRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$5;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$5;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/RenameRequest;)V

    const-string p1, "rename"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/RenameResult;

    return-object p0
.end method

.method public renameFolder(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
    .registers 5

    .line 201
    const-string v0, "RenameRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/obs/services/model/fs/RenameRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getFileSystemDelimiter()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 210
    :cond_3b
    invoke-virtual {p1}, Lcom/obs/services/model/fs/RenameRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/fs/RenameRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/fs/RenameRequest;->setNewObjectKey(Ljava/lang/String;)V

    .line 214
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractPFSClient;->renameFile(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method public renameObject(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;
    .registers 4

    .line 87
    const-string v0, "RenameObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/obs/services/model/RenameObjectRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$2;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$2;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/RenameObjectRequest;)V

    const-string p1, "renameObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/RenameObjectResult;

    return-object p0
.end method

.method public renameObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/RenameObjectResult;
    .registers 5

    .line 78
    new-instance v0, Lcom/obs/services/model/RenameObjectRequest;

    invoke-direct {v0}, Lcom/obs/services/model/RenameObjectRequest;-><init>()V

    .line 79
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p3}, Lcom/obs/services/model/RenameObjectRequest;->setNewObjectKey(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->renameObject(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public setAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
    .registers 4

    .line 273
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$10;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$10;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)V

    const-string p1, "setaccesslabel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;

    return-object p0
.end method

.method public truncateFile(Lcom/obs/services/model/fs/TruncateFileRequest;)Lcom/obs/services/model/fs/TruncateFileResult;
    .registers 4

    .line 219
    const-string v0, "TruncateFileRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$6;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$6;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/TruncateFileRequest;)V

    const-string p1, "truncateFile"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/TruncateFileResult;

    return-object p0
.end method

.method public truncateObject(Lcom/obs/services/model/TruncateObjectRequest;)Lcom/obs/services/model/TruncateObjectResult;
    .registers 4

    .line 112
    const-string v0, "TruncateObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/obs/services/model/TruncateObjectRequest;->getNewLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "NewLength is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractPFSClient$3;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractPFSClient$3;-><init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/TruncateObjectRequest;)V

    const-string p1, "truncateObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/TruncateObjectResult;

    return-object p0
.end method

.method public truncateObject(Ljava/lang/String;Ljava/lang/String;J)Lcom/obs/services/model/TruncateObjectResult;
    .registers 6

    .line 103
    new-instance v0, Lcom/obs/services/model/TruncateObjectRequest;

    invoke-direct {v0}, Lcom/obs/services/model/TruncateObjectRequest;-><init>()V

    .line 104
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p3, p4}, Lcom/obs/services/model/TruncateObjectRequest;->setNewLength(J)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->truncateObject(Lcom/obs/services/model/TruncateObjectRequest;)Lcom/obs/services/model/TruncateObjectResult;

    move-result-object p0

    return-object p0
.end method
