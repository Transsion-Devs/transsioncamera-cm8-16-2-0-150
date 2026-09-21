.class public Lcom/bumptech/glide/load/resource/bytes/BytesResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->get()[B

    move-result-object p0

    return-object p0
.end method

.method public get()[B
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    return-object p0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .registers 1

    .line 18
    const-class p0, [B

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
