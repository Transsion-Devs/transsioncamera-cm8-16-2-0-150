.class public Lcom/obs/services/internal/ObsConstraint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCESS_KEY_ENV_VAR:Ljava/lang/String; = "OBS_ACCESS_KEY_ID"

.field public static final AUTH_TYPE_NEGOTIATION:Ljava/lang/String; = "httpclient.auth-type-negotiation"

.field public static final DEFAULT_BUCKET_LOCATION_VALUE:Ljava/lang/String; = "region"

.field public static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field public static final DEFAULT_EXPIRE_SECONEDS:J = 0x12cL

.field public static final DEFAULT_IDLE_CONNECTION_TIME:I = 0x7530

.field public static final DEFAULT_LOCAL_AUTH_TYPE_CACHE_CAPACITY:I = 0x32

.field public static final DEFAULT_MAX_IDLE_CONNECTIONS:I = 0x3e8

.field public static final DEFAULT_PROGRESS_INTERVAL:J = 0x19000L

.field public static final DEFAULT_READ_BUFFER_STREAM:I = 0x2000

.field public static final DEFAULT_TASK_PROGRESS_INTERVAL:I = 0x32

.field public static final DEFAULT_TASK_THREAD_NUM:I = 0xa

.field public static final DEFAULT_WORK_QUEUE_NUM:I = 0x4e20

.field public static final DEFAULT_WRITE_BUFFER_STREAM:I = 0x2000

.field public static final DISABLE_DNS_BUCKET:Ljava/lang/String; = "obs.disable-dns-buckets"

.field public static final END_POINT:Ljava/lang/String; = "obs-endpoint"

.field public static final FS_DELIMITER:Ljava/lang/String; = "filesystem.delimiter"

.field public static final HTTPS_ONLY:Ljava/lang/String; = "obs.https-only"

.field public static final HTTPS_PORT:Ljava/lang/String; = "obs-endpoint-https-port"

.field public static final HTTPS_PORT_VALUE:I = 0x1bb

.field public static final HTTP_CONNECT_TIMEOUT:Ljava/lang/String; = "httpclient.connection-timeout-ms"

.field public static final HTTP_CONNECT_TIMEOUT_VALUE:I = 0x4e20

.field public static final HTTP_IDLE_CONNECTION_TIME:Ljava/lang/String; = "httpclient.idle-connection-time"

.field public static final HTTP_MAX_CONNECT:Ljava/lang/String; = "httpclient.max-connections"

.field public static final HTTP_MAX_CONNECT_VALUE:I = 0x3e8

.field public static final HTTP_MAX_IDLE_CONNECTIONS:Ljava/lang/String; = "httpclient.max-idle-connections"

.field public static final HTTP_PORT:Ljava/lang/String; = "obs-endpoint-http-port"

.field public static final HTTP_PORT_VALUE:I = 0x50

.field public static final HTTP_PROTOCOL:Ljava/lang/String; = "httpclient.protocol"

.field public static final HTTP_RETRY_MAX:Ljava/lang/String; = "httpclient.retry-max"

.field public static final HTTP_RETRY_MAX_VALUE:I = 0x3

.field public static final HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpclient.socket-timeout-ms"

.field public static final HTTP_SOCKET_TIMEOUT_VALUE:I = 0xea60

.field public static final HTTP_STRICT_HOSTNAME_VERIFICATION:Ljava/lang/String; = "httpclient.strict-hostname-verification"

.field public static final IS_CNAME:Ljava/lang/String; = "httpclient.is-cname"

.field public static final KEEP_ALIVE:Ljava/lang/String; = "httpclient.keep-alive"

.field public static final OBS_XML_DOC_BUILDER_FACTORY:Ljava/lang/String; = "obs.xml.document.builder.factory"

.field public static final OBS_XML_DOC_BUILDER_FACTORY_CLASS:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl"

.field public static final PROXY_DOMAIN:Ljava/lang/String; = "httpclient.proxy-domain"

.field public static final PROXY_HOST:Ljava/lang/String; = "httpclient.proxy-host"

.field public static final PROXY_ISABLE:Ljava/lang/String; = "httpclient.proxy-enable"

.field public static final PROXY_PAWD:Ljava/lang/String; = "httpclient.proxy-password"

.field public static final PROXY_PORT:Ljava/lang/String; = "httpclient.proxy-port"

.field public static final PROXY_UNAME:Ljava/lang/String; = "httpclient.proxy-user"

.field public static final PROXY_WORKSTATION:Ljava/lang/String; = "httpclient.proxy-workstation"

.field public static final READ_BUFFER_SIZE:Ljava/lang/String; = "httpclient.read-buffer-size"

.field public static final SECRET_KEY_ENV_VAR:Ljava/lang/String; = "OBS_SECRET_ACCESS_KEY"

.field public static final SECURITY_TOKEN_ENV_VAR:Ljava/lang/String; = "OBS_SECURITY_TOKEN"

.field public static final SOCKET_READ_BUFFER_SIZE:Ljava/lang/String; = "socket.read-buffer-size"

.field public static final SOCKET_WRITE_BUFFER_SIZE:Ljava/lang/String; = "socket.write-buffer-size"

.field public static final SSL_PROVIDER:Ljava/lang/String; = "httpclient.ssl-provider"

.field public static final VALIDATE_CERTIFICATE:Ljava/lang/String; = "httpclient.validate-certificate"

.field public static final VERIFY_RESPONSE_CONTENT_TYPE:Ljava/lang/String; = "obs.verify-content-type"

.field public static final WRITE_BUFFER_SIZE:Ljava/lang/String; = "httpclient.write-buffer-size"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
