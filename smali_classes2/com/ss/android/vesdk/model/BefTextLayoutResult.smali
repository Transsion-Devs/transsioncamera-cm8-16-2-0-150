.class public Lcom/ss/android/vesdk/model/BefTextLayoutResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field height:I

.field lineCount:I

.field width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromByteArray([[B)Lcom/ss/android/vesdk/model/BefTextLayoutResult;
    .registers 3

    .line 53
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 54
    new-instance p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;

    invoke-direct {p0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;-><init>()V

    .line 55
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->setWidth(I)V

    .line 57
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->setHeight(I)V

    .line 58
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->setLineCount(I)V

    return-object p0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->height:I

    return p0
.end method

.method public getLineCount()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->lineCount:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->width:I

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->height:I

    return-void
.end method

.method public setLineCount(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->lineCount:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->width:I

    return-void
.end method
