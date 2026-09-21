.class public interface abstract Lcom/imaging/libwatermark/IWatermarkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract generateOnlyWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract generateOverlay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract generateOverlay([B)[B
.end method

.method public abstract generatePro(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract generatePro([B)[B
.end method

.method public abstract generatePro([BLjava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation
.end method
