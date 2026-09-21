.class public interface abstract Lcom/transsion/camera/adapter/IBGSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract forceReleaseSurface()V
.end method

.method public abstract getId()I
.end method

.method public abstract getImageReader()Landroid/media/ImageReader;
.end method

.method public abstract getListener()Landroid/media/ImageReader$OnImageAvailableListener;
.end method

.method public abstract getPictureCount()I
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract isBGEnable()Z
.end method

.method public abstract isSurfaceDirty()Z
.end method

.method public abstract isUserBGService()Z
.end method

.method public abstract isUserTZService()Z
.end method

.method public abstract updateBGOfflineState(I)V
.end method
