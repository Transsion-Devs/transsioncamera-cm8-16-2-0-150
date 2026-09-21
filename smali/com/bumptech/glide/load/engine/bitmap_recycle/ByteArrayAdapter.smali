.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .registers 2

    .line 4
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;->getArrayLength([B)I

    move-result p0

    return p0
.end method

.method public getArrayLength([B)I
    .registers 2

    .line 15
    array-length p0, p1

    return p0
.end method

.method public getElementSizeInBytes()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 10
    const-string p0, "ByteArrayPool"

    return-object p0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;->newArray(I)[B

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[B
    .registers 2

    .line 20
    new-array p0, p1, [B

    return-object p0
.end method
