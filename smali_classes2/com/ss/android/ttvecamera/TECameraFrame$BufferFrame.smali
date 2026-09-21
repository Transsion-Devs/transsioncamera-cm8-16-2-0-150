.class public Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;
.super Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferFrame"
.end annotation


# instance fields
.field private mBufferData:[B

.field private mSize:I


# direct methods
.method public constructor <init>(IIJ[BILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p8

    .line 294
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJI)V

    const/4 p0, 0x2

    .line 295
    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    .line 296
    iput p6, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mRotationRad:I

    .line 297
    iput-object p7, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 298
    iput-object p5, v0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->mBufferData:[B

    mul-int p1, v1, v2

    mul-int/lit8 p1, p1, 0x4

    .line 299
    iput p1, v0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->mSize:I

    return-void
.end method


# virtual methods
.method public getBufferData()[B
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->mBufferData:[B

    return-object p0
.end method

.method public getBufferSize()I
    .registers 1

    .line 303
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$BufferFrame;->mSize:I

    return p0
.end method
