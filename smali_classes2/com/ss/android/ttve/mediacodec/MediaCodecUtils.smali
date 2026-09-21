.class Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;
    }
.end annotation


# static fields
.field private static final AVCLevel52:I = 0x10000

.field private static final AVCLevel6:I = 0x20000

.field private static final AVCLevel61:I = 0x40000

.field private static final AVCLevel62:I = 0x80000

.field private static final AVCLevels:[Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

.field private static final AVCProfileConstrainedBaseline:I = 0x10000

.field private static final AVCProfileConstrainedHigh:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 56
    new-instance v0, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/16 v1, 0x4f1a

    const/16 v2, 0xfa0

    const/16 v3, 0x80

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v1, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const v2, 0x9e34

    const/16 v3, 0x2710

    const/16 v4, 0x100

    invoke-direct {v1, v4, v2, v3}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const v3, 0x1a5e0

    const/16 v4, 0x36b0

    const/16 v5, 0x200

    invoke-direct {v2, v5, v3, v4}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v3, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/16 v4, 0x400

    const v5, 0x34bc0

    const/16 v6, 0x4e20

    invoke-direct {v3, v4, v5, v6}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v4, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/16 v5, 0x800

    const v7, 0x3c000

    invoke-direct {v4, v5, v7, v6}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v5, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/16 v6, 0x1000

    const v8, 0xc350

    invoke-direct {v5, v6, v7, v8}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v6, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/16 v7, 0x2000

    const v9, 0x7f800

    invoke-direct {v6, v7, v9, v8}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v7, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/high16 v8, 0x90000

    const v9, 0x20f58

    const/16 v10, 0x4000

    invoke-direct {v7, v10, v8, v9}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v8, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const v9, 0x8000

    const/high16 v10, 0xf0000

    const v11, 0x3a980

    invoke-direct {v8, v9, v10, v11}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v9, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/high16 v10, 0x10000

    const v12, 0x1fa400

    invoke-direct {v9, v10, v12, v11}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v10, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/high16 v12, 0x20000

    const v13, 0x3fc000

    invoke-direct {v10, v12, v13, v11}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v11, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const v12, 0x7f8000

    const v13, 0x75300

    const/high16 v14, 0x40000

    invoke-direct {v11, v14, v12, v13}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    new-instance v12, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    const/high16 v13, 0xff0000

    const v14, 0xc3500

    const/high16 v15, 0x80000

    invoke-direct {v12, v15, v13, v14}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;-><init>(III)V

    filled-new-array/range {v0 .. v12}, [Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;->AVCLevels:[Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findBestMatchedAVCLevel(Landroid/media/MediaCodecInfo$CodecProfileLevel;IIII)I
    .registers 16

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    int-to-long p1, p3

    mul-long/2addr v0, p1

    .line 75
    sget-object p1, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;->AVCLevels:[Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_9
    if-ge p3, p2, :cond_68

    aget-object v2, p1, p3

    .line 76
    iget v3, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->mediaCodecLevel:I

    iget v4, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v3, v4, :cond_14

    return v4

    .line 79
    :cond_14
    iget v4, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBlocksPerSecond:I

    int-to-long v4, v4

    const-wide/16 v6, 0x100

    mul-long/2addr v4, v6

    .line 81
    iget v6, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    if-eq v6, v9, :cond_58

    const/4 v9, 0x2

    if-eq v6, v9, :cond_58

    const/4 v9, 0x4

    if-eq v6, v9, :cond_58

    const/16 v9, 0x8

    if-eq v6, v9, :cond_52

    const/16 v9, 0x10

    if-eq v6, v9, :cond_4c

    const/16 v9, 0x20

    if-eq v6, v9, :cond_44

    const/16 v9, 0x40

    if-eq v6, v9, :cond_44

    const/high16 v9, 0x10000

    if-eq v6, v9, :cond_58

    const/high16 v9, 0x80000

    if-eq v6, v9, :cond_52

    .line 100
    iget v2, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBitrate:I

    :goto_41
    int-to-long v9, v2

    mul-long/2addr v9, v7

    goto :goto_5b

    .line 97
    :cond_44
    iget v2, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBitrate:I

    int-to-long v6, v2

    const-wide/16 v8, 0xfa0

    :goto_49
    mul-long v9, v6, v8

    goto :goto_5b

    .line 93
    :cond_4c
    iget v2, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBitrate:I

    int-to-long v6, v2

    const-wide/16 v8, 0xbb8

    goto :goto_49

    .line 90
    :cond_52
    iget v2, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBitrate:I

    int-to-long v6, v2

    const-wide/16 v8, 0x4e2

    goto :goto_49

    .line 86
    :cond_58
    iget v2, v2, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils$AVCLevel;->maxBitrate:I

    goto :goto_41

    :goto_5b
    cmp-long v2, v0, v4

    if-gtz v2, :cond_65

    int-to-long v4, p4

    cmp-long v2, v4, v9

    if-gtz v2, :cond_65

    return v3

    :cond_65
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 107
    :cond_68
    iget p0, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    return p0
.end method

.method static findBestMatchedProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;II)Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 9

    .line 22
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_20

    aget-object v3, p0, v2

    .line 23
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p1, :cond_e

    return-object v3

    :cond_e
    if-eqz v1, :cond_14

    .line 28
    iget v5, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ge v5, v4, :cond_1d

    :cond_14
    sget-object v4, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    .line 29
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq p2, v4, :cond_1d

    move-object v1, v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_20
    return-object v1
.end method
