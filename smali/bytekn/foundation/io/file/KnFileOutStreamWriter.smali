.class public final Lbytekn/foundation/io/file/KnFileOutStreamWriter;
.super Lbytekn/foundation/io/file/KnFileWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbytekn/foundation/io/file/FileOutputStream;Lbytekn/foundation/io/file/ContentEncoding;)V
    .registers 4

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FileOutputStream;->getOutputStream()Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p2}, Lbytekn/foundation/io/file/KnFileWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method
