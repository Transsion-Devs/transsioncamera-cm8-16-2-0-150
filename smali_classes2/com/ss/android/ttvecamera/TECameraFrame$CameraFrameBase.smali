.class public Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraFrameBase"
.end annotation


# instance fields
.field public mFacing:I

.field public mFrameSizei:Lcom/ss/android/ttvecamera/TEFrameSizei;

.field public mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public mRotationRad:I

.field public mType:I

.field public mfTimestampNs:J


# direct methods
.method public constructor <init>(IIJ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 285
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJI)V

    return-void
.end method

.method public constructor <init>(IIJI)V
    .registers 7

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    .line 279
    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mFrameSizei:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 280
    iput-wide p3, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mfTimestampNs:J

    .line 281
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mFacing:I

    return-void
.end method
