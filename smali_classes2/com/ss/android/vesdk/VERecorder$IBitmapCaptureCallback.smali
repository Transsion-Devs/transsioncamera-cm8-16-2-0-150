.class public interface abstract Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBitmapCaptureCallback"
.end annotation


# static fields
.field public static final ERR_CODE_PIC_FAILED:I = -0x3e8

.field public static final ERR_CODE_PIC_INVALID_ENV:I = -0x3e9

.field public static final ERR_CODE_RENDER:I = -0x7d0

.field public static final ERR_CODE_UNSUPPORT_OP:I = -0xbb8

.field public static final STATE_CAMERA:I = 0x0

.field public static final STATE_RENDER:I = 0x1


# virtual methods
.method public abstract onImageError(II)V
.end method

.method public abstract onImageRenderPending(II)V
.end method

.method public abstract onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V
.end method

.method public abstract onShutter(II)V
.end method
