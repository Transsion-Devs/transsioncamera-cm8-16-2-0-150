.class public Lbytekn/foundation/io/file/FileInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/io/file/KnCloseable;


# instance fields
.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 13
    iget-object p0, p0, Lbytekn/foundation/io/file/FileInputStream;->inputStream:Ljava/io/InputStream;

    if-nez p0, :cond_9

    const-string v0, "inputStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read([BII)I
    .registers 5

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lbytekn/foundation/io/file/FileInputStream;->inputStream:Ljava/io/InputStream;

    if-nez p0, :cond_e

    const-string v0, "inputStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final setInputStream(Ljava/io/InputStream;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lbytekn/foundation/io/file/FileInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method
