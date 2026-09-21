.class public Lcom/obs/services/internal/security/EcsSecurityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EC2_METADATA_SERVICE_OVERRIDE_URL:Ljava/lang/String; = "ecsMetadataServiceOverrideEndpoint"

.field private static final ECS_METADATA_SERVICE_URL:Ljava/lang/String;

.field private static final HTTP_CONNECT_TIMEOUT_VALUE:J = 0x7530L

.field private static final OPENSTACK_METADATA_ROOT:Ljava/lang/String; = "/openstack/latest"

.field private static httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    const-string v0, "obs"

    invoke-static {v0}, Lcom/obs/services/internal/utils/PropertyManager;->getInstance(Ljava/lang/String;)Lcom/obs/services/internal/utils/PropertyManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 37
    const-string v3, "ecs.metadata.service.url"

    invoke-virtual {v0, v3, v2}, Lcom/obs/services/internal/utils/PropertyManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/security/EcsSecurityUtils;->ECS_METADATA_SERVICE_URL:Ljava/lang/String;

    .line 43
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    .line 45
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/security/EcsSecurityUtils;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndpointForECSMetadataService()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "ecsMetadataServiceOverrideEndpoint"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 63
    :cond_9
    sget-object v0, Lcom/obs/services/internal/security/EcsSecurityUtils;->ECS_METADATA_SERVICE_URL:Ljava/lang/String;

    return-object v0
.end method

.method private static getResourceWithDetail(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 71
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 72
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 73
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 74
    sget-object v0, Lcom/obs/services/internal/security/EcsSecurityUtils;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 78
    :try_start_1e
    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_83

    .line 80
    :try_start_22
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_33

    const-string v1, ""

    if-eqz v0, :cond_35

    .line 81
    :try_start_2a
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :catchall_33
    move-exception v0

    goto :goto_85

    :cond_35
    move-object v0, v1

    .line 83
    :goto_36
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 84
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_44
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_58

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_33

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_58

    .line 96
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    return-object v1

    .line 88
    :cond_58
    :try_start_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get securityKey form ECS failed, Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; Headers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; Content : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_33

    :catchall_83
    move-exception v0

    const/4 p0, 0x0

    :goto_85
    if-eqz p0, :cond_8a

    .line 96
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 98
    :cond_8a
    throw v0
.end method

.method public static getSecurityKeyInfoWithDetail()Ljava/lang/String;
    .registers 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/obs/services/internal/security/EcsSecurityUtils;->getEndpointForECSMetadataService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/openstack/latest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/securitykey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/security/EcsSecurityUtils;->getResourceWithDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
