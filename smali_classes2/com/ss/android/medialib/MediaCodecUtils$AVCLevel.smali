.class Lcom/ss/android/medialib/MediaCodecUtils$AVCLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/MediaCodecUtils;
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/ss/android/medialib/MediaCodecUtils$AVCLevel;->mediaCodecLevel:I

    .line 29
    iput p2, p0, Lcom/ss/android/medialib/MediaCodecUtils$AVCLevel;->maxBlocksPerSecond:I

    .line 30
    iput p3, p0, Lcom/ss/android/medialib/MediaCodecUtils$AVCLevel;->maxBitrate:I

    return-void
.end method
