.class public interface abstract Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/IESCameraInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZoomListener"
.end annotation


# virtual methods
.method public abstract enablbeSmooth()Z
.end method

.method public abstract onChange(IFZ)V
.end method

.method public abstract onZoomSupport(IZZFLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
