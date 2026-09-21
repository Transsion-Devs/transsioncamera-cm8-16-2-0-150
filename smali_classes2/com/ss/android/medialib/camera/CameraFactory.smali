.class public Lcom/ss/android/medialib/camera/CameraFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/camera/CameraFactory$CameraType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCamera(I)Lcom/ss/android/medialib/camera/IESCameraInterface;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    .line 36
    new-instance p0, Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera1;-><init>()V

    return-object p0

    .line 30
    :cond_c
    new-instance p0, Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;-><init>()V

    return-object p0

    .line 33
    :cond_12
    new-instance p0, Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera1;-><init>()V

    return-object p0
.end method
