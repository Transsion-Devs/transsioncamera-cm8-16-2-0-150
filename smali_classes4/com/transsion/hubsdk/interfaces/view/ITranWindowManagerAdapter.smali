.class public interface abstract Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAppRefreshRate(Ljava/lang/String;)I
.end method

.method public abstract getDefaultRefreshRateConfigList()Ljava/lang/String;
.end method

.method public abstract getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract getRefreshRateConfigList()Ljava/lang/String;
.end method

.method public abstract getTranPictureList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTranPictureSupportMode()[I
.end method

.method public abstract hasMultiWindowForXDR()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract setRefreshRateConfigList(Ljava/lang/String;)V
.end method

.method public abstract setTranPictureMode(ILjava/lang/String;)V
.end method

.method public abstract setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;
.end method
