.class public final Lcom/ss/ugc/effectplatform/download/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;,
        Lcom/ss/ugc/effectplatform/download/DownloadManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/download/DownloadManager$Companion;


# instance fields
.field private downloadType:Lcom/ss/ugc/effectplatform/download/DownloadType;

.field private networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

.field private writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/download/DownloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/download/DownloadManager;->Companion:Lcom/ss/ugc/effectplatform/download/DownloadManager$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/download/IWriteDisk;Lcom/ss/ugc/effectplatform/download/IUnZipper;Lcom/ss/ugc/effectplatform/download/DownloadType;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager;->networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager;->writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager;->downloadType:Lcom/ss/ugc/effectplatform/download/DownloadType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/download/IWriteDisk;Lcom/ss/ugc/effectplatform/download/IUnZipper;Lcom/ss/ugc/effectplatform/download/DownloadType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/download/DownloadManager;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/download/IWriteDisk;Lcom/ss/ugc/effectplatform/download/IUnZipper;Lcom/ss/ugc/effectplatform/download/DownloadType;)V

    return-void
.end method

.method private final checkDownloadUrlValid(Ljava/lang/String;)Z
    .registers 2

    .line 185
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final printLog(Ljava/lang/String;J)V
    .registers 6

    .line 181
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager;->downloadType:Lcom/ss/ugc/effectplatform/download/DownloadType;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-->"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , cost "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mills."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadManager"

    invoke-virtual {v0, p1, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final download(Ljava/lang/String;Lcom/ss/ugc/effectplatform/download/DownloadListener;)J
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    const-string v0, "downloadUrl"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadUrl="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DownloadManager"

    invoke-virtual {v0, v4, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v12, Lcom/ss/ugc/effectplatform/download/DownloadResult;

    invoke-direct {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;-><init>()V

    .line 67
    sget-object v0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v13

    .line 70
    invoke-direct/range {p0 .. p1}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->checkDownloadUrlValid(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v15, -0x1

    if-eqz v2, :cond_1d0

    if-eqz v11, :cond_40

    .line 71
    invoke-interface {v11}, Lcom/ss/ugc/effectplatform/download/DownloadListener;->onStart()V

    .line 74
    :cond_40
    new-instance v2, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    sget-object v4, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v4, 0x3a

    .line 77
    :try_start_50
    iget-object v0, v1, Lcom/ss/ugc/effectplatform/download/DownloadManager;->networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    invoke-interface {v0, v2}, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;->fetchFromNetwork(Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;)Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    move-result-object v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_85

    :catch_57
    move-exception v0

    .line 79
    new-instance v2, Lcom/ss/ugc/effectplatform/exception/NetException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x190

    invoke-direct {v2, v5, v0}, Lcom/ss/ugc/effectplatform/exception/NetException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_85
    if-eqz v0, :cond_17e

    .line 81
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_91

    goto/16 :goto_17e

    .line 91
    :cond_91
    sget-object v2, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v13

    invoke-virtual {v12, v5, v6}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setFetchInputStreamTimeMillsCost(J)V

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchInputStream success! url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getFetchInputStreamTimeMillsCost()J

    move-result-wide v6

    invoke-direct {v1, v5, v6, v7}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->printLog(Ljava/lang/String;J)V

    .line 95
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v5

    .line 97
    new-instance v7, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)V

    .line 101
    :try_start_c0
    iget-object v8, v1, Lcom/ss/ugc/effectplatform/download/DownloadManager;->writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getContentLength()J

    move-result-wide v9

    invoke-interface {v8, v7, v9, v10, v11}, Lcom/ss/ugc/effectplatform/download/IWriteDisk;->execWrite(Lbytekn/foundation/io/file/FileInputStream;JLcom/ss/ugc/effectplatform/download/DownloadListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_148

    .line 103
    sget-object v7, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {v7, v0}, Lcom/ss/ugc/effectplatform/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d2} :catch_146

    .line 111
    invoke-virtual {v12, v7, v8}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setFileSize(J)V

    .line 113
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v12, v9, v10}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setWriteToDiskTimeMillsCost(J)V

    const-wide/16 v4, 0x0

    cmp-long v0, v7, v4

    if-lez v0, :cond_114

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeToDisk success! url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getWriteToDiskTimeMillsCost()J

    move-result-wide v3

    invoke-direct {v1, v0, v3, v4}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->printLog(Ljava/lang/String;J)V

    .line 122
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v13

    invoke-virtual {v12, v2, v3}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadTimeMillsCost(J)V

    .line 123
    const-string/jumbo v0, "unnecessary to unzip, download success"

    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getDownloadTimeMillsCost()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->printLog(Ljava/lang/String;J)V

    if-eqz v11, :cond_145

    .line 124
    invoke-interface {v11, v12}, Lcom/ss/ugc/effectplatform/download/DownloadListener;->onFinish(Lcom/ss/ugc/effectplatform/download/DownloadResult;)V

    goto :goto_145

    .line 162
    :cond_114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeToDisk failed! url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getWriteToDiskTimeMillsCost()J

    move-result-wide v3

    invoke-direct {v1, v0, v3, v4}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->printLog(Ljava/lang/String;J)V

    .line 165
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v13

    invoke-virtual {v12, v0, v1}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadTimeMillsCost(J)V

    .line 166
    new-instance v0, Lbytekn/foundation/io/file/IOException;

    const-string/jumbo v1, "write file to disk failed!"

    invoke-direct {v0, v1}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadException(Ljava/lang/Exception;)V

    if-eqz v11, :cond_145

    .line 167
    invoke-interface {v11, v12}, Lcom/ss/ugc/effectplatform/download/DownloadListener;->onFinish(Lcom/ss/ugc/effectplatform/download/DownloadResult;)V

    :cond_145
    :goto_145
    return-wide v7

    :catch_146
    move-exception v0

    goto :goto_149

    :cond_148
    return-wide v15

    .line 105
    :goto_149
    instance-of v1, v0, Lcom/ss/ugc/effectplatform/exception/MD5Exception;

    if-nez v1, :cond_17d

    instance-of v1, v0, Lcom/ss/ugc/effectplatform/exception/CurrentEditingException;

    if-nez v1, :cond_17d

    instance-of v1, v0, Lbytekn/foundation/io/file/IOException;

    if-nez v1, :cond_17d

    .line 106
    new-instance v1, Lbytekn/foundation/io/file/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_17d
    throw v0

    .line 82
    :cond_17e
    :goto_17e
    sget-object v2, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v13

    invoke-virtual {v12, v4, v5}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadTimeMillsCost(J)V

    if-eqz v0, :cond_1b2

    .line 84
    new-instance v2, Lcom/ss/ugc/effectplatform/exception/NetException;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_197

    goto :goto_1ac

    .line 85
    :cond_197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    :goto_1ac
    invoke-direct {v2, v4, v5}, Lcom/ss/ugc/effectplatform/exception/NetException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadException(Ljava/lang/Exception;)V

    .line 87
    :cond_1b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchFromNetwork failed! url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getDownloadTimeMillsCost()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->printLog(Ljava/lang/String;J)V

    if-eqz v11, :cond_1cf

    .line 88
    invoke-interface {v11, v12}, Lcom/ss/ugc/effectplatform/download/DownloadListener;->onFinish(Lcom/ss/ugc/effectplatform/download/DownloadResult;)V

    :cond_1cf
    return-wide v15

    .line 171
    :cond_1d0
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v13

    invoke-virtual {v12, v4, v5}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadTimeMillsCost(J)V

    .line 172
    new-instance v0, Lcom/ss/ugc/effectplatform/exception/UrlNotExistException;

    const-string v2, "invalid url"

    invoke-direct {v0, v2}, Lcom/ss/ugc/effectplatform/exception/UrlNotExistException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->setDownloadException(Ljava/lang/Exception;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failed! url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getDownloadTimeMillsCost()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->printLog(Ljava/lang/String;J)V

    if-eqz v11, :cond_1ff

    .line 174
    invoke-interface {v11, v12}, Lcom/ss/ugc/effectplatform/download/DownloadListener;->onFinish(Lcom/ss/ugc/effectplatform/download/DownloadResult;)V

    :cond_1ff
    return-wide v15
.end method
