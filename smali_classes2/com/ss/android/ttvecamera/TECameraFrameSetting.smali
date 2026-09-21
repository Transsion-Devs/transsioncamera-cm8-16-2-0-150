.class public Lcom/ss/android/ttvecamera/TECameraFrameSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mBufferData:[B

.field private mBufferSize:I

.field private mCameraFacing:I

.field private mCameraFormat:I

.field private mCameraFrameHeight:I

.field private mCameraFrameWidth:I

.field private mCameraOutputMode:I

.field private mCameraRotation:I

.field private mCameraTextureID:I

.field private mDirectBitmap:Landroid/graphics/Bitmap;

.field private mExposureTime:I

.field private mExtRotate:I

.field private mIso:I

.field private mMVPMatrix:[F

.field private mMaxIso:I

.field private mMetadataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMinIso:I

.field private mUBuf:Ljava/nio/ByteBuffer;

.field private mUParams:[I

.field private mVBuf:Ljava/nio/ByteBuffer;

.field private mVParams:[I

.field private mYBuf:Ljava/nio/ByteBuffer;

.field private mYParams:[I


# direct methods
.method public constructor <init>(IIIIILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[II)V
    .registers 14

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    .line 69
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 70
    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 71
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 72
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    .line 73
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYBuf:Ljava/nio/ByteBuffer;

    .line 74
    iput-object p8, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUBuf:Ljava/nio/ByteBuffer;

    .line 75
    iput-object p10, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVBuf:Ljava/nio/ByteBuffer;

    .line 76
    iput-object p7, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYParams:[I

    .line 77
    iput-object p9, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUParams:[I

    .line 78
    iput-object p11, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVParams:[I

    .line 79
    iput p12, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return-void
.end method

.method public constructor <init>(IIIII[BI)V
    .registers 9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    .line 55
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 56
    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 57
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 58
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    .line 59
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mBufferData:[B

    .line 60
    iput p7, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return-void
.end method

.method public constructor <init>(IIIII[FIII)V
    .registers 11

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 39
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraTextureID:I

    .line 40
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    .line 41
    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 42
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 43
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 44
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMVPMatrix:[F

    .line 45
    iput p7, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    .line 46
    iput p8, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    .line 47
    iput p9, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExtRotate:I

    return-void
.end method

.method public constructor <init>(IIIII[FILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[II)V
    .registers 16

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 102
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraTextureID:I

    .line 103
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    .line 104
    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 105
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 106
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 107
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMVPMatrix:[F

    .line 108
    iput p7, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    .line 109
    iput-object p8, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYBuf:Ljava/nio/ByteBuffer;

    .line 110
    iput-object p10, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUBuf:Ljava/nio/ByteBuffer;

    .line 111
    iput-object p12, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVBuf:Ljava/nio/ByteBuffer;

    .line 112
    iput-object p9, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYParams:[I

    .line 113
    iput-object p11, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUParams:[I

    .line 114
    iput-object p13, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVParams:[I

    .line 115
    iput p14, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return-void
.end method

.method public constructor <init>(IIIII[FI[BI)V
    .registers 11

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 86
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraTextureID:I

    .line 87
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    .line 88
    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 89
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 90
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 91
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMVPMatrix:[F

    .line 92
    iput p7, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    .line 93
    iput-object p8, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mBufferData:[B

    .line 94
    iput p9, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIII)V
    .registers 12

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 123
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYBuf:Ljava/nio/ByteBuffer;

    .line 124
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUBuf:Ljava/nio/ByteBuffer;

    .line 125
    iput-object p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVBuf:Ljava/nio/ByteBuffer;

    .line 126
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYParams:[I

    .line 127
    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUParams:[I

    .line 128
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVParams:[I

    .line 129
    iput p7, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 130
    iput p8, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 131
    iput p9, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 132
    iput p10, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return-void
.end method

.method public constructor <init>([BIIIII)V
    .registers 8

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 30
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    .line 139
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mBufferData:[B

    .line 140
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mBufferSize:I

    .line 141
    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    .line 142
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    .line 143
    iput p5, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    .line 144
    iput p6, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return-void
.end method


# virtual methods
.method public getBufferData()[B
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mBufferData:[B

    return-object p0
.end method

.method public getBufferDataSize()I
    .registers 1

    .line 218
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mBufferSize:I

    return p0
.end method

.method public getCameraFacing()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    return p0
.end method

.method public getCameraFormat()I
    .registers 1

    .line 222
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFormat:I

    return p0
.end method

.method public getCameraFrameHeight()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    return p0
.end method

.method public getCameraFrameWidth()I
    .registers 1

    .line 190
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    return p0
.end method

.method public getCameraOutPutMode()I
    .registers 1

    .line 202
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    return p0
.end method

.method public getCameraRotation()I
    .registers 1

    .line 198
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    return p0
.end method

.method public getCameraTextureID()I
    .registers 1

    .line 186
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraTextureID:I

    return p0
.end method

.method public getDirectBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getExposureTime()I
    .registers 1

    .line 255
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    return p0
.end method

.method public getExtRotate()I
    .registers 1

    .line 247
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExtRotate:I

    return p0
.end method

.method public getIso()I
    .registers 1

    .line 267
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    return p0
.end method

.method public getMVPMatrix()[F
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMVPMatrix:[F

    return-object p0
.end method

.method public getMaxIso()I
    .registers 1

    .line 259
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    return p0
.end method

.method public getMetadata()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMetadataMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getMinIso()I
    .registers 1

    .line 263
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    return p0
.end method

.method public getUBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUBuf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getUParams()[I
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mUParams:[I

    return-object p0
.end method

.method public getVBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVBuf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getVParams()[I
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mVParams:[I

    return-object p0
.end method

.method public getYBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYBuf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getYParams()[I
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mYParams:[I

    return-object p0
.end method

.method public setCameraFrameWidth(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameWidth:I

    return-void
.end method

.method public setCameraOutPutMode(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraOutputMode:I

    return-void
.end method

.method public setCameraRotation(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraRotation:I

    return-void
.end method

.method public setCameraTextureID(I)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraTextureID:I

    return-void
.end method

.method public setDirectBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mDirectBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMVPMatrix([F)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMVPMatrix:[F

    return-void
.end method

.method public setMetadata(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMetadataMap:Ljava/util/HashMap;

    .line 177
    const-string v0, "exposuretime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mExposureTime:I

    .line 178
    const-string v0, "maxiso"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMaxIso:I

    .line 179
    const-string v0, "miniso"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mMinIso:I

    .line 180
    const-string v0, "iso"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mIso:I

    return-void
.end method

.method public setmCameraFacing(I)V
    .registers 2

    .line 172
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFacing:I

    return-void
.end method

.method public setmCameraFrameHeight(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->mCameraFrameHeight:I

    return-void
.end method
