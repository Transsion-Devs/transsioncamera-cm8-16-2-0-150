.class public final Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PcmResampleHolder"
.end annotation


# instance fields
.field private inChannels:I

.field private inSampleRate:I

.field private outChannels:I

.field private outSampleRate:I

.field private swrHandle:J


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    iput p1, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->inChannels:I

    .line 1790
    iput p2, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->inSampleRate:I

    .line 1791
    iput p3, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->outChannels:I

    .line 1792
    iput p4, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->outSampleRate:I

    return-void
.end method


# virtual methods
.method public getBestOutPcmSize(I)I
    .registers 3

    .line 1803
    iget v0, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->outChannels:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->outSampleRate:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->inChannels:I

    div-int/2addr p1, v0

    iget p0, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->inSampleRate:I

    div-int/2addr p1, p0

    return p1
.end method

.method public initResampleContext(IIII)Z
    .registers 5

    .line 1817
    invoke-static {p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->initResampleContext(IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->swrHandle:J

    const-wide/16 p3, 0x0

    cmp-long p0, p1, p3

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public pcmResampleFilter([B[B)I
    .registers 9

    .line 1830
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->swrHandle:J

    iget v4, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->inChannels:I

    iget v5, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->outChannels:I

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->pcmResampleFilter(J[B[BII)I

    move-result p0

    return p0
.end method

.method public releaseResampleContext()V
    .registers 3

    .line 1839
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;->swrHandle:J

    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->releaseResampleContext(J)V

    return-void
.end method
