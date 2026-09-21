.class public Lcom/obs/services/ObsClient;
.super Lcom/obs/services/AbstractBatchClient;
.source "SourceFile"


# static fields
.field private static fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/obs/services/ObsClient;->fields:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/IObsCredentialsProvider;Lcom/obs/services/ObsConfiguration;)V
    .registers 6

    .line 156
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    .line 157
    const-string v0, "ObsCredentialsProvider is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_f

    .line 159
    new-instance p2, Lcom/obs/services/ObsConfiguration;

    invoke-direct {p2}, Lcom/obs/services/ObsConfiguration;-><init>()V

    .line 161
    :cond_f
    invoke-interface {p1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/services/model/ISecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/model/ISecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-interface {p1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/model/ISecurityKey;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    .line 163
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->setObsCredentialsProvider(Lcom/obs/services/IObsCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/IObsCredentialsProvider;Ljava/lang/String;)V
    .registers 6

    .line 147
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    .line 148
    const-string v0, "ObsCredentialsProvider is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/obs/services/ObsConfiguration;

    invoke-direct {v0}, Lcom/obs/services/ObsConfiguration;-><init>()V

    .line 150
    invoke-virtual {v0, p2}, Lcom/obs/services/ObsConfiguration;->setEndPoint(Ljava/lang/String;)V

    .line 151
    invoke-interface {p1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object p2

    invoke-interface {p2}, Lcom/obs/services/model/ISecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/model/ISecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-interface {p1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/model/ISecurityKey;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    .line 153
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->setObsCredentialsProvider(Lcom/obs/services/IObsCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/ObsConfiguration;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    if-nez p1, :cond_a

    .line 68
    new-instance p1, Lcom/obs/services/ObsConfiguration;

    invoke-direct {p1}, Lcom/obs/services/ObsConfiguration;-><init>()V

    :cond_a
    const/4 v0, 0x0

    .line 70
    const-string v1, ""

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    .line 54
    new-instance v0, Lcom/obs/services/ObsConfiguration;

    invoke-direct {v0}, Lcom/obs/services/ObsConfiguration;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/obs/services/ObsConfiguration;->setEndPoint(Ljava/lang/String;)V

    .line 56
    const-string p1, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p1, v1, v0}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    if-nez p3, :cond_a

    .line 103
    new-instance p3, Lcom/obs/services/ObsConfiguration;

    invoke-direct {p3}, Lcom/obs/services/ObsConfiguration;-><init>()V

    :cond_a
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    .line 85
    new-instance v0, Lcom/obs/services/ObsConfiguration;

    invoke-direct {v0}, Lcom/obs/services/ObsConfiguration;-><init>()V

    .line 86
    invoke-virtual {v0, p3}, Lcom/obs/services/ObsConfiguration;->setEndPoint(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 5

    .line 140
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    if-nez p4, :cond_a

    .line 142
    new-instance p4, Lcom/obs/services/ObsConfiguration;

    invoke-direct {p4}, Lcom/obs/services/ObsConfiguration;-><init>()V

    .line 144
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 121
    invoke-direct {p0}, Lcom/obs/services/AbstractBatchClient;-><init>()V

    .line 122
    new-instance v0, Lcom/obs/services/ObsConfiguration;

    invoke-direct {v0}, Lcom/obs/services/ObsConfiguration;-><init>()V

    .line 123
    invoke-virtual {v0, p4}, Lcom/obs/services/ObsConfiguration;->setEndPoint(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/AbstractClient;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/ObsClient;Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsExtensionService;->readAheadObjectsImpl(Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/service/ObsExtensionService;->deleteReadAheadObjectsImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/service/ObsExtensionService;->queryReadAheadObjectsTaskImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/ObsClient;Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsFileService;->writeFileImpl(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .registers 1

    .line 42
    sget-object v0, Lcom/obs/services/ObsClient;->fields:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/obs/services/ObsClient;->getFieldFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static getFieldFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 286
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 288
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static setInnerClient(Ljava/lang/Object;Lcom/obs/services/ObsClient;)V
    .registers 5

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/obs/services/ObsClient$5;

    invoke-direct {v2, v1, v0, p0, p1}, Lcom/obs/services/ObsClient$5;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/obs/services/ObsClient;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_14
    return-void
.end method


# virtual methods
.method public deleteReadAheadObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;
    .registers 4

    .line 181
    const-string v0, "bucketName is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "prefix is null"

    invoke-static {p2, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/obs/services/ObsClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/obs/services/ObsClient$2;-><init>(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "deleteReadAheadObjects"

    invoke-virtual {p0, p2, p1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ReadAheadResult;

    return-object p0
.end method

.method public newBucket(Lcom/obs/services/model/fs/NewBucketRequest;)Lcom/obs/services/model/fs/ObsFSBucket;
    .registers 4

    .line 210
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    move-result-object p1

    .line 211
    new-instance v0, Lcom/obs/services/model/fs/ObsFSBucket;

    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/obs/services/model/fs/ObsFSBucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v0, p0}, Lcom/obs/services/ObsClient;->setInnerClient(Ljava/lang/Object;Lcom/obs/services/ObsClient;)V

    return-object v0
.end method

.method public newFile(Lcom/obs/services/model/fs/NewFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 2

    .line 218
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/fs/ObsFSFile;

    .line 219
    invoke-static {p1, p0}, Lcom/obs/services/ObsClient;->setInnerClient(Ljava/lang/Object;Lcom/obs/services/ObsClient;)V

    return-object p1
.end method

.method public newFolder(Lcom/obs/services/model/fs/NewFolderRequest;)Lcom/obs/services/model/fs/ObsFSFolder;
    .registers 5

    .line 225
    const-string v0, "CreateFolderRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 227
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getFileSystemDelimiter()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 233
    :cond_2f
    new-instance v0, Lcom/obs/services/model/PutObjectRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/PutObjectRequest;-><init>(Lcom/obs/services/model/PutObjectBasicRequest;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/fs/ObsFSFolder;

    .line 234
    invoke-static {p1, p0}, Lcom/obs/services/ObsClient;->setInnerClient(Ljava/lang/Object;Lcom/obs/services/ObsClient;)V

    return-object p1
.end method

.method public queryReadAheadObjectsTask(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;
    .registers 4

    .line 196
    const-string v0, "bucketName is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "taskId is null"

    invoke-static {p2, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/obs/services/ObsClient$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/obs/services/ObsClient$3;-><init>(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "queryReadAheadObjectsTask"

    invoke-virtual {p0, p2, p1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ReadAheadQueryResult;

    return-object p0
.end method

.method public readAheadObjects(Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;
    .registers 4

    .line 168
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/ObsClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/ObsClient$1;-><init>(Lcom/obs/services/ObsClient;Lcom/obs/services/model/ReadAheadRequest;)V

    const-string p1, "readAheadObjects"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ReadAheadResult;

    return-object p0
.end method

.method public writeFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 4

    .line 240
    const-string v0, "WriteFileRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/ObsClient$4;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/ObsClient$4;-><init>(Lcom/obs/services/ObsClient;Lcom/obs/services/model/fs/WriteFileRequest;)V

    const-string p1, "writeFile"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/model/fs/ObsFSFile;

    .line 252
    invoke-static {p1, p0}, Lcom/obs/services/ObsClient;->setInnerClient(Ljava/lang/Object;Lcom/obs/services/ObsClient;)V

    return-object p1
.end method
