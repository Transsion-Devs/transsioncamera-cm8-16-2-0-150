.class public interface abstract Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureCallback"
.end annotation


# virtual methods
.method public abstract onPictureTaken(Lcom/ss/android/ttve/model/VEFrame;)V
.end method

.method public abstract onTakenFail(Ljava/lang/Exception;)V
.end method
