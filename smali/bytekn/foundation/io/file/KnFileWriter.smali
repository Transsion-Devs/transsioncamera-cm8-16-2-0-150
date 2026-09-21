.class public abstract Lbytekn/foundation/io/file/KnFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/io/file/KnCloseable;


# instance fields
.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/io/file/KnFileWriter;->writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "csa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lbytekn/foundation/io/file/KnFileWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method public close()V
    .registers 1

    .line 32
    iget-object p0, p0, Lbytekn/foundation/io/file/KnFileWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final flush()V
    .registers 1

    .line 28
    iget-object p0, p0, Lbytekn/foundation/io/file/KnFileWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .registers 3

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lbytekn/foundation/io/file/KnFileWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
