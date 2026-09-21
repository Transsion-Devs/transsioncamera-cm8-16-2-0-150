.class public abstract Lcom/obs/services/AbstractMultipartObjectClient;
.super Lcom/obs/services/AbstractObjectClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/obs/services/AbstractObjectClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->initiateMultipartUploadImpl(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->abortMultipartUploadImpl(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->uploadPartImpl(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->copyPartImpl(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->completeMultipartUploadImpl(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->listPartsImpl(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsMultipartObjectService;->listMultipartUploadsImpl(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 70
    const-string v0, "AbortMultipartUploadRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$2;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$2;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/AbortMultipartUploadRequest;)V

    const-string p1, "abortMultipartUpload"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 4

    .line 178
    const-string v0, "CompleteMultipartUploadRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$5;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$5;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/CompleteMultipartUploadRequest;)V

    const-string p1, "completeMultipartUpload"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/CompleteMultipartUploadResult;

    return-object p0
.end method

.method public copyPart(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;
    .registers 4

    .line 152
    const-string v0, "CopyPartRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSourceObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sourceObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destinationBucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getDestinationObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destinationObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$4;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$4;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/CopyPartRequest;)V

    const-string p1, "copyPart"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/CopyPartResult;

    return-object p0
.end method

.method public initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 4

    .line 50
    const-string v0, "InitiateMultipartUploadRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$1;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/InitiateMultipartUploadRequest;)V

    const-string p1, "initiateMultipartUpload"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/InitiateMultipartUploadResult;

    return-object p0
.end method

.method public listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;
    .registers 4

    .line 222
    const-string v0, "ListMultipartUploadsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$7;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$7;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListMultipartUploadsRequest;)V

    const-string p1, "listMultipartUploads"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/MultipartUploadListing;

    return-object p0
.end method

.method public listParts(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;
    .registers 4

    .line 199
    const-string v0, "ListPartsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/obs/services/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$6;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$6;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListPartsRequest;)V

    const-string p1, "listParts"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ListPartsResult;

    return-object p0
.end method

.method public uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;
    .registers 4

    .line 127
    const-string v0, "UploadPartRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractMultipartObjectClient$3;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient$3;-><init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/UploadPartRequest;)V

    const-string p1, "uploadPart"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/UploadPartResult;

    return-object p0
.end method

.method public uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Lcom/obs/services/model/UploadPartResult;
    .registers 7

    .line 109
    new-instance v0, Lcom/obs/services/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/obs/services/model/UploadPartRequest;-><init>()V

    .line 110
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p3}, Lcom/obs/services/model/AbstractMultipartRequest;->setUploadId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p4}, Lcom/obs/services/model/UploadPartRequest;->setPartNumber(I)V

    .line 114
    invoke-virtual {v0, p5}, Lcom/obs/services/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractMultipartObjectClient;->uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method

.method public uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;)Lcom/obs/services/model/UploadPartResult;
    .registers 7

    .line 91
    new-instance v0, Lcom/obs/services/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/obs/services/model/UploadPartRequest;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p3}, Lcom/obs/services/model/AbstractMultipartRequest;->setUploadId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p4}, Lcom/obs/services/model/UploadPartRequest;->setPartNumber(I)V

    .line 96
    invoke-virtual {v0, p5}, Lcom/obs/services/model/UploadPartRequest;->setInput(Ljava/io/InputStream;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractMultipartObjectClient;->uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method
