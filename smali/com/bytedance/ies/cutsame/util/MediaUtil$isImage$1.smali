.class final Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/util/MediaUtil;->isImage(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $header:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$1;->$header:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 93
    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$1;->invoke(Ljava/io/FileDescriptor;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/io/FileDescriptor;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$1;->$header:[B

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 96
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    const/4 p0, 0x0

    .line 95
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
