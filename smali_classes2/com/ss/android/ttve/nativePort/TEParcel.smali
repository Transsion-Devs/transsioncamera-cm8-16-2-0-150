.class public Lcom/ss/android/ttve/nativePort/TEParcel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEParcel"


# instance fields
.field mData:[B

.field mPos:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    return-void
.end method


# virtual methods
.method public readBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 80
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v0, p0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 81
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public readBoolean()Z
    .registers 4

    .line 72
    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_12

    .line 73
    const-string p0, "TEParcel"

    const-string v0, "out of border"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 76
    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v2
.end method

.method public readFloat()F
    .registers 3

    .line 41
    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v1, v1

    if-le v0, v1, :cond_13

    .line 42
    const-string p0, "TEParcel"

    const-string v0, "out of border"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 45
    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public readInt()I
    .registers 5

    .line 26
    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v3, v2

    if-le v1, v3, :cond_12

    .line 27
    const-string p0, "TEParcel"

    const-string v0, "out of border"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 30
    :cond_12
    aget-byte v1, v2, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x3

    .line 34
    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_3a

    goto :goto_3d

    :cond_3a
    const/high16 v2, -0x80000000

    sub-int/2addr v1, v2

    :goto_3d
    add-int/lit8 v0, v0, 0x4

    .line 36
    iput v0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    return v1
.end method

.method public readLong()Ljava/lang/Long;
    .registers 5

    .line 61
    iget v0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v3, v2

    if-le v1, v3, :cond_12

    .line 62
    const-string p0, "TEParcel"

    const-string v0, "out of border"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_12
    const/16 v1, 0x8

    .line 65
    invoke-static {v2, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    iget v2, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public readString()Ljava/lang/String;
    .registers 6

    .line 50
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    .line 51
    iget v1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int v2, v1, v0

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v4, v3

    if-le v2, v4, :cond_3f

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString out of bound(data size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", len="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEParcel"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_3f
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 56
    iget v1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ss/android/ttve/nativePort/TEParcel;->mPos:I

    return-object v2
.end method
