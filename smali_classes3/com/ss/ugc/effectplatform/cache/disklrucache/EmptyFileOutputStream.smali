.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/EmptyFileOutputStream;
.super Lbytekn/foundation/io/file/FileOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lbytekn/foundation/io/file/FileOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write([BII)V
    .registers 4

    const-string p0, "buffer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
