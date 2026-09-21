.class public Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;
.super Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YUVPlansFrame"
.end annotation


# instance fields
.field mPlane:Lcom/ss/android/ttvecamera/TEPlane;


# direct methods
.method public constructor <init>(IIJLcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p8

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJI)V

    const/4 p0, 0x3

    .line 316
    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    .line 317
    iput p6, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mRotationRad:I

    .line 318
    iput-object p7, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 319
    iput-object p5, v0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;->mPlane:Lcom/ss/android/ttvecamera/TEPlane;

    return-void
.end method


# virtual methods
.method public getPlane()Lcom/ss/android/ttvecamera/TEPlane;
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVPlansFrame;->mPlane:Lcom/ss/android/ttvecamera/TEPlane;

    return-object p0
.end method
