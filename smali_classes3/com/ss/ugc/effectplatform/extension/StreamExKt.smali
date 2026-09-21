.class public abstract Lcom/ss/ugc/effectplatform/extension/StreamExKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final convertToString(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)Ljava/lang/String;
    .registers 6

    const-string v0, "$this$convertToString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;->available()Z

    move-result v0

    if-nez v0, :cond_e

    .line 15
    const-string p0, ""

    return-object p0

    .line 17
    :cond_e
    new-instance v0, Lbytekn/foundation/io/file/ByteArrayOutputStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lbytekn/foundation/io/file/ByteArrayOutputStream;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v1, 0x400

    .line 18
    new-array v2, v1, [B

    .line 19
    invoke-interface {p0, v2, v3, v1}, Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;->read([BII)I

    move-result v4

    :goto_1e
    if-ltz v4, :cond_28

    .line 21
    invoke-virtual {v0, v2, v3, v4}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->write([BII)V

    .line 22
    invoke-interface {p0, v2, v3, v1}, Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;->read([BII)I

    move-result v4

    goto :goto_1e

    .line 24
    :cond_28
    invoke-interface {p0}, Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;->close()V

    .line 25
    invoke-virtual {v0}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v0, Lbytekn/foundation/io/file/ContentEncoding;->Utf8:Lbytekn/foundation/io/file/ContentEncoding;

    invoke-static {p0, v0}, Lcom/ss/ugc/effectplatform/util/CommonUtilExKt;->convertToEncoding([BLbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
