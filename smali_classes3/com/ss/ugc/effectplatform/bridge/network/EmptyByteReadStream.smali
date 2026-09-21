.class public final Lcom/ss/ugc/effectplatform/bridge/network/EmptyByteReadStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read([BII)I
    .registers 4

    const-string p0, "b"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
