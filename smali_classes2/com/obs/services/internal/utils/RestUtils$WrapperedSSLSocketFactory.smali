.class Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/utils/RestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrapperedSSLSocketFactory"
.end annotation


# instance fields
.field private delegate:Ljavax/net/ssl/SSLSocketFactory;

.field private socketReadWriteBufferSize:I


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;I)V
    .registers 3

    .line 271
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    .line 273
    iput p2, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->socketReadWriteBufferSize:I

    return-void
.end method

.method private doWrap(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 3

    if-eqz p1, :cond_12

    .line 278
    iget v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->socketReadWriteBufferSize:I

    if-lez v0, :cond_e

    .line 279
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 280
    iget p0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->socketReadWriteBufferSize:I

    invoke-virtual {p1, p0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_e
    const/4 p0, 0x1

    .line 282
    invoke-virtual {p1, p0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    :cond_12
    return-object p1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    .line 320
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    .line 326
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .line 294
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
