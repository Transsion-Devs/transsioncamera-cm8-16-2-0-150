.class public Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;
.super Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawFrame"
.end annotation


# instance fields
.field mDngCreator:Landroid/hardware/camera2/DngCreator;

.field mPlane:Lcom/ss/android/ttvecamera/TEPlane;


# direct methods
.method public constructor <init>(IIJLcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;ILandroid/hardware/camera2/DngCreator;)V
    .registers 16

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p8

    .line 372
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJI)V

    const/4 p0, 0x4

    .line 373
    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    .line 374
    iput p6, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mRotationRad:I

    .line 375
    iput-object p7, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 376
    iput-object p5, v0, Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;->mPlane:Lcom/ss/android/ttvecamera/TEPlane;

    .line 377
    iput-object p9, v0, Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;->mDngCreator:Landroid/hardware/camera2/DngCreator;

    return-void
.end method


# virtual methods
.method public getDngCreator()Landroid/hardware/camera2/DngCreator;
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;->mDngCreator:Landroid/hardware/camera2/DngCreator;

    return-object p0
.end method

.method public getPlane()Lcom/ss/android/ttvecamera/TEPlane;
    .registers 1

    .line 381
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$RawFrame;->mPlane:Lcom/ss/android/ttvecamera/TEPlane;

    return-object p0
.end method
