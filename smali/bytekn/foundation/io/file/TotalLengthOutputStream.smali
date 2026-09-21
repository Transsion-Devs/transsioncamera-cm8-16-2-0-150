.class public final Lbytekn/foundation/io/file/TotalLengthOutputStream;
.super Lbytekn/foundation/io/file/FileOutputStream;
.source "SourceFile"


# instance fields
.field private final fileOutputStream:Lbytekn/foundation/io/file/FileOutputStream;

.field private length:J


# direct methods
.method public constructor <init>(Lbytekn/foundation/io/file/FileOutputStream;)V
    .registers 3

    const-string v0, "fileOutputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lbytekn/foundation/io/file/FileOutputStream;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/io/file/TotalLengthOutputStream;->fileOutputStream:Lbytekn/foundation/io/file/FileOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 27
    iget-object p0, p0, Lbytekn/foundation/io/file/TotalLengthOutputStream;->fileOutputStream:Lbytekn/foundation/io/file/FileOutputStream;

    invoke-virtual {p0}, Lbytekn/foundation/io/file/FileOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 1

    .line 20
    iget-object p0, p0, Lbytekn/foundation/io/file/TotalLengthOutputStream;->fileOutputStream:Lbytekn/foundation/io/file/FileOutputStream;

    invoke-virtual {p0}, Lbytekn/foundation/io/file/FileOutputStream;->flush()V

    return-void
.end method

.method public write([BII)V
    .registers 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lbytekn/foundation/io/file/TotalLengthOutputStream;->fileOutputStream:Lbytekn/foundation/io/file/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lbytekn/foundation/io/file/FileOutputStream;->write([BII)V

    .line 15
    iget-wide p1, p0, Lbytekn/foundation/io/file/TotalLengthOutputStream;->length:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lbytekn/foundation/io/file/TotalLengthOutputStream;->length:J

    return-void
.end method
