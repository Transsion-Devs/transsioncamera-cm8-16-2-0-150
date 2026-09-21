.class public final Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;
.super Lbytekn/foundation/io/file/FileInputStream;
.source "SourceFile"


# instance fields
.field private final byteReadStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)V
    .registers 3

    const-string v0, "byteReadStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lbytekn/foundation/io/file/FileInputStream;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;->byteReadStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;->byteReadStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    invoke-interface {p0}, Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;->close()V

    return-void
.end method

.method public read([BII)I
    .registers 5

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;->byteReadStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;->read([BII)I

    move-result p0

    return p0
.end method
