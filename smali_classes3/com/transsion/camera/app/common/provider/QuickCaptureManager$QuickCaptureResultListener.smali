.class public interface abstract Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/QuickCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuickCaptureResultListener"
.end annotation


# virtual methods
.method public abstract needQCNotifyActionToAppUI(I)I
.end method

.method public abstract needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I
.end method

.method public abstract needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
.end method
