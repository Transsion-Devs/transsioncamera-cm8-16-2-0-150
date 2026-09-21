.class Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/utils/RestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrapperedSocketFactory"
.end annotation


# instance fields
.field private delegate:Ljavax/net/SocketFactory;

.field private socketReadWriteBufferSize:I


# direct methods
.method constructor <init>(Ljavax/net/SocketFactory;I)V
    .registers 3

    .line 221
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->delegate:Ljavax/net/SocketFactory;

    .line 223
    iput p2, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->socketReadWriteBufferSize:I

    return-void
.end method

.method private doWrap(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 3

    if-eqz p1, :cond_12

    .line 228
    iget v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->socketReadWriteBufferSize:I

    if-lez v0, :cond_e

    .line 229
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 230
    iget p0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->socketReadWriteBufferSize:I

    invoke-virtual {p1, p0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_e
    const/4 p0, 0x1

    .line 232
    invoke-virtual {p1, p0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    :cond_12
    return-object p1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->delegate:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->delegate:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->delegate:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->delegate:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    .line 261
    iget-object v0, p0, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->delegate:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/obs/services/internal/utils/RestUtils$WrapperedSocketFactory;->doWrap(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method
