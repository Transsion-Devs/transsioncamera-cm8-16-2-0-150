.class public Lcom/ss/android/medialib/AVCEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/AVCEncoder$kCodecType;,
        Lcom/ss/android/medialib/AVCEncoder$Status;
    }
.end annotation


# static fields
.field private static final BITRATE_MODES:[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field private static FRAME_RATE:I = 0x0

.field private static I_FRAME_INTERVAL:I = 0x0

.field private static final MAX_RECORD_BITRATE:I = 0x1312d00

.field private static final MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field private static final MIMETYPE_VIDEO_BYTEVC1:Ljava/lang/String; = "video/hevc"

.field private static final MIMETYPE_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field private static ROTATION_DEGREE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AVCEncoder"

.field private static TIMEOUT_USEC:I

.field static mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;


# instance fields
.field private codec_config:[B

.field fileWriter:Ljava/io/BufferedOutputStream;

.field inputBuffers:[Ljava/nio/ByteBuffer;

.field mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodecName:Ljava/lang/String;

.field private mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

.field private mColorFormat:I

.field private mDrawCount:I

.field private mEncodeCount:I

.field private mFlag:Z

.field private mHeight:I

.field private mIsError:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaCodecInfo:Landroid/media/MediaCodecInfo;

.field private mPTSQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfile:I

.field private mSurface:Landroid/view/Surface;

.field private mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

.field private mWidth:I

.field outputBuffers:[Ljava/nio/ByteBuffer;

.field private ret:I

.field status:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    const-string v0, "BITRATE_MODE_VBR"

    const-string v1, "BITRATE_MODE_CBR"

    const-string v2, "BITRATE_MODE_CQ"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/AVCEncoder;->BITRATE_MODES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    const/16 v0, 0x1388

    .line 68
    sput v0, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    const/4 v0, 0x0

    .line 69
    sput v0, Lcom/ss/android/medialib/AVCEncoder;->ROTATION_DEGREE:I

    const/16 v0, 0x1e

    .line 70
    sput v0, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    const/4 v0, 0x1

    .line 71
    sput v0, Lcom/ss/android/medialib/AVCEncoder;->I_FRAME_INTERVAL:I

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ss/android/medialib/AVCEncoder$1;

    invoke-direct {v1}, Lcom/ss/android/medialib/AVCEncoder$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 76
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 77
    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mFlag:Z

    .line 89
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    .line 90
    iput v1, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const/4 v2, 0x1

    .line 91
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mProfile:I

    .line 93
    sget-object v2, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    iput-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    .line 96
    iput-boolean v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    const/4 v2, -0x1

    .line 97
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoder;->ret:I

    .line 671
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    .line 672
    iput v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    .line 673
    iput v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 43
    invoke-static {}, Lcom/ss/android/medialib/AVCEncoder;->safeGetCodecCount()I

    move-result v0

    return v0
.end method

.method private getMediaCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 9

    .line 160
    invoke-static {}, Lcom/ss/android/medialib/AVCEncoder;->safeGetCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_49

    .line 162
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_46

    .line 166
    :cond_13
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 167
    const-string v5, "OMX.google."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "OMX.Nvidia."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_46

    .line 170
    :cond_30
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 171
    :goto_35
    array-length v6, v4

    if-ge v5, v6, :cond_46

    .line 172
    aget-object v6, v4, v5

    iget-object v7, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    return-object v3

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMediaCodecInfo21()Landroid/media/MediaCodecInfo;
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 182
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 183
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 184
    array-length v2, v0

    if-nez v2, :cond_11

    goto :goto_57

    .line 185
    :cond_11
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_57

    aget-object v5, v0, v4

    if-eqz v5, :cond_54

    .line 186
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_54

    .line 189
    :cond_21
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 190
    const-string v7, "OMX.google."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "OMX.Nvidia."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_54

    .line 193
    :cond_3e
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v7, v3

    .line 194
    :goto_43
    array-length v8, v6

    if-ge v7, v8, :cond_54

    .line 195
    aget-object v8, v6, v7

    iget-object v9, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_51

    return-object v5

    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_57
    :goto_57
    return-object v1
.end method

.method private getOneColorFormat()I
    .registers 5

    .line 239
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->getColorFormats()[I

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    .line 244
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 245
    aget v2, p0, v1

    const v3, 0x7f000789

    if-ne v2, v3, :cond_1d

    .line 246
    const-string v0, "AVCEncoder"

    const-string v2, "====== mColorFormat support COLOR_FormatSurface ======"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    aget p0, p0, v1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    return v0
.end method

.method private static safeGetCodecCount()I
    .registers 2

    .line 102
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    .line 104
    const-string v1, "AVCEncoder"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static setDrainWaitTimeout(I)V
    .registers 1

    .line 122
    sput p0, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    return-void
.end method

.method public static setFrameRate(I)V
    .registers 1

    .line 131
    sput p0, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    return-void
.end method

.method public static setIFrameInterval(I)V
    .registers 1

    .line 135
    sput p0, Lcom/ss/android/medialib/AVCEncoder;->I_FRAME_INTERVAL:I

    return-void
.end method

.method private setProfile(I)Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 12

    .line 953
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 955
    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    sget-object v1, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->ByteVC1:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    const-string v2, ", Level = "

    const-string v3, "Profile = "

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "AVCEncoder"

    const/4 v7, 0x0

    if-ne p0, v1, :cond_46

    .line 956
    iget-object p0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length p1, p0

    :goto_1e
    if-ge v4, p1, :cond_c9

    aget-object v0, p0, v4

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v1, v5, :cond_43

    return-object v0

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 963
    :cond_46
    sget-object v1, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->MPEG4:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-ne p0, v1, :cond_75

    .line 964
    iget-object p0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length p1, p0

    :goto_4d
    if-ge v4, p1, :cond_c9

    aget-object v0, p0, v4

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v1, v5, :cond_72

    return-object v0

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 971
    :cond_75
    sget-object v1, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-ne p0, v1, :cond_c9

    .line 972
    iget-object p0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v0, p0

    :goto_7c
    if-ge v4, v0, :cond_c9

    aget-object v1, p0, v4

    .line 973
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v8, v5, :cond_a6

    .line 975
    const-string v7, "Support Baseline Profile!"

    invoke-static {v6, v7}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    :cond_a6
    const/4 v9, 0x2

    if-ne v8, v9, :cond_b3

    .line 978
    const-string v8, "Support Main Profile!"

    invoke-static {v6, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ge v8, v9, :cond_c1

    goto :goto_c0

    :cond_b3
    const/16 v9, 0x8

    if-ne v8, v9, :cond_c1

    .line 983
    const-string v8, "Support High Profile!"

    invoke-static {v6, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ge v8, v9, :cond_c1

    :goto_c0
    move-object v7, v1

    .line 989
    :cond_c1
    iget v1, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v1, p1, :cond_c6

    return-object v7

    :cond_c6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    :cond_c9
    return-object v7
.end method

.method public static setRotation(I)V
    .registers 1

    .line 126
    sput p0, Lcom/ss/android/medialib/AVCEncoder;->ROTATION_DEGREE:I

    return-void
.end method


# virtual methods
.method public declared-synchronized createEncoder()I
    .registers 9

    monitor-enter p0

    .line 255
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    if-eqz v0, :cond_24

    .line 256
    const-string v0, "AVCEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEncoder is wrong status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_21

    .line 257
    monitor-exit p0

    const/16 p0, -0x12e

    return p0

    :catchall_21
    move-exception v0

    goto/16 :goto_a8

    .line 260
    :cond_24
    :try_start_24
    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoder;->getOneColorFormat()I

    move-result v0

    iput v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I

    if-gez v0, :cond_37

    .line 262
    const-string v0, "AVCEncoder"

    const-string v1, "get color format failed"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_21

    .line 263
    monitor-exit p0

    const/16 p0, -0x64

    return p0

    .line 267
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_83
    .catchall {:try_start_37 .. :try_end_3f} :catchall_21

    .line 275
    :try_start_3f
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OMX.google."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 277
    const-string v0, "AVCEncoder"

    const-string v1, "find OMX.google encode..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_21

    .line 278
    monitor-exit p0

    const/16 p0, -0x260

    return p0

    .line 280
    :cond_5a
    :try_start_5a
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 281
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_61
    if-ge v3, v1, :cond_7e

    aget-object v4, v0, v3

    .line 282
    const-string v5, "AVCEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CodecNames: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_7e
    const/4 v0, 0x1

    .line 284
    iput v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I
    :try_end_81
    .catchall {:try_start_5a .. :try_end_81} :catchall_21

    .line 285
    monitor-exit p0

    return v2

    :catch_83
    move-exception v0

    .line 269
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    const-string v1, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEncoderByTyp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_84 .. :try_end_a4} :catchall_21

    .line 272
    monitor-exit p0

    const/16 p0, -0x25f

    return p0

    :goto_a8
    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_21

    throw v0
.end method

.method public encode(IIIZ)I
    .registers 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p4

    .line 675
    const-string v4, "AVCEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodeTexture::texID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  isEndStream = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    monitor-enter p0

    .line 678
    :try_start_39
    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const/4 v5, 0x2

    const/4 v7, -0x1

    if-ne v4, v5, :cond_251

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v4, :cond_45

    goto/16 :goto_251

    :cond_45
    if-lez v0, :cond_231

    if-gez v2, :cond_4b

    goto/16 :goto_231

    .line 687
    :cond_4b
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    if-nez v4, :cond_5a

    .line 688
    invoke-virtual {v1}, Lcom/ss/android/medialib/AVCEncoder;->initEGLCtx()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 689
    monitor-exit p0

    return v7

    :catchall_57
    move-exception v0

    goto/16 :goto_25a

    .line 695
    :cond_5a
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 696
    iget v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 697
    const-string v2, "AVCEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encode: width = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sget v2, Lcom/ss/android/medialib/AVCEncoder;->ROTATION_DEGREE:I

    if-eqz v2, :cond_ae

    .line 699
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    rsub-int v2, v2, 0x168

    int-to-double v8, v2

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    double-to-float v2, v8

    invoke-virtual {v4, v2}, Lcom/ss/android/medialib/common/TextureDrawer;->setRotation(F)V

    .line 701
    :cond_ae
    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    invoke-virtual {v2, v0}, Lcom/ss/android/medialib/common/TextureDrawer;->drawTexture(I)V

    .line 702
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 703
    iget v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    .line 705
    sget-object v0, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSwapGlBuffers()V

    .line 707
    iget-boolean v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mFlag:Z

    if-eqz v0, :cond_c7

    .line 709
    iput-boolean v5, v1, Lcom/ss/android/medialib/AVCEncoder;->mFlag:Z
    :try_end_c7
    .catchall {:try_start_39 .. :try_end_c7} :catchall_57

    :cond_c7
    const/4 v0, -0x2

    if-eqz v3, :cond_d4

    .line 715
    :try_start_ca
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_cf
    .catchall {:try_start_ca .. :try_end_cf} :catchall_d0

    goto :goto_d4

    .line 717
    :catchall_d0
    :try_start_d0
    iput-boolean v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    .line 718
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_57

    return v0

    :cond_d4
    :goto_d4
    move v4, v5

    :goto_d5
    add-int/2addr v4, v2

    const/4 v6, -0x3

    .line 729
    :try_start_d7
    iget-object v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget v10, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_20b

    .line 739
    :try_start_e2
    const-string v9, "AVCEncoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "outputBufferIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v9, "AVCEncoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBufferInfo.flags = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v7, :cond_12d

    if-eqz v3, :cond_120

    .line 743
    sget v6, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    const/16 v8, 0x1388

    if-ge v6, v8, :cond_120

    const/16 v6, 0x2710

    .line 744
    sput v6, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    :cond_120
    if-eqz v3, :cond_14b

    .line 746
    iget v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    iget v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    if-eq v6, v8, :cond_14b

    const/16 v6, 0xa

    if-ge v4, v6, :cond_14b

    goto :goto_d5

    :cond_12d
    if-ne v8, v6, :cond_138

    .line 751
    iget-object v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_d5

    :cond_138
    if-ne v8, v0, :cond_142

    .line 753
    const-string v6, "AVCEncoder"

    const-string v8, "encode: output format change!"

    invoke-static {v6, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    :cond_142
    if-gez v8, :cond_152

    .line 755
    const-string v0, "AVCEncoder"

    const-string v2, "encode: error."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14b
    if-eqz v3, :cond_150

    .line 815
    invoke-virtual {v1}, Lcom/ss/android/medialib/AVCEncoder;->releaseEGLCtx()V

    .line 817
    :cond_150
    monitor-exit p0

    return v5

    .line 761
    :cond_152
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 765
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 766
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v4

    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 767
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_185

    .line 773
    const-string v4, "AVCEncoder"

    const-string v6, "mEncoderCaller.onSetCodecConfig"

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sget-object v4, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v4, :cond_17f

    .line 775
    invoke-interface {v4, v10}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSetCodecConfig(Ljava/nio/ByteBuffer;)V

    .line 777
    :cond_17f
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_204

    :cond_185
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_18b

    move v15, v2

    goto :goto_18c

    :cond_18b
    move v15, v5

    .line 793
    :goto_18c
    const-string v4, "AVCEncoder"

    const-string v6, "mEncoderCaller.onWriteFile"

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-object v4, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v4, :cond_1fd

    .line 795
    const-string v4, "AVCEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encode: pts queue size = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1f5

    .line 797
    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    .line 798
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 799
    iget-object v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-lez v6, :cond_1d3

    goto :goto_1d4

    :cond_1d3
    move-wide v11, v13

    .line 800
    :goto_1d4
    sget-object v9, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v13, v4

    if-eqz v3, :cond_1ef

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1ef

    move/from16 v16, v2

    goto :goto_1f1

    :cond_1ef
    move/from16 v16, v5

    :goto_1f1
    invoke-interface/range {v9 .. v16}, Lcom/ss/android/medialib/AVCEncoderInterface;->onWriteFile(Ljava/nio/ByteBuffer;JJIZ)V

    goto :goto_204

    .line 803
    :cond_1f5
    const-string v4, "AVCEncoder"

    const-string v6, "encode: no available pts!!!"

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_204

    .line 806
    :cond_1fd
    const-string v4, "AVCEncoder"

    const-string v6, "encode: no output."

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_204
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v8, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_d4

    :catchall_20b
    move-exception v0

    .line 731
    iget-boolean v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    if-nez v3, :cond_22d

    .line 733
    const-string v3, "AVCEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dequeueOutputBuffer failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 736
    :cond_22d
    iput-boolean v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    .line 737
    monitor-exit p0

    return v6

    .line 684
    :cond_231
    :goto_231
    const-string v3, "AVCEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode: invalidate params: texID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pts = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    monitor-exit p0

    return v7

    .line 679
    :cond_251
    :goto_251
    const-string v0, "AVCEncoder"

    const-string v2, "encode: codec is not ready."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    monitor-exit p0

    return v7

    .line 817
    :goto_25a
    monitor-exit p0
    :try_end_25b
    .catchall {:try_start_e2 .. :try_end_25b} :catchall_57

    throw v0
.end method

.method public encode([BIZ)I
    .registers 14

    .line 824
    monitor-enter p0

    .line 825
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ef

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_c

    goto/16 :goto_ef

    .line 828
    :cond_c
    const-string v0, "AVCEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeBuffer pts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  isEndStream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz v4, :cond_56

    .line 836
    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 838
    array-length v3, p1

    invoke-virtual {v2, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 839
    iget-object v3, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    array-length v6, p1

    int-to-long v7, p2

    if-ne p3, v0, :cond_4c

    const/4 p1, 0x4

    move v9, p1

    goto :goto_4d

    :cond_4c
    move v9, v1

    :goto_4d
    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_56

    :catchall_52
    move-exception v0

    move-object p1, v0

    goto/16 :goto_f2

    .line 842
    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget p3, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    int-to-long v2, p3

    invoke-virtual {p1, p2, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    .line 843
    const-string p2, "AVCEncoder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outputBufferIndex = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string p2, "AVCEncoder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBufferInfo.flags = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_91
    if-ltz p1, :cond_ed

    .line 847
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 848
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 849
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, p3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 851
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_c5

    .line 857
    const-string p3, "AVCEncoder"

    const-string v2, "mEncoderCaller.onSetCodecConfig"

    invoke-static {p3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    sget-object p3, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz p3, :cond_c0

    .line 859
    invoke-interface {p3, p2}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSetCodecConfig(Ljava/nio/ByteBuffer;)V

    .line 861
    :cond_c0
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_dd

    .line 864
    :cond_c5
    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int p3, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ce

    move v2, v0

    goto :goto_cf

    :cond_ce
    move v2, v1

    .line 877
    :goto_cf
    const-string v3, "AVCEncoder"

    const-string v4, "mEncoderCaller.onWriteFile"

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    sget-object v3, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v3, :cond_dd

    .line 879
    invoke-interface {v3, p2, p3, v1, v2}, Lcom/ss/android/medialib/AVCEncoderInterface;->onWriteFile(Ljava/nio/ByteBuffer;III)V

    .line 884
    :cond_dd
    :goto_dd
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 886
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    goto :goto_91

    .line 947
    :cond_ed
    monitor-exit p0

    return v1

    :cond_ef
    :goto_ef
    const/4 p1, -0x1

    .line 826
    monitor-exit p0

    return p1

    .line 947
    :goto_f2
    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_1 .. :try_end_f3} :catchall_52

    throw p1
.end method

.method public getColorFormats()[I
    .registers 5

    .line 205
    const-string v0, "start == "

    const-string v1, "AVCEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoder;->getMediaCodecInfo21()Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    .line 208
    const-string v0, "end == "

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_1d

    .line 211
    const-string p0, "mMediaCodecInfo failed"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaCodecInfo name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 218
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, v0

    .line 219
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_50

    .line 221
    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_50
    return-object v1
.end method

.method getInitHardEncodeRet()I
    .registers 1

    .line 999
    iget p0, p0, Lcom/ss/android/medialib/AVCEncoder;->ret:I

    return p0
.end method

.method public getProfile()I
    .registers 1

    .line 228
    iget p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mProfile:I

    return p0
.end method

.method public initAVCEncoder(IIII)Landroid/view/Surface;
    .registers 13

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 289
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public initAVCEncoder(IIIIIIZ)Landroid/view/Surface;
    .registers 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    const/4 v7, -0x1

    .line 300
    iput v7, v1, Lcom/ss/android/medialib/AVCEncoder;->ret:I

    const/4 v8, 0x0

    if-nez v6, :cond_15

    return-object v8

    :cond_15
    const/4 v9, 0x0

    .line 310
    iput v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    .line 311
    iput v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    .line 312
    const-string v10, "AVCEncoder"

    const-string v11, "initAVCEncoder == enter"

    invoke-static {v10, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ltz v4, :cond_27

    if-le v4, v10, :cond_43

    .line 314
    :cond_27
    const-string v12, "AVCEncoder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Do not support bitrate mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", set VBR mode"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v11

    :cond_43
    if-lt v5, v11, :cond_49

    const/16 v12, 0x40

    if-le v5, v12, :cond_65

    .line 319
    :cond_49
    const-string v12, "AVCEncoder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Do not support profile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", use baseline"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v11

    .line 323
    :cond_65
    const-string v12, "AVCEncoder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "width + "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\theight = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\tbitrate = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\tuseTextureInput = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_376

    if-gtz v2, :cond_99

    goto/16 :goto_376

    .line 333
    :cond_99
    iput v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    .line 334
    iput v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    .line 336
    monitor-enter p0

    .line 339
    :try_start_9e
    invoke-virtual {v1}, Lcom/ss/android/medialib/AVCEncoder;->createEncoder()I

    move-result v6

    if-eqz v6, :cond_b3

    .line 341
    const-string v0, "AVCEncoder"

    const-string v2, "create encoder failed"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ab} :catch_b0
    .catchall {:try_start_9e .. :try_end_ab} :catchall_ad

    .line 342
    :try_start_ab
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ad

    return-object v8

    :catchall_ad
    move-exception v0

    goto/16 :goto_374

    :catch_b0
    move-exception v0

    goto/16 :goto_366

    .line 345
    :cond_b3
    :try_start_b3
    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v6, :cond_bc

    .line 346
    iget v12, v1, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I

    invoke-interface {v6, v12}, Lcom/ss/android/medialib/AVCEncoderInterface;->setColorFormat(I)V

    .line 349
    :cond_bc
    iget-object v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-static {v6, v0, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    .line 352
    invoke-direct {v1, v5}, Lcom/ss/android/medialib/AVCEncoder;->setProfile(I)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v12

    .line 353
    iget-object v13, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v13}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v13

    iget-object v14, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v13

    .line 355
    invoke-virtual {v13}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v14

    move v15, v9

    :goto_d7
    const/4 v8, 0x3

    if-ge v15, v8, :cond_100

    .line 357
    const-string v8, "AVCEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/ss/android/medialib/AVCEncoder;->BITRATE_MODES:[Ljava/lang/String;

    aget-object v11, v17, v15

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v7, -0x1

    const/4 v11, 0x1

    goto :goto_d7

    :cond_100
    const v7, 0x1312d00

    if-eqz v12, :cond_1a4

    .line 365
    iget v5, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput v5, v1, Lcom/ss/android/medialib/AVCEncoder;->mProfile:I

    .line 366
    const-string v11, "profile"

    invoke-virtual {v6, v11, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 367
    iget v5, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 368
    iget-object v11, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    sget-object v14, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    const/high16 v15, 0x3f400000    # 0.75f

    if-ne v11, v14, :cond_154

    .line 369
    iget v11, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v11, v10, :cond_12d

    const/16 v14, 0x8

    if-eq v11, v14, :cond_122

    move v11, v3

    goto :goto_13a

    .line 371
    :cond_122
    const-string v11, "AVCEncoder"

    const-string v14, "Set High Profile"

    invoke-static {v11, v14}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v11, v3

    mul-float/2addr v11, v15

    :goto_12b
    float-to-int v11, v11

    goto :goto_13a

    .line 375
    :cond_12d
    const-string v11, "AVCEncoder"

    const-string v14, "Set Main Profile"

    invoke-static {v11, v14}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v11, v3

    const v14, 0x3f59999a    # 0.85f

    mul-float/2addr v11, v14

    goto :goto_12b

    .line 379
    :goto_13a
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v14

    const-string v15, "ve_enable_adaptive_encode_level"

    invoke-virtual {v14, v15, v9}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_164

    if-le v11, v7, :cond_14d

    move v11, v7

    .line 383
    :cond_14d
    sget v5, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    invoke-static {v12, v0, v2, v5, v11}, Lcom/ss/android/medialib/MediaCodecUtils;->findBestMatchedAVCLevel(Landroid/media/MediaCodecInfo$CodecProfileLevel;IIII)I

    move-result v5

    goto :goto_164

    .line 385
    :cond_154
    sget-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->ByteVC1:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-ne v11, v0, :cond_163

    .line 386
    const-string v0, "AVCEncoder"

    const-string v2, "Set ByteVC1 Main Profile"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, v3

    mul-float/2addr v0, v15

    float-to-int v11, v0

    goto :goto_164

    :cond_163
    move v11, v3

    .line 389
    :cond_164
    :goto_164
    const-string v0, "level"

    invoke-virtual {v6, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 390
    const-string v0, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set Profile: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Level = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxLevel = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "te_mediacodec_profile"

    iget v2, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    int-to-long v14, v2

    invoke-static {v9, v0, v14, v15}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 395
    const-string v0, "iesve_record_mediacodec_profile"

    iget v2, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    int-to-long v14, v2

    invoke-static {v0, v14, v15}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    goto :goto_1cc

    .line 397
    :cond_1a4
    const-string v0, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do not support profile "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", use baseline"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "te_mediacodec_profile"

    const-wide/16 v11, 0x1

    invoke-static {v9, v0, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 401
    const-string v0, "iesve_record_mediacodec_profile"

    invoke-static {v0, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    move v11, v3

    :goto_1cc
    if-le v11, v7, :cond_1cf

    goto :goto_1d0

    :cond_1cf
    move v7, v11

    .line 405
    :goto_1d0
    const-string v0, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v5, v7

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v5, v11

    const v11, 0x49742400    # 1000000.0f

    div-float/2addr v5, v11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "Mb/s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->MPEG4:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-ne v0, v2, :cond_229

    .line 409
    const-string v2, "profile"

    const/4 v5, 0x1

    invoke-virtual {v6, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 410
    const-string v2, "level"

    invoke-virtual {v6, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    mul-int/2addr v7, v10

    .line 412
    const-string v2, "bitrate"

    invoke-virtual {v6, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 413
    const-string v2, "te_record_hard_encode_bitrate"

    int-to-long v11, v7

    invoke-static {v9, v2, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    goto :goto_234

    .line 415
    :cond_229
    const-string v2, "bitrate"

    invoke-virtual {v6, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 416
    const-string v2, "te_record_hard_encode_bitrate"

    int-to-long v11, v7

    invoke-static {v9, v2, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 420
    :goto_234
    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-eq v0, v2, :cond_2a7

    .line 421
    invoke-virtual {v13}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v0

    move v2, v9

    :goto_23d
    if-ge v2, v8, :cond_263

    .line 423
    const-string v5, "AVCEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/ss/android/medialib/AVCEncoder;->BITRATE_MODES:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23d

    .line 425
    :cond_263
    const-string v2, "bitrate-mode"

    invoke-virtual {v6, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 426
    const-string v2, "AVCEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitrate mode = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "te_record_mediacodec_rate_control"

    int-to-long v4, v4

    invoke-static {v9, v2, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 431
    const-string v2, "max-bitrate"

    invoke-virtual {v6, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 432
    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoder ComplexityRange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getComplexityRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_2a7
    const-string v0, "color-format"

    iget v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I

    invoke-virtual {v6, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 460
    const-string v0, "frame-rate"

    sget v2, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    invoke-virtual {v6, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 461
    const-string v0, "i-frame-interval"

    sget v2, Lcom/ss/android/medialib/AVCEncoder;->I_FRAME_INTERVAL:I

    invoke-virtual {v6, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 465
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v2, ".qcom."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2da

    const-string v2, ".qti."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 468
    :cond_2da
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "ve_content_adaptive_coding_mode"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 469
    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set cac value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_302

    .line 471
    const-string v2, "vendor.qti-ext-enc-content-adaptive-mode.value"

    invoke-virtual {v6, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 477
    :cond_302
    const-string v0, "te_record_video_encode_gop"

    sget v2, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    int-to-long v2, v2

    invoke-static {v9, v0, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 479
    const-string v0, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAVCEncoder: format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", frameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", iFrameInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/medialib/AVCEncoder;->I_FRAME_INTERVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v6, v2, v2, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 483
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    .line 484
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 485
    iput v10, v1, Lcom/ss/android/medialib/AVCEncoder;->status:I

    .line 492
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_351} :catch_b0
    .catchall {:try_start_b3 .. :try_end_351} :catchall_ad

    .line 500
    :try_start_351
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_359

    .line 501
    monitor-exit p0

    const/16 v16, 0x0

    return-object v16

    .line 503
    :cond_359
    monitor-exit p0
    :try_end_35a
    .catchall {:try_start_351 .. :try_end_35a} :catchall_ad

    .line 505
    iput v9, v1, Lcom/ss/android/medialib/AVCEncoder;->ret:I

    .line 506
    const-string v0, "AVCEncoder"

    const-string v2, "initAVCEncoder == exit"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    return-object v0

    .line 494
    :goto_366
    :try_start_366
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v2, -0xde

    .line 495
    iput v2, v1, Lcom/ss/android/medialib/AVCEncoder;->ret:I

    .line 496
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEExceptionMonitor;->monitorException(Ljava/lang/Throwable;)V

    .line 497
    monitor-exit p0

    const/16 v16, 0x0

    return-object v16

    .line 503
    :goto_374
    monitor-exit p0
    :try_end_375
    .catchall {:try_start_366 .. :try_end_375} :catchall_ad

    throw v0

    :cond_376
    :goto_376
    const/16 v0, -0x64

    .line 329
    iput v0, v1, Lcom/ss/android/medialib/AVCEncoder;->ret:I

    const/16 v16, 0x0

    return-object v16
.end method

.method public initAVCEncoder(IIIIZ)Landroid/view/Surface;
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    .line 293
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public initEGLCtx()Z
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_d

    .line 513
    const-string p0, "AVCEncoder"

    const-string v0, "initEGLCtx: MediaCodec should initialized ahead."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 527
    :cond_d
    invoke-static {}, Lcom/ss/android/medialib/common/TextureDrawer;->create()Lcom/ss/android/medialib/common/TextureDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    const/4 v1, 0x0

    .line 528
    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/common/TextureDrawer;->setRotation(F)V

    .line 529
    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/common/TextureDrawer;->setFlipScale(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public isError()Z
    .registers 1

    .line 585
    iget-boolean p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    return p0
.end method

.method public releaseEGLCtx()V
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    if-eqz v0, :cond_a

    .line 537
    invoke-virtual {v0}, Lcom/ss/android/medialib/common/TextureDrawer;->release()V

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    :cond_a
    return-void
.end method

.method public declared-synchronized releaseEncoder()V
    .registers 7

    monitor-enter p0

    .line 589
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    .line 591
    :try_start_5
    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_d
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v0

    goto :goto_30

    :catch_d
    :goto_d
    const/4 v2, 0x0

    .line 596
    :try_start_e
    iput-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    .line 597
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    .line 598
    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_b

    .line 599
    monitor-exit p0

    return-void

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_b

    throw v0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saving Bitmap : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AVCEncoder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 642
    :try_start_17
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_65
    .catchall {:try_start_17 .. :try_end_1c} :catchall_61

    .line 643
    :try_start_1c
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_5d
    .catchall {:try_start_1c .. :try_end_21} :catchall_59

    .line 644
    :try_start_21
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, p0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 645
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_57
    .catchall {:try_start_21 .. :try_end_2b} :catchall_55

    .line 653
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 656
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 661
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    .line 664
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 668
    :goto_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Bitmap "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " saved!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_55
    move-exception p0

    goto :goto_86

    :catch_57
    move-exception p0

    goto :goto_69

    :catchall_59
    move-exception p1

    move-object v2, p0

    :goto_5b
    move-object p0, p1

    goto :goto_86

    :catch_5d
    move-exception p1

    move-object v2, p0

    :goto_5f
    move-object p0, p1

    goto :goto_69

    :catchall_61
    move-exception p1

    move-object v1, p0

    move-object v2, v1

    goto :goto_5b

    :catch_65
    move-exception p1

    move-object v1, p0

    move-object v2, v1

    goto :goto_5f

    .line 647
    :goto_69
    :try_start_69
    const-string p1, "Err when saving bitmap..."

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_55

    if-eqz v2, :cond_7b

    .line 653
    :try_start_73
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p0

    .line 656
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7b
    :goto_7b
    if-eqz v1, :cond_85

    .line 661
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p0

    .line 664
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_85
    :goto_85
    return-void

    :goto_86
    if-eqz v2, :cond_90

    .line 653
    :try_start_88
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception p1

    .line 656
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_90
    :goto_90
    if-eqz v1, :cond_9a

    .line 661
    :try_start_92
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception p1

    .line 664
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 666
    :cond_9a
    :goto_9a
    throw p0
.end method

.method public setBitrateMode(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 233
    const-string p0, "bitrate-mode"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method public setCodecType(I)V
    .registers 3

    .line 142
    invoke-static {}, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->values()[Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    .line 143
    sget-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->MPEG4:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-ne v0, p1, :cond_11

    .line 144
    const-string p1, "video/mp4v-es"

    iput-object p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    goto :goto_1e

    .line 145
    :cond_11
    sget-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->ByteVC1:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    if-ne p1, v0, :cond_1a

    .line 146
    const-string p1, "video/hevc"

    iput-object p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    goto :goto_1e

    .line 148
    :cond_1a
    const-string p1, "video/avc"

    iput-object p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    .line 150
    :goto_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCodecType on AVCEncoder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecType:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AVCEncoder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderInterface;)V
    .registers 2

    .line 154
    sput-object p1, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    return-void
.end method

.method public uninitAVCEncoder()V
    .registers 4

    const/16 v0, 0x1e

    .line 543
    sput v0, Lcom/ss/android/medialib/AVCEncoder;->FRAME_RATE:I

    const/4 v0, 0x1

    .line 544
    sput v0, Lcom/ss/android/medialib/AVCEncoder;->I_FRAME_INTERVAL:I

    .line 546
    const-string v0, "AVCEncoder"

    const-string v1, "uninitAVCEncoder == enter"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    monitor-enter p0

    .line 550
    :try_start_f
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1f

    if-nez v1, :cond_18

    goto :goto_3e

    :cond_18
    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    .line 554
    :try_start_1b
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_28

    :catchall_1f
    move-exception v0

    goto :goto_40

    .line 556
    :catch_21
    :try_start_21
    const-string v0, "AVCEncoder"

    const-string v1, "MediaCodec Exception"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    const/4 v0, 0x3

    .line 560
    iput v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    .line 572
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_32

    .line 573
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 576
    :cond_32
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->releaseEncoder()V

    .line 577
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_1f

    .line 579
    const-string p0, "AVCEncoder"

    const-string v0, "uninitAVCEncoder == exit"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 550
    :cond_3e
    :goto_3e
    :try_start_3e
    monitor-exit p0

    return-void

    .line 577
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_1f

    throw v0
.end method
