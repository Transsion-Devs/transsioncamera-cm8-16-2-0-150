.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;
.super Lbytekn/foundation/io/file/FileOutputStream;
.source "SourceFile"


# instance fields
.field private final hasErrorCallback:Lkotlin/jvm/functions/Function0;

.field private final out:Lbytekn/foundation/io/file/FileOutputStream;


# direct methods
.method public constructor <init>(Lbytekn/foundation/io/file/FileOutputStream;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasErrorCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lbytekn/foundation/io/file/FileOutputStream;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->out:Lbytekn/foundation/io/file/FileOutputStream;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->hasErrorCallback:Lkotlin/jvm/functions/Function0;

    .line 10
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FileOutputStream;->getOutputStream()Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileOutputStream;->setOutputStream(Ljava/io/FileOutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->out:Lbytekn/foundation/io/file/FileOutputStream;

    invoke-virtual {v0}, Lbytekn/foundation/io/file/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 33
    :catch_6
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->hasErrorCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public flush()V
    .registers 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->out:Lbytekn/foundation/io/file/FileOutputStream;

    invoke-virtual {v0}, Lbytekn/foundation/io/file/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 25
    :catch_6
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->hasErrorCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public write([BII)V
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_5
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->out:Lbytekn/foundation/io/file/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lbytekn/foundation/io/file/FileOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    .line 17
    :catch_b
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;->hasErrorCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
