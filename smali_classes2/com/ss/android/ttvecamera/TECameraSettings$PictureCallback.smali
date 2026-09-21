.class public interface abstract Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureCallback"
.end annotation


# static fields
.field public static final ERROR_CODE_SPLIT_REGEX:Ljava/lang/String; = "errorCode="

.field public static final ERR_CODE_PIC_FAILED:I = -0x3e8

.field public static final ERR_CODE_PIC_INVALID_ENV:I = -0x3e9

.field public static final FORMAT_JPEG:I = 0x100

.field public static final FORMAT_RGBA:I = 0x2a


# virtual methods
.method public abstract onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V
.end method

.method public abstract onTakenFail(Ljava/lang/Exception;)V
.end method
