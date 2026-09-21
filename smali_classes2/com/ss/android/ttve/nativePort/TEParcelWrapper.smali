.class public Lcom/ss/android/ttve/nativePort/TEParcelWrapper;
.super Lcom/ss/android/ttve/nativePort/TEParcel;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/android/ttve/nativePort/TEParcel;-><init>([B)V

    return-void
.end method


# virtual methods
.method public readFloatArray(I)[F
    .registers 5

    .line 29
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_e

    .line 31
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-object v0
.end method

.method public readPointFArray(I)[Landroid/graphics/PointF;
    .registers 7

    .line 20
    new-array v0, p1, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_17

    .line 22
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 23
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    return-object v0
.end method

.method public readRect()Landroid/graphics/Rect;
    .registers 5

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v2

    .line 15
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v3

    .line 16
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public readStringArray(I)[Ljava/lang/String;
    .registers 5

    .line 37
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_e

    .line 39
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-object v0
.end method
