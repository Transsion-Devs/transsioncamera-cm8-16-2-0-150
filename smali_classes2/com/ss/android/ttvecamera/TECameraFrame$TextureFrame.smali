.class public Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;
.super Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureFrame"
.end annotation


# instance fields
.field mMVPMatrix:[F

.field private mTextureID:I


# direct methods
.method public constructor <init>(IIJII[FLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V
    .registers 16

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p9

    .line 349
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;-><init>(IIJI)V

    const/4 p0, 0x1

    .line 350
    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mType:I

    .line 351
    iput p5, v0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->mTextureID:I

    .line 352
    iput p6, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mRotationRad:I

    .line 353
    iput-object p7, v0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->mMVPMatrix:[F

    .line 354
    iput-object p8, v0, Lcom/ss/android/ttvecamera/TECameraFrame$CameraFrameBase;->mPixelFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method static synthetic access$002(Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;I)I
    .registers 2

    .line 343
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->mTextureID:I

    return p1
.end method


# virtual methods
.method public getMVPMatrix()[F
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->mMVPMatrix:[F

    return-object p0
.end method

.method public getTextureID()I
    .registers 1

    .line 358
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrame$TextureFrame;->mTextureID:I

    return p0
.end method
