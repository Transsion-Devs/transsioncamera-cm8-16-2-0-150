.class public Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 60
    new-array p0, v0, [B

    return-object p0

    .line 63
    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    .line 64
    new-array v2, v2, [B

    .line 66
    :goto_f
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1a

    .line 67
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    .line 69
    :cond_1a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 70
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;I)[B
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 77
    new-array p0, v0, [B

    return-object p0

    .line 80
    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    .line 81
    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    :goto_11
    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-gez v7, :cond_2b

    sub-long/2addr v5, v3

    long-to-int v5, v5

    const/16 v6, 0x800

    .line 84
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v2, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_2b

    .line 85
    invoke-virtual {v1, v2, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_11

    .line 88
    :cond_2b
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 89
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    .line 27
    const-string p0, ""

    return-object p0

    .line 30
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x1000

    .line 33
    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 35
    :try_start_f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_35

    .line 39
    :goto_19
    :try_start_19
    invoke-virtual {v3, v1}, Ljava/io/Reader;->read([C)I

    move-result p1

    if-lez p1, :cond_27

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Writer;->write([CII)V

    goto :goto_19

    :catchall_24
    move-exception p1

    move-object v2, v3

    goto :goto_36

    .line 43
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_24

    .line 45
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    .line 47
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 50
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-object p1

    :catchall_35
    move-exception p1

    .line 45
    :goto_36
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    if-eqz v2, :cond_3e

    .line 47
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 50
    :cond_3e
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 52
    throw p1
.end method

.method public static safeClose(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static safeClose(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 105
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method
