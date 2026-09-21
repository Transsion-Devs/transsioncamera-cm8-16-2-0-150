.class public final Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sample"
.end annotation


# static fields
.field public static final EOS_SAMPLE_ENTRY:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;


# instance fields
.field public final mData:Ljava/nio/ByteBuffer;

.field public final mInfo:Landroid/media/MediaCodec$BufferInfo;

.field public final mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 295
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 297
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->EOS_SAMPLE_ENTRY:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 10

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mData:Ljava/nio/ByteBuffer;

    .line 303
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 304
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 305
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 306
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;
    .registers 3

    .line 314
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-object v0
.end method

.method public static create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;
    .registers 4

    .line 319
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    return-object v0
.end method
