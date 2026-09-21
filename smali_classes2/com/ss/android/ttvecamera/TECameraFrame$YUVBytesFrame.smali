.class public Lcom/ss/android/ttvecamera/TECameraFrame$YUVBytesFrame;
.super Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YUVBytesFrame"
.end annotation


# instance fields
.field mBytes:[B


# direct methods
.method public constructor <init>(IIJ[BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p8

    .line 331
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJI)V

    const/4 p0, 0x3

    .line 332
    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    .line 333
    iput p6, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mRotationRad:I

    .line 334
    iput-object p7, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 335
    iput-object p5, v0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVBytesFrame;->mBytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$YUVBytesFrame;->mBytes:[B

    return-object p0
.end method
