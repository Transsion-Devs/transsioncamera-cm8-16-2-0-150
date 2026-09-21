.class public abstract Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected height:I

.field protected pixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x500

    .line 11
    iput v0, p0, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->width:I

    const/16 v0, 0x2d0

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->height:I

    .line 22
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->pixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->height:I

    return p0
.end method

.method public getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->pixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->width:I

    return p0
.end method
