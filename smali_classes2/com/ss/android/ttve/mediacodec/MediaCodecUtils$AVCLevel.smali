.class Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AVCLevel"
.end annotation


# instance fields
.field maxBitrate:I

.field maxBlocksPerSecond:I

.field mediaCodecLevel:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->mediaCodecLevel:I

    .line 51
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBlocksPerSecond:I

    .line 52
    iput p3, p0, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBitrate:I

    return-void
.end method
