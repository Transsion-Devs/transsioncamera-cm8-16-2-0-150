.class public abstract Lcom/obs/services/internal/RestStorageService;
.super Lcom/obs/services/internal/RestConnectionService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/RestStorageService$RequestInfo;,
        Lcom/obs/services/internal/RestStorageService$RetryController;,
        Lcom/obs/services/internal/RestStorageService$RetryCounter;
    }
.end annotation


# static fields
.field protected static final CAN_USE_STANDARD_HTTP_HEADERS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_RETRIABLE_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REQUEST_TIMEOUT_CODE:Ljava/lang/String; = "RequestTimeout"

.field private static final UNEXPECTED_END_OF_STREAM_EXCEPTION:Ljava/lang/String; = "unexpected end of stream"

.field private static final log:Lcom/obs/log/ILogger;

.field private static userHeaders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    const-class v0, Lcom/obs/services/internal/RestStorageService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/obs/services/internal/RestStorageService;->NON_RETRIABLE_CLASSES:Ljava/util/Set;

    .line 74
    const-class v1, Ljava/net/UnknownHostException;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/obs/services/internal/RestStorageService;->userHeaders:Ljava/lang/ThreadLocal;

    .line 81
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/obs/services/internal/RestStorageService;->CAN_USE_STANDARD_HTTP_HEADERS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/obs/services/internal/RestConnectionService;-><init>()V

    return-void
.end method

.method private addBaseHeaders(Lokhttp3/Request;Ljava/lang/String;Z)Lokhttp3/Request;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    .line 712
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/internal/RestStorageService;->authorizeHttpRequest(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    goto :goto_2f

    .line 714
    :cond_8
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 715
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p3

    const-string v1, "Authorization"

    invoke-virtual {p3, v1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 716
    invoke-direct {p0, p2, p1, v0}, Lcom/obs/services/internal/RestStorageService;->setHost(Lokhttp3/Request$Builder;Lokhttp3/Request;Ljava/lang/String;)Ljava/net/URI;

    .line 717
    const-string p0, "User-Agent"

    const-string p1, "obs-sdk-java/3.23.9"

    invoke-virtual {p2, p0, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 718
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 721
    :goto_2f
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    .line 723
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 724
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 725
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->isInfoLoggable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 726
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 727
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_61
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 728
    sget-object v1, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Headers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_61

    :cond_8c
    return-object p0
.end method

.method private addUserHeaderToRequest(Ljava/lang/String;Lokhttp3/Request$Builder;Z)V
    .registers 6

    .line 112
    sget-object v0, Lcom/obs/services/internal/RestStorageService;->userHeaders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0, p3}, Lcom/obs/services/internal/RestStorageService;->formatMetadataAndHeader(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 115
    sget-object p3, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added request header to connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/obs/services/internal/utils/ServiceUtils;->getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_6a
    return-void
.end method

.method private createRedirectRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZILjava/lang/String;)Lokhttp3/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 662
    const-string v0, "?"

    invoke-virtual {p7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 663
    invoke-virtual {p0, p7, p2, p5}, Lcom/obs/services/internal/RestConnectionService;->addRequestParametersToUrlPath(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p7

    :cond_c
    if-eqz p4, :cond_19

    .line 666
    invoke-direct {p0, p7}, Lcom/obs/services/internal/RestStorageService;->isLocationHostOnly(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 667
    invoke-virtual {p0, p1, p3, p7}, Lcom/obs/services/internal/RestStorageService;->authorizeHttpRequest(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 669
    :cond_19
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    const/16 p3, 0x12e

    if-ne p6, p3, :cond_46

    .line 671
    sget-object p3, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    .line 672
    invoke-virtual {p3}, Lcom/obs/services/model/HttpMethodEnum;->getOperationType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 673
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p3

    const-string p4, "Authorization"

    invoke-virtual {p3, p4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p3

    .line 674
    invoke-virtual {p3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p3

    .line 675
    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 678
    :cond_46
    invoke-direct {p0, p2, p1, p7}, Lcom/obs/services/internal/RestStorageService;->setHost(Lokhttp3/Request$Builder;Lokhttp3/Request;Ljava/lang/String;)Ljava/net/URI;

    .line 680
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private createServiceException(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/internal/ServiceException;
    .registers 3

    .line 644
    invoke-direct {p0, p2}, Lcom/obs/services/internal/RestStorageService;->readResponseMessage(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    .line 645
    new-instance p2, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p2, p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private doRetry(Lokhttp3/Response;Ljava/lang/String;Lcom/obs/services/internal/RestStorageService$RetryCounter;)V
    .registers 5

    .line 636
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->addErrorCount()V

    .line 637
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result v0

    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p3

    if-gt v0, p3, :cond_11

    .line 640
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    return-void

    .line 638
    :cond_11
    invoke-direct {p0, p2, p1}, Lcom/obs/services/internal/RestStorageService;->createServiceException(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/internal/ServiceException;

    move-result-object p0

    throw p0
.end method

.method private executeRequest(Lokhttp3/Call;Lokhttp3/Request;Lcom/obs/services/internal/RestStorageService$RetryController;)Lokhttp3/Response;
    .registers 10

    .line 573
    const-string v0, " ms to apply http request"

    const-string v1, "OkHttp cost "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 576
    :try_start_8
    iget-object v4, p0, Lcom/obs/services/internal/RestConnectionService;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 577
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_11
    .catch Lcom/obs/services/internal/io/UnrecoverableIOException; {:try_start_8 .. :try_end_11} :catch_3d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_3b
    .catchall {:try_start_8 .. :try_end_11} :catchall_39

    .line 598
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 599
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_38

    .line 600
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_38
    return-object p1

    :catchall_39
    move-exception p1

    goto :goto_ac

    :catch_3b
    move-exception v4

    goto :goto_3f

    :catch_3d
    move-exception p1

    goto :goto_a0

    .line 585
    :goto_3f
    :try_start_3f
    invoke-virtual {p3, v4}, Lcom/obs/services/internal/RestStorageService$RetryController;->setLastException(Ljava/lang/Exception;)V

    .line 586
    invoke-direct {p0, v4, p2, p3, p1}, Lcom/obs/services/internal/RestStorageService;->retryOnIOException(Ljava/io/IOException;Lokhttp3/Request;Lcom/obs/services/internal/RestStorageService$RetryController;Lokhttp3/Call;)V

    .line 591
    sget-object p1, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 592
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying connection that failed with error, attempt number "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 592
    invoke-interface {p1, p2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V
    :try_end_79
    .catchall {:try_start_3f .. :try_end_79} :catchall_39

    .line 598
    :cond_79
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 599
    invoke-interface {p1}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_9e

    .line 600
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_9e
    const/4 p0, 0x0

    return-object p0

    .line 579
    :goto_a0
    :try_start_a0
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getLastException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_ab

    .line 580
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getLastException()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    .line 582
    :cond_ab
    throw p1
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_39

    .line 598
    :goto_ac
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 599
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_d3

    .line 600
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    .line 602
    :cond_d3
    throw p1
.end method

.method private formatMetadataAndHeader(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_a8

    .line 125
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_f

    .line 131
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestHeaderPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_67

    const-string v3, "x-obs-"

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_67

    sget-object v3, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_67
    :try_start_67
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_78

    if-eqz p3, :cond_78

    .line 141
    invoke-static {v2, v4}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v2

    :cond_78
    if-eqz p3, :cond_86

    if-nez v1, :cond_7e

    .line 145
    const-string v1, ""

    :cond_7e
    invoke-static {v1, v4}, Lcom/obs/services/internal/utils/RestUtils;->uriEncode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 147
    :cond_86
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_67 .. :try_end_89} :catch_8a

    goto :goto_f

    .line 150
    :catch_8a
    sget-object v1, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_a8
    return-object v0
.end method

.method private handleRedirectResponse(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZLcom/obs/log/InterfaceLogBean;Lokhttp3/Response;Lcom/obs/services/internal/RestStorageService$RetryController;)Lokhttp3/Request;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/obs/log/InterfaceLogBean;",
            "Lokhttp3/Response;",
            "Lcom/obs/services/internal/RestStorageService$RetryController;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 548
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v7

    .line 549
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 550
    invoke-static {v8}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 557
    invoke-direct/range {v1 .. v8}, Lcom/obs/services/internal/RestStorageService;->createRedirectRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZILjava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    const/4 p2, 0x1

    move-object/from16 p3, p8

    .line 560
    invoke-virtual {p3, p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->setWasRecentlyRedirected(Z)V

    .line 562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exceeded 3xx redirect limit ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 566
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p3

    .line 562
    invoke-direct {p0, v0, p2, p3}, Lcom/obs/services/internal/RestStorageService;->doRetry(Lokhttp3/Response;Ljava/lang/String;Lcom/obs/services/internal/RestStorageService$RetryCounter;)V

    return-object p1

    .line 551
    :cond_48
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string p1, "Try to redirect, but location is null!"

    invoke-direct {p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request Error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 552
    invoke-virtual {p6, p1, p2}, Lcom/obs/log/InterfaceLogBean;->setResponseInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    throw p0
.end method

.method private handleRequestErrorResponse(Lokhttp3/Response;Lcom/obs/services/internal/RestStorageService$RetryController;)V
    .registers 5

    .line 505
    const-string v0, "Request Error."

    invoke-direct {p0, v0, p1}, Lcom/obs/services/internal/RestStorageService;->createServiceException(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/internal/ServiceException;

    move-result-object p0

    .line 507
    const-string p1, "RequestTimeout"

    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 511
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->addErrorCount()V

    .line 512
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result p1

    .line 513
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result v0

    if-ge p1, v0, :cond_60

    .line 514
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retrying connection that failed with RequestTimeout error, attempt number "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    :cond_5f
    return-void

    .line 520
    :cond_60
    sget-object p1, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exceeded maximum number of retries for RequestTimeout errors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 521
    invoke-interface {p1, p2}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    .line 525
    :cond_84
    throw p0

    .line 508
    :cond_85
    throw p0
.end method

.method private handleServerErrorResponse(Lcom/obs/log/InterfaceLogBean;Lokhttp3/Response;Lcom/obs/services/internal/RestStorageService$RetryController;I)V
    .registers 6

    .line 531
    const-string v0, "Internal Server error(s)."

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v0, p4}, Lcom/obs/log/InterfaceLogBean;->setResponseInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget-object p4, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p4}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 533
    invoke-interface {p4, p1}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    .line 536
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Encountered too many 5xx errors ("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "), aborting request."

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p4

    .line 536
    invoke-direct {p0, p2, p1, p4}, Lcom/obs/services/internal/RestStorageService;->doRetry(Lokhttp3/Response;Ljava/lang/String;Lcom/obs/services/internal/RestStorageService$RetryCounter;)V

    .line 542
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/RestStorageService;->sleepBeforeRetry(I)V

    return-void
.end method

.method private handleThrowable(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Call;Ljava/lang/Throwable;Z)Lcom/obs/services/internal/ServiceException;
    .registers 10

    .line 198
    instance-of v0, p5, Lcom/obs/services/internal/ServiceException;

    if-eqz v0, :cond_7

    check-cast p5, Lcom/obs/services/internal/ServiceException;

    goto :goto_1e

    :cond_7
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p5, v0

    .line 200
    :goto_1e
    const-string v0, "Host"

    invoke-virtual {p2, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/obs/services/internal/ServiceException;->setRequestHost(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/obs/services/internal/ServiceException;->setRequestVerb(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/obs/services/internal/ServiceException;->setRequestPath(Ljava/lang/String;)V

    if-eqz p3, :cond_9a

    .line 205
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 206
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/obs/services/internal/ServiceException;->setResponseCode(I)V

    .line 207
    invoke-virtual {p3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/obs/services/internal/ServiceException;->setResponseStatus(Ljava/lang/String;)V

    .line 208
    const-string p2, "Date"

    invoke-virtual {p3, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/obs/services/internal/ServiceException;->setResponseDate(Ljava/lang/String;)V

    .line 209
    const-string p2, "x-reserved-indicator"

    invoke-virtual {p3, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/obs/services/internal/ServiceException;->setErrorIndicator(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/RestStorageService;->convertHeadersToMap(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestHeaderPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {p2, v0, v1, p6}, Lcom/obs/services/internal/utils/ServiceUtils;->cleanRestMetadataMapV2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/obs/services/internal/ServiceException;->setResponseHeaders(Ljava/util/Map;)V

    .line 213
    invoke-virtual {p5}, Lcom/obs/services/internal/ServiceException;->getErrorRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9a

    .line 214
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p2

    invoke-interface {p2}, Lcom/obs/services/internal/IHeaders;->requestIdHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->requestId2Header()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-virtual {p5, p2, p0}, Lcom/obs/services/internal/ServiceException;->setRequestAndHostIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_9a
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request failed, Response code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; Request ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p5}, Lcom/obs/services/internal/ServiceException;->getErrorRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; Request path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p5}, Lcom/obs/services/internal/ServiceException;->getRequestPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 224
    :cond_d2
    invoke-interface {p0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 225
    const-string p1, "Exception detail."

    invoke-interface {p0, p1, p5}, Lcom/obs/log/ILogger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_dd
    if-eqz p4, :cond_e2

    .line 229
    invoke-interface {p4}, Lokhttp3/Call;->cancel()V

    :cond_e2
    return-object p5
.end method

.method private initRequest(Ljava/lang/String;Lokhttp3/Request;Z)Lokhttp3/Request;
    .registers 5

    .line 736
    sget-object v0, Lcom/obs/services/internal/RestStorageService;->userHeaders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/obs/services/internal/RestStorageService;->userHeaders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 738
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 740
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/internal/RestStorageService;->addUserHeaderToRequest(Ljava/lang/String;Lokhttp3/Request$Builder;Z)V

    .line 742
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_22
    return-object p2
.end method

.method private isLocationHostOnly(Ljava/lang/String;)Z
    .registers 3

    .line 238
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 241
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    if-eqz p0, :cond_20

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private isProviderCredentialsInValid(Lcom/obs/services/internal/security/ProviderCredentials;)Z
    .registers 2

    if-eqz p1, :cond_2b

    .line 756
    invoke-virtual {p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getObsCredentialsProvider()Lcom/obs/services/IObsCredentialsProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 757
    invoke-virtual {p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/security/BasicSecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 758
    invoke-virtual {p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private parseDate(Ljava/lang/String;Lokhttp3/Request;Z)Ljava/util/Date;
    .registers 4

    .line 784
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->dateHeader()Ljava/lang/String;

    move-result-object p0

    .line 785
    invoke-virtual {p2, p0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    if-eqz p3, :cond_1b

    .line 789
    :try_start_10
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getLongDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :catch_19
    move-exception p1

    goto :goto_20

    :cond_1b
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_1f} :catch_19

    return-object p0

    .line 791
    :goto_20
    new-instance p2, Lcom/obs/services/internal/ServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not well-format"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 794
    :cond_37
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method private readResponseMessage(Lokhttp3/Response;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    .line 651
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 652
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p1

    goto :goto_13

    :cond_12
    return-object p0

    .line 655
    :goto_13
    sget-object v0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    const-string v1, "read response body failed."

    invoke-interface {v0, v1, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private retryOnIOException(Ljava/io/IOException;Lokhttp3/Request;Lcom/obs/services/internal/RestStorageService$RetryController;Lokhttp3/Call;)V
    .registers 6

    .line 612
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getUnexpectedErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/obs/services/internal/RestStorageService;->retryRequestForUnexpectedException(Ljava/io/IOException;Lcom/obs/services/internal/RestStorageService$RetryCounter;Lokhttp3/Call;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 613
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 614
    const-string p1, "unexpected end of stream excepiton."

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    :cond_17
    return-void

    .line 619
    :cond_18
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/obs/services/internal/RestStorageService;->retryRequest(Ljava/io/IOException;Lcom/obs/services/internal/RestStorageService$RetryCounter;Lokhttp3/Request;Lokhttp3/Call;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 620
    invoke-virtual {p3}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/RestStorageService;->sleepBeforeRetry(I)V

    return-void

    .line 624
    :cond_2e
    instance-of p0, p1, Ljava/net/ConnectException;

    if-nez p0, :cond_38

    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_37

    goto :goto_38

    .line 632
    :cond_37
    throw p1

    .line 625
    :cond_38
    :goto_38
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string p2, "Request error. "

    invoke-direct {p0, p2, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p3, 0x198

    .line 626
    invoke-virtual {p0, p3}, Lcom/obs/services/internal/ServiceException;->setResponseCode(I)V

    .line 627
    const-string p3, "RequestTimeOut"

    invoke-virtual {p0, p3}, Lcom/obs/services/internal/ServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ServiceException;->setErrorMessage(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, p2}, Lcom/obs/services/internal/ServiceException;->setResponseStatus(Ljava/lang/String;)V

    .line 630
    throw p0
.end method

.method private retryRequestForUnexpectedException(Ljava/io/IOException;Lcom/obs/services/internal/RestStorageService$RetryCounter;Lokhttp3/Call;)Z
    .registers 5

    .line 183
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->addErrorCount()V

    const/4 p0, 0x0

    if-eqz p1, :cond_24

    .line 185
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p2

    if-le v0, p2, :cond_11

    goto :goto_24

    .line 189
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unexpected end of stream"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    return p0

    .line 193
    :cond_1e
    invoke-interface {p3}, Lokhttp3/Call;->isCanceled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    :cond_24
    :goto_24
    return p0
.end method

.method private setHost(Lokhttp3/Request$Builder;Lokhttp3/Request;Ljava/lang/String;)Ljava/net/URI;
    .registers 6

    if-nez p3, :cond_b

    .line 764
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p2

    goto :goto_12

    .line 766
    :cond_b
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 767
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 771
    :goto_12
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsOnly()Z

    move-result p3

    const-string v0, ":"

    const-string v1, ""

    if-eqz p3, :cond_35

    .line 772
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpsPort()I

    move-result p0

    const/16 p3, 0x1bb

    if-ne p0, p3, :cond_25

    goto :goto_4d

    .line 773
    :cond_25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    .line 775
    :cond_35
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->getHttpPort()I

    move-result p0

    const/16 p3, 0x50

    if-ne p0, p3, :cond_3e

    goto :goto_4d

    .line 776
    :cond_3e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    :goto_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "Host"

    invoke-virtual {p1, p3, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object p2
.end method

.method private sleepBeforeRetry(I)V
    .registers 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    .line 1018
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-long v0, p0

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    .line 1019
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Internal Server error(s), will retry in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 1024
    :cond_35
    :try_start_35
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p0

    .line 1026
    sget-object p1, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    const-string v0, "thread sleep failed."

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private transOEFResponse(Lokhttp3/Response;Lcom/obs/log/InterfaceLogBean;II)V
    .registers 7

    const/16 v0, 0x190

    const/16 v1, 0x1f4

    if-lt p4, v0, :cond_4c

    if-lt p4, v1, :cond_9

    goto :goto_4c

    .line 688
    :cond_9
    invoke-direct {p0, p1}, Lcom/obs/services/internal/RestStorageService;->readResponseMessage(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    .line 690
    new-instance p1, Lcom/obs/services/internal/OefExceptionMessage;

    invoke-direct {p1}, Lcom/obs/services/internal/OefExceptionMessage;-><init>()V

    .line 691
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/OefExceptionMessage;

    .line 692
    new-instance p2, Lcom/obs/services/internal/ServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request Error."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/obs/services/internal/OefExceptionMessage;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/obs/services/internal/ServiceException;->setErrorMessage(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Lcom/obs/services/internal/OefExceptionMessage;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/obs/services/internal/ServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/obs/services/internal/OefExceptionMessage;->getRequestId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/obs/services/internal/ServiceException;->setErrorRequestId(Ljava/lang/String;)V

    .line 698
    throw p2

    :cond_4c
    :goto_4c
    if-lt p4, v1, :cond_7d

    .line 700
    const-string v0, "Internal Server error(s)."

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lcom/obs/log/InterfaceLogBean;->setResponseInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    sget-object p4, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p4}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 702
    invoke-interface {p4, p2}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    .line 704
    :cond_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Encountered too many 5xx errors ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "), aborting request."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/obs/services/internal/RestStorageService;->createServiceException(Ljava/lang/String;Lokhttp3/Response;)Lcom/obs/services/internal/ServiceException;

    move-result-object p0

    throw p0

    :cond_7d
    return-void
.end method

.method private tryRequest(Ljava/util/Map;Ljava/lang/String;ZZLcom/obs/services/internal/RestStorageService$RequestInfo;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/obs/services/internal/RestStorageService$RequestInfo;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v9, p5

    .line 427
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v1

    move/from16 v2, p6

    invoke-direct {p0, p2, v1, v2}, Lcom/obs/services/internal/RestStorageService;->initRequest(Ljava/lang/String;Lokhttp3/Request;Z)Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->setRequest(Lokhttp3/Request;)V

    .line 429
    sget-object v1, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request for \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-interface {v1, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    .line 434
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 436
    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->isInfoLoggable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 438
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 439
    sget-object v6, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_73

    .line 444
    :cond_9e
    new-instance v8, Lcom/obs/services/internal/RestStorageService$RetryController;

    new-instance v1, Lcom/obs/services/internal/RestStorageService$RetryCounter;

    iget-object v2, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v4, "httpclient.retry-max"

    const/4 v5, 0x3

    .line 445
    invoke-virtual {v2, v4, v5}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;-><init>(I)V

    new-instance v2, Lcom/obs/services/internal/RestStorageService$RetryCounter;

    iget-object v4, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v5, "httpclient.max-retry-on-unexpected-end-exception"

    const/4 v6, -0x1

    .line 447
    invoke-virtual {v4, v5, v6}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v4}, Lcom/obs/services/internal/RestStorageService$RetryCounter;-><init>(I)V

    const/4 v10, 0x0

    invoke-direct {v8, v1, v2, v10}, Lcom/obs/services/internal/RestStorageService$RetryController;-><init>(Lcom/obs/services/internal/RestStorageService$RetryCounter;Lcom/obs/services/internal/RestStorageService$RetryCounter;Z)V

    .line 453
    :goto_c0
    invoke-virtual {v8}, Lcom/obs/services/internal/RestStorageService$RetryController;->isWasRecentlyRedirected()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 454
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v1

    move/from16 v4, p3

    invoke-direct {p0, v1, p2, v4}, Lcom/obs/services/internal/RestStorageService;->addBaseHeaders(Lokhttp3/Request;Ljava/lang/String;Z)Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->setRequest(Lokhttp3/Request;)V

    goto :goto_d9

    :cond_d4
    move/from16 v4, p3

    .line 456
    invoke-virtual {v8, v10}, Lcom/obs/services/internal/RestStorageService$RetryController;->setWasRecentlyRedirected(Z)V

    .line 459
    :goto_d9
    iget-object v1, p0, Lcom/obs/services/internal/RestConnectionService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->setCall(Lokhttp3/Call;)V

    .line 460
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getCall()Lokhttp3/Call;

    move-result-object v1

    .line 461
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v2

    .line 460
    invoke-direct {p0, v1, v2, v8}, Lcom/obs/services/internal/RestStorageService;->executeRequest(Lokhttp3/Call;Lokhttp3/Request;Lcom/obs/services/internal/RestStorageService$RetryController;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->setResponse(Lokhttp3/Response;)V

    .line 462
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v1

    if-nez v1, :cond_fc

    goto :goto_c0

    .line 466
    :cond_fc
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    .line 467
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "][request-id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {p0, p2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v7

    invoke-interface {v7}, Lcom/obs/services/internal/IHeaders;->requestIdHeader()Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v6, v7, v11}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    invoke-virtual {v2, v5}, Lcom/obs/log/InterfaceLogBean;->setRespParams(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v2

    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    sget-object v5, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v5}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_189

    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'. Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", ResponseCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Headers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-interface {v5, v6}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 476
    :cond_189
    invoke-interface {v5}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_1b9

    .line 477
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_1b9

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entity length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/obs/log/ILogger;->trace(Ljava/lang/CharSequence;)V

    :cond_1b9
    if-eqz p4, :cond_1d7

    .line 482
    const-string v5, "application/json"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 483
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object v3

    .line 484
    invoke-virtual {v8}, Lcom/obs/services/internal/RestStorageService$RetryController;->getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result v4

    .line 483
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/obs/services/internal/RestStorageService;->transOEFResponse(Lokhttp3/Response;Lcom/obs/log/InterfaceLogBean;II)V

    return-void

    :cond_1d7
    const/16 v2, 0x12c

    const/16 v5, 0x130

    const/16 v6, 0x190

    if-lt v1, v2, :cond_1fd

    if-ge v1, v6, :cond_1fd

    if-eq v1, v5, :cond_1fd

    .line 488
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v1

    .line 490
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object v6

    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    .line 488
    invoke-direct/range {v0 .. v8}, Lcom/obs/services/internal/RestStorageService;->handleRedirectResponse(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZLcom/obs/log/InterfaceLogBean;Lokhttp3/Response;Lcom/obs/services/internal/RestStorageService$RetryController;)Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->setRequest(Lokhttp3/Request;)V

    goto/16 :goto_c0

    :cond_1fd
    const/16 v2, 0x1f4

    if-lt v1, v6, :cond_203

    if-lt v1, v2, :cond_205

    :cond_203
    if-ne v1, v5, :cond_20e

    .line 492
    :cond_205
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lcom/obs/services/internal/RestStorageService;->handleRequestErrorResponse(Lokhttp3/Response;Lcom/obs/services/internal/RestStorageService$RetryController;)V

    goto/16 :goto_c0

    :cond_20e
    if-lt v1, v2, :cond_21d

    .line 494
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object v2

    .line 495
    invoke-virtual {v9}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v3

    .line 494
    invoke-direct {p0, v2, v3, v8, v1}, Lcom/obs/services/internal/RestStorageService;->handleServerErrorResponse(Lcom/obs/log/InterfaceLogBean;Lokhttp3/Response;Lcom/obs/services/internal/RestStorageService$RetryController;I)V

    goto/16 :goto_c0

    :cond_21d
    return-void
.end method


# virtual methods
.method protected addRequestHeadersToConnection(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_76

    .line 1074
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1075
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1076
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v0, :cond_2b

    goto :goto_a

    .line 1080
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1082
    sget-object v2, Lcom/obs/services/internal/Constants;->ALLOWED_REQUEST_HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1083
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getRestHeaderPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_a

    .line 1086
    :cond_4a
    invoke-virtual {p2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1087
    sget-object v2, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added request header to connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_76
    return-void
.end method

.method protected authorizeHttpRequest(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 800
    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    const-string v4, "Authorization"

    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    .line 801
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v5

    .line 802
    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-object/from16 v3, p3

    .line 804
    invoke-direct {v0, v5, v1, v3}, Lcom/obs/services/internal/RestStorageService;->setHost(Lokhttp3/Request$Builder;Lokhttp3/Request;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 805
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 807
    invoke-static {}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->getInstance()Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    move-result-object v7

    .line 808
    invoke-virtual {v7}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v7

    .line 809
    invoke-direct {v0, v7}, Lcom/obs/services/internal/RestStorageService;->isProviderCredentialsInValid(Lcom/obs/services/internal/security/ProviderCredentials;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 810
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v7

    :goto_3b
    move-object v13, v7

    goto :goto_58

    .line 812
    :cond_3d
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/obs/services/internal/security/ProviderCredentials;->setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V

    .line 813
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 814
    invoke-virtual {v7}, Lcom/obs/services/internal/security/ProviderCredentials;->getAuthType()Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-virtual {v7, v8}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/util/LinkedHashMap;)V

    goto :goto_3b

    .line 817
    :goto_58
    invoke-direct {v0, v13}, Lcom/obs/services/internal/RestStorageService;->isProviderCredentialsInValid(Lcom/obs/services/internal/security/ProviderCredentials;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 818
    sget-object v0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 819
    const-string v2, "Service has no Credential and is un-authenticated, skipping authorization"

    invoke-interface {v0, v2}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_6b
    return-object v1

    .line 824
    :cond_6c
    invoke-virtual {v13, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v7

    sget-object v8, Lcom/obs/services/model/AuthTypeEnum;->V4:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v7, v8, :cond_76

    const/4 v7, 0x1

    goto :goto_77

    :cond_76
    const/4 v7, 0x0

    .line 826
    :goto_77
    invoke-direct {v0, v2, v1, v7}, Lcom/obs/services/internal/RestStorageService;->parseDate(Ljava/lang/String;Lokhttp3/Request;Z)Ljava/util/Date;

    move-result-object v14

    .line 828
    const-string v8, "Date"

    invoke-static {v14}, Lcom/obs/services/internal/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 830
    invoke-virtual {v13}, Lcom/obs/services/internal/security/ProviderCredentials;->getSecurityKey()Lcom/obs/services/internal/security/BasicSecurityKey;

    move-result-object v15

    .line 831
    invoke-virtual {v15}, Lcom/obs/services/internal/security/BasicSecurityKey;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    .line 832
    invoke-static {v8}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 833
    invoke-virtual {v0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v9

    invoke-interface {v9}, Lcom/obs/services/internal/IHeaders;->securityTokenHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 836
    :cond_9d
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v8

    .line 837
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->getEndpoint()Ljava/lang/String;

    move-result-object v9

    .line 839
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->isPathStyle()Z

    move-result v10

    if-eqz v10, :cond_b1

    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v10

    if-eqz v10, :cond_f4

    :cond_b1
    if-eqz v6, :cond_f4

    if-nez v7, :cond_f4

    .line 840
    invoke-virtual {v0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result v10

    const-string v11, "/"

    if-eqz v10, :cond_d0

    .line 841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_f4

    .line 842
    :cond_d0
    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f4

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f4

    .line 843
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 848
    :cond_f4
    :goto_f4
    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_114

    .line 849
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_114

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_114
    move-object v12, v8

    .line 853
    sget-object v3, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_131

    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For creating canonical string, using uri: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    :cond_131
    if-eqz v7, :cond_173

    .line 859
    invoke-virtual {v0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/services/internal/IHeaders;->contentSha256Header()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/obs/services/internal/utils/V4Authentication;->CONTENT_SHA256:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 860
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    .line 861
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/RestStorageService;->convertHeadersToMap(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v11

    .line 860
    invoke-static/range {v10 .. v15}, Lcom/obs/services/internal/utils/V4Authentication;->makeServiceCanonicalString(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/obs/services/internal/security/ProviderCredentials;Ljava/util/Date;Lcom/obs/services/internal/security/BasicSecurityKey;)Lcom/obs/services/internal/utils/IAuthentication;

    move-result-object v0

    .line 862
    invoke-interface {v3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanonicalRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/obs/services/internal/utils/IAuthentication;->getCanonicalRequest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_19a

    .line 866
    :cond_173
    sget-object v6, Lcom/obs/services/internal/Constants;->AUTHTICATION_MAP:Ljava/util/Map;

    invoke-virtual {v13, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/internal/utils/AbstractAuthentication;

    .line 867
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/RestStorageService;->convertHeadersToMap(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v17

    sget-object v19, Lcom/obs/services/internal/Constants;->ALLOWED_RESOURCE_PARAMTER_NAMES:Ljava/util/List;

    move-object/from16 v18, v12

    move-object/from16 v20, v15

    move-object v15, v2

    invoke-virtual/range {v15 .. v20}, Lcom/obs/services/internal/utils/AbstractAuthentication;->makeAuthorizationString(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/obs/services/internal/security/BasicSecurityKey;)Lcom/obs/services/internal/utils/IAuthentication;

    move-result-object v0

    .line 870
    :cond_19a
    :goto_19a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringToSign (\'|\' is a newline): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-interface {v0}, Lcom/obs/services/internal/utils/IAuthentication;->getStringToSign()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    const/16 v7, 0x7c

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-interface {v3, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 873
    invoke-interface {v0}, Lcom/obs/services/internal/utils/IAuthentication;->getAuthorization()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-virtual {v5, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 875
    const-string v0, "User-Agent"

    const-string v1, "obs-sdk-java/3.23.9"

    invoke-virtual {v5, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 876
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method protected convertHeadersToMap(Lokhttp3/Headers;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1031
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1032
    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1033
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1034
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_46
    return-object p0
.end method

.method protected getFileSystemDelimiter()Ljava/lang/String;
    .registers 3

    .line 1107
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "filesystem.delimiter"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;
    .registers 3

    .line 1099
    sget-object v0, Lcom/obs/services/internal/Constants;->CONVERTOR_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/internal/IConvertor;

    return-object p0
.end method

.method protected getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;
    .registers 3

    .line 1095
    sget-object v0, Lcom/obs/services/internal/Constants;->HEADERS_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/internal/IHeaders;

    return-object p0
.end method

.method protected getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 1044
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    return-object p0
.end method

.method protected getRestHeaderPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 752
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->headerPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getRestMetadataPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 748
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/services/internal/IHeaders;->headerMetaPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
    .registers 1

    .line 1068
    new-instance p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    invoke-direct {p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;-><init>()V

    return-object p0
.end method

.method protected isAuthTypeNegotiation()Z
    .registers 3

    .line 1103
    iget-object p0, p0, Lcom/obs/services/internal/RestConnectionService;->obsProperties:Lcom/obs/services/internal/ObsProperties;

    const-string v0, "httpclient.auth-type-negotiation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/ObsProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;
    .registers 14

    .line 398
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p5

    .line 399
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->isEncodeHeaders()Z

    move-result v2

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/obs/services/internal/RestStorageService;->renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 400
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getUserHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 401
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getUserHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p5}, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Request$Builder;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 403
    :cond_28
    invoke-virtual {p5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p5

    .line 404
    new-instance v6, Lcom/obs/services/internal/RestStorageService$RequestInfo;

    new-instance v0, Lcom/obs/log/InterfaceLogBean;

    const-string v1, "performRequest"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, p5, v0}, Lcom/obs/services/internal/RestStorageService$RequestInfo;-><init>(Lokhttp3/Request;Lcom/obs/log/InterfaceLogBean;)V

    .line 406
    :try_start_3a
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->isEncodeHeaders()Z

    move-result v7
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_7d

    move-object v1, p0

    move v4, p2

    move v5, p4

    .line 406
    :try_start_49
    invoke-direct/range {v1 .. v7}, Lcom/obs/services/internal/RestStorageService;->tryRequest(Ljava/util/Map;Ljava/lang/String;ZZLcom/obs/services/internal/RestStorageService$RequestInfo;Z)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_7a

    .line 413
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 414
    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 415
    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;)V

    .line 418
    :cond_70
    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object p0

    if-eqz p3, :cond_79

    .line 420
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    :cond_79
    return-object p0

    :catchall_7a
    move-exception v0

    :goto_7b
    move-object p0, v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move-object v1, p0

    goto :goto_7b

    .line 409
    :goto_80
    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object v3

    .line 410
    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object v4

    invoke-virtual {v6}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getCall()Lokhttp3/Call;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/internal/trans/NewTransResult;->isEncodeHeaders()Z

    move-result v7

    move-object v6, p0

    .line 409
    invoke-direct/range {v1 .. v7}, Lcom/obs/services/internal/RestStorageService;->handleThrowable(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Call;Ljava/lang/Throwable;Z)Lcom/obs/services/internal/ServiceException;

    move-result-object p0

    throw p0
.end method

.method protected performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;Z)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;Z)Lokhttp3/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 262
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 369
    invoke-virtual/range {v0 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZZ)Lokhttp3/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Lokhttp3/Response;"
        }
    .end annotation

    move-object v0, p1

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    .line 374
    new-instance p5, Lcom/obs/services/internal/RestStorageService$RequestInfo;

    new-instance v1, Lcom/obs/log/InterfaceLogBean;

    const-string v2, "performRequest"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Lcom/obs/log/InterfaceLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p5, v0, v1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;-><init>(Lokhttp3/Request;Lcom/obs/log/InterfaceLogBean;)V

    .line 376
    :try_start_13
    invoke-direct/range {p0 .. p6}, Lcom/obs/services/internal/RestStorageService;->tryRequest(Ljava/util/Map;Ljava/lang/String;ZZLcom/obs/services/internal/RestStorageService$RequestInfo;Z)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_3f

    .line 382
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 383
    invoke-virtual {p5}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/obs/log/InterfaceLogBean;->setRespTime(Ljava/util/Date;)V

    .line 384
    invoke-virtual {p5}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/obs/log/InterfaceLogBean;->setResultCode(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p5}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getReqBean()Lcom/obs/log/InterfaceLogBean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;)V

    .line 387
    :cond_3a
    invoke-virtual {p5}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :catchall_3f
    move-exception v0

    move-object p3, p2

    move-object p1, p5

    move-object p5, v0

    .line 378
    invoke-virtual {p1}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getRequest()Lokhttp3/Request;

    move-result-object p2

    move-object p4, p1

    move-object p1, p3

    .line 379
    invoke-virtual {p4}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getResponse()Lokhttp3/Response;

    move-result-object p3

    invoke-virtual {p4}, Lcom/obs/services/internal/RestStorageService$RequestInfo;->getCall()Lokhttp3/Call;

    move-result-object p4

    .line 378
    invoke-direct/range {p0 .. p6}, Lcom/obs/services/internal/RestStorageService;->handleThrowable(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Call;Ljava/lang/Throwable;Z)Lcom/obs/services/internal/ServiceException;

    move-result-object p0

    throw p0
.end method

.method protected performRequestWithoutSignature(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;Z)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 944
    invoke-virtual/range {v0 .. v7}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 951
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 952
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->DELETE:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 953
    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0, p3}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 956
    invoke-virtual {p0, v0, p7, p2}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 958
    invoke-virtual {p0, p1, p2, p4}, Lcom/obs/services/internal/RestStorageService;->renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    if-eqz p5, :cond_28

    .line 960
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Request$Builder;)V

    invoke-interface {p5, p4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 962
    :cond_28
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v2, p3

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;

    move-result-object p0

    if-eqz p6, :cond_3a

    .line 965
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    :cond_3a
    return-object p0
.end method

.method protected performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 974
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestForApiVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 1002
    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    const/4 v1, 0x1

    .line 1005
    :goto_12
    new-instance v2, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v2}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 1006
    sget-object v3, Lcom/obs/services/model/HttpMethodEnum;->HEAD:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 1007
    invoke-virtual {v2, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v2, p3}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 1010
    invoke-virtual {p0, v2, v0, v1}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 1012
    invoke-virtual {p0, p1, p2, p4}, Lcom/obs/services/internal/RestStorageService;->addRequestHeadersToConnection(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 1014
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p1}, Lcom/obs/services/internal/RestStorageService;->performRequestWithoutSignature(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 898
    invoke-virtual/range {v0 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lokhttp3/Response;"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 921
    invoke-virtual/range {v0 .. v7}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Lokhttp3/Response;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 927
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 928
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 929
    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p3}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 932
    invoke-virtual {p0, v0, p6, p2}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 934
    invoke-virtual {p0, p1, p2, p4}, Lcom/obs/services/internal/RestStorageService;->addRequestHeadersToConnection(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    if-eqz p5, :cond_28

    .line 936
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Request$Builder;)V

    invoke-interface {p5, p4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 938
    :cond_28
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v2, p3

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestGetForListBuckets(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 906
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 907
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 908
    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v0, p3}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 911
    invoke-virtual {p0, v0, p2, v1}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 913
    invoke-virtual {p0, p1, p2, p4}, Lcom/obs/services/internal/RestStorageService;->addRequestHeadersToConnection(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 914
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 882
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 883
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->HEAD:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 884
    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, p3}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 887
    invoke-virtual {p0, v0, p2, p2}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 888
    invoke-virtual {p0, p1, p2, p4}, Lcom/obs/services/internal/RestStorageService;->addRequestHeadersToConnection(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    if-eqz p5, :cond_28

    .line 890
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/obs/services/internal/RestStorageService$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Request$Builder;)V

    invoke-interface {p5, p4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 892
    :cond_28
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v2, p3

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZZ)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method protected performRestOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/Response;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 981
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 982
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->OPTIONS:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 983
    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0, p4}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 986
    invoke-virtual {p0, v0, p2, p2}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 988
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/RestStorageService;->addRequestHeadersToConnection(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 990
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p2, p4, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p0

    if-eqz p5, :cond_28

    .line 993
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    :cond_28
    return-object p0
.end method

.method protected renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1064
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/internal/RestStorageService;->renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    return-void
.end method

.method protected renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1053
    invoke-direct {p0, p1, p3, p4}, Lcom/obs/services/internal/RestStorageService;->formatMetadataAndHeader(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    .line 1054
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1055
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1056
    sget-object p3, Lcom/obs/services/internal/RestStorageService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p3}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 1057
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added metadata to connection: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/obs/services/internal/utils/ServiceUtils;->getLoggableInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-interface {p3, p1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_62
    return-void
.end method

.method protected retryRequest(Ljava/io/IOException;Lcom/obs/services/internal/RestStorageService$RetryCounter;Lokhttp3/Request;Lokhttp3/Call;)Z
    .registers 5

    .line 163
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->addErrorCount()V

    .line 165
    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getErrorCount()I

    move-result p0

    invoke-virtual {p2}, Lcom/obs/services/internal/RestStorageService$RetryCounter;->getRetryMaxCount()I

    move-result p2

    const/4 p3, 0x0

    if-le p0, p2, :cond_f

    return p3

    .line 168
    :cond_f
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->NON_RETRIABLE_CLASSES:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    return p3

    .line 171
    :cond_1c
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    return p3

    .line 178
    :cond_33
    invoke-interface {p4}, Lokhttp3/Call;->isCanceled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setCanUseStandardHTTPHeaders(Ljava/lang/Boolean;)V
    .registers 2

    .line 94
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->CAN_USE_STANDARD_HTTP_HEADERS:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected setProviderCredentials(Lcom/obs/services/internal/security/ProviderCredentials;)V
    .registers 2

    .line 1048
    iput-object p1, p0, Lcom/obs/services/internal/RestConnectionService;->credentials:Lcom/obs/services/internal/security/ProviderCredentials;

    return-void
.end method

.method public setUserHeaders(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    sget-object p0, Lcom/obs/services/internal/RestStorageService;->userHeaders:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
