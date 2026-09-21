.class public abstract Lcom/transsion/camera/adapter/platformcamera/PlatformCameraFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createPlatformCamera2()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .registers 1

    .line 16
    new-instance v0, Lcom/transsion/camera/adapter/platformcameramtk/PlatformCamera2Impl;

    invoke-direct {v0}, Lcom/transsion/camera/adapter/platformcameramtk/PlatformCamera2Impl;-><init>()V

    return-object v0
.end method
