.class public Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/internal/io/InputStreamWrapper;


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# instance fields
.field private comsumed:Z

.field private flag:Z

.field private httpResponse:Lokhttp3/Response;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->flag:Z

    .line 31
    iput-boolean v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->comsumed:Z

    .line 34
    iput-object p1, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->httpResponse:Lokhttp3/Response;

    .line 36
    :try_start_d
    new-instance v1, Lcom/obs/services/internal/io/InterruptableInputStream;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/obs/services/internal/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_1d

    return-void

    .line 39
    :catch_1d
    :try_start_1d
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception p1

    .line 41
    sget-object v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->log:Lcom/obs/log/ILogger;

    const-string v2, "io close failed."

    invoke-interface {v1, v2, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    :goto_29
    new-instance p1, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 4

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception v0

    .line 108
    :try_start_8
    invoke-virtual {p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->closeConnection()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    .line 110
    sget-object v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->log:Lcom/obs/log/ILogger;

    const-string v2, "io close failed."

    invoke-interface {v1, v2, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 112
    :goto_14
    throw v0
.end method

.method public close()V
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->flag:Z

    if-nez v0, :cond_7

    .line 119
    invoke-virtual {p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->closeConnection()V

    .line 121
    :cond_7
    iget-object p0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected closeConnection()V
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->flag:Z

    if-nez v0, :cond_12

    .line 53
    iget-boolean v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->comsumed:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->httpResponse:Lokhttp3/Response;

    if-eqz v0, :cond_f

    .line 54
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    :cond_f
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->flag:Z

    :cond_12
    return-void
.end method

.method public getHttpResponse()Lokhttp3/Response;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->httpResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public read()I
    .registers 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->comsumed:Z

    .line 66
    iget-boolean v1, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->flag:Z

    if-nez v1, :cond_16

    .line 67
    invoke-virtual {p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->closeConnection()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    goto :goto_17

    :cond_16
    return v0

    .line 73
    :goto_17
    :try_start_17
    invoke-virtual {p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->closeConnection()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p0

    .line 75
    sget-object v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->log:Lcom/obs/log/ILogger;

    const-string v2, "io close failed."

    invoke-interface {v1, v2, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    :goto_23
    throw v0
.end method

.method public read([BII)I
    .registers 5

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_16

    const/4 p2, 0x1

    .line 86
    iput-boolean p2, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->comsumed:Z

    .line 87
    iget-boolean p2, p0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->flag:Z

    if-nez p2, :cond_16

    .line 88
    invoke-virtual {p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->closeConnection()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return p1

    :catch_14
    move-exception p1

    goto :goto_17

    :cond_16
    return p1

    .line 94
    :goto_17
    :try_start_17
    invoke-virtual {p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->closeConnection()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p0

    .line 96
    sget-object p2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;->log:Lcom/obs/log/ILogger;

    const-string p3, "io close failed."

    invoke-interface {p2, p3, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    :goto_23
    throw p1
.end method
