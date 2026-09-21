.class public Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TEImageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field height:I

.field mimeType:Ljava/lang/String;

.field rotation:I

.field width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->rotation:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->height:I

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->rotation:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->width:I

    return p0
.end method
