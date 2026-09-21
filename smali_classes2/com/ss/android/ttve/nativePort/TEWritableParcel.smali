.class public Lcom/ss/android/ttve/nativePort/TEWritableParcel;
.super Lcom/ss/android/ttve/nativePort/TEParcel;
.source "SourceFile"


# instance fields
.field private buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/nativePort/TEParcel;-><init>([B)V

    .line 11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getDataBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->buf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    return p0
.end method

.method public writeFloat(F)I
    .registers 6

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x4

    .line 26
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_16

    mul-int/lit8 v3, v2, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 28
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 30
    :cond_16
    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeMemory([B)I

    move-result p0

    return p0
.end method

.method public writeInt(I)I
    .registers 6

    const/4 v0, 0x4

    .line 16
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_12

    mul-int/lit8 v3, v2, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 18
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 20
    :cond_12
    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->writeMemory([B)I

    move-result p0

    return p0
.end method

.method public writeMemory([B)I
    .registers 2

    .line 34
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEWritableParcel;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    return p0
.end method
