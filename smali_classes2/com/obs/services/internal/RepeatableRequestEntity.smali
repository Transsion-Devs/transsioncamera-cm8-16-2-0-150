.class public Lcom/obs/services/internal/RepeatableRequestEntity;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final INTERFACE_LOG:Lcom/obs/log/ILogger;

.field private static final WRITE_BUFFER_SIZE:I = 0x1000


# instance fields
.field private volatile bytesWritten:J

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-string v0, "com.obs.services.internal.RestStorageService"

    .line 32
    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/RepeatableRequestEntity;->INTERFACE_LOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;JLcom/obs/services/internal/ObsProperties;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->contentLength:J

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    if-eqz p1, :cond_2d

    .line 47
    iput-object p1, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    .line 48
    iput-wide p3, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->contentLength:J

    .line 49
    iput-object p2, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->contentType:Ljava/lang/String;

    .line 51
    instance-of p2, p1, Lcom/obs/services/internal/io/MayRepeatableInputStream;

    if-nez p2, :cond_26

    .line 52
    new-instance p2, Lcom/obs/services/internal/io/MayRepeatableInputStream;

    const-string p3, "httpclient.write-buffer-size"

    const/16 p4, 0x2000

    .line 53
    invoke-virtual {p5, p3, p4}, Lcom/obs/services/internal/ObsProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/obs/services/internal/io/MayRepeatableInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    .line 55
    :cond_26
    iget-object p0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void

    .line 45
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "InputStream cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    if-eqz p0, :cond_7

    .line 115
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_7
    return-void
.end method

.method public contentLength()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->contentType:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, "application/octet-stream"

    :cond_6
    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public isRepeatable()Z
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 8

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    iget-wide v2, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 102
    iget-object v2, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 103
    iput-wide v4, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    .line 106
    :cond_13
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RepeatableRequestEntity;->writeToBIO(Lokio/BufferedSink;)V

    .line 107
    sget-object p0, Lcom/obs/services/internal/RepeatableRequestEntity;->INTERFACE_LOG:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write data end, cost "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    :cond_3c
    return-void
.end method

.method protected writeToBIO(Lokio/BufferedSink;)V
    .registers 14

    const/16 v0, 0x1000

    .line 68
    new-array v0, v0, [B

    .line 70
    iget-wide v1, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->contentLength:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-gez v5, :cond_26

    .line 71
    iget-object v1, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_14
    if-eq v1, v6, :cond_45

    .line 73
    iget-wide v2, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    .line 74
    invoke-interface {p1, v0, v7, v1}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 75
    iget-object v1, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_14

    :cond_26
    :goto_26
    cmp-long v5, v1, v3

    if-lez v5, :cond_45

    .line 81
    iget-object v5, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->inputStream:Ljava/io/InputStream;

    const-wide/16 v8, 0x1000

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v6, :cond_3a

    goto :goto_45

    .line 85
    :cond_3a
    invoke-interface {p1, v0, v7, v5}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 86
    iget-wide v8, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/obs/services/internal/RepeatableRequestEntity;->bytesWritten:J

    sub-long/2addr v1, v10

    goto :goto_26

    :cond_45
    :goto_45
    return-void
.end method
