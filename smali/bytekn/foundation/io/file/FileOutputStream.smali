.class public Lbytekn/foundation/io/file/FileOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/io/file/KnCloseable;


# instance fields
.field public outputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 9
    iget-object p0, p0, Lbytekn/foundation/io/file/FileOutputStream;->outputStream:Ljava/io/FileOutputStream;

    if-nez p0, :cond_9

    const-string v0, "outputStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    return-void
.end method

.method public flush()V
    .registers 2

    .line 13
    iget-object p0, p0, Lbytekn/foundation/io/file/FileOutputStream;->outputStream:Ljava/io/FileOutputStream;

    if-nez p0, :cond_9

    const-string v0, "outputStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    return-void
.end method

.method public final getOutputStream()Ljava/io/FileOutputStream;
    .registers 2

    .line 7
    iget-object p0, p0, Lbytekn/foundation/io/file/FileOutputStream;->outputStream:Ljava/io/FileOutputStream;

    if-nez p0, :cond_9

    const-string v0, "outputStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public final setOutputStream(Ljava/io/FileOutputStream;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lbytekn/foundation/io/file/FileOutputStream;->outputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method public write([BII)V
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lbytekn/foundation/io/file/FileOutputStream;->outputStream:Ljava/io/FileOutputStream;

    if-nez p0, :cond_e

    const-string v0, "outputStream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    if-eqz p0, :cond_13

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_13
    return-void
.end method
