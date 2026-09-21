.class public Lcom/ss/android/medialib/camera/ImageFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final BMP:I = 0x2

.field public static final JPEG:I = 0x1

.field public static final NV21:I = -0x3

.field public static final PNG:I = 0x0

.field public static final UNKNOW:I = -0x1

.field public static final YUV_888:I = -0x2


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public format:I

.field public height:I

.field public mBuf:[B

.field public mPlane:Lcom/ss/android/medialib/camera/Plane;

.field public rotate:I

.field public width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 67
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/medialib/camera/Plane;III)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mPlane:Lcom/ss/android/medialib/camera/Plane;

    .line 60
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    .line 61
    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    .line 62
    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    .line 45
    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    .line 46
    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    .line 47
    iput p5, p0, Lcom/ss/android/medialib/camera/ImageFrame;->rotate:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .registers 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    .line 52
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    .line 53
    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    .line 54
    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;IIII)Lcom/ss/android/medialib/camera/ImageFrame;
    .registers 11

    .line 39
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Ljava/nio/ByteBuffer;IIII)V

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBuf()[B
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    return-object p0
.end method

.method public getFormat()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 97
    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return p0
.end method

.method public getPlane()Lcom/ss/android/medialib/camera/Plane;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mPlane:Lcom/ss/android/medialib/camera/Plane;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    return p0
.end method

.method public setBuf([B)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    return-void
.end method
