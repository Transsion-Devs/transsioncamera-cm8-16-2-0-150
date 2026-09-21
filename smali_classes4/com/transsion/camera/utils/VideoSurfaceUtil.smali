.class public Lcom/transsion/camera/utils/VideoSurfaceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile mVideoSurface:Landroid/view/Surface;

.field private static sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;


# instance fields
.field private mInBackVideoEnhance1080p30fps:Z

.field private mVideoHeight:I

.field private mVideoQuality:I

.field private mVideoWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fputmVideoQuality(Lcom/transsion/camera/utils/VideoSurfaceUtil;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoQuality:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareSurface(Lcom/transsion/camera/utils/VideoSurfaceUtil;ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->prepareSurface(ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoSurfaceUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 26
    iput v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    .line 27
    iput v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoQuality:I

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;
    .registers 1

    .line 35
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;

    invoke-direct {v0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    .line 38
    :cond_b
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    return-object v0
.end method

.method private prepareSurface(ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V
    .registers 13

    if-eqz p2, :cond_8

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    goto/16 :goto_e3

    .line 88
    :cond_10
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prepareSurface]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " inBackVideoEnhance1080p30fps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSatCamera ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p5, :cond_47

    .line 92
    const-string p3, "0"

    :cond_47
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 91
    invoke-static {p3, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    if-nez p1, :cond_57

    .line 95
    const-string p0, "prepareSurface profile is null !!!!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_57
    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p3, :cond_63

    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-nez p3, :cond_6e

    .line 99
    :cond_63
    const-string p3, "prepareSurface MediaCodec.createPersistentInputSurface"

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object p3

    sput-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    .line 102
    :cond_6e
    new-instance p3, Landroid/media/MediaRecorder;

    invoke-direct {p3}, Landroid/media/MediaRecorder;-><init>()V

    const/4 p5, 0x2

    .line 104
    :try_start_74
    invoke-virtual {p3, p5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 p5, 0x5

    .line 105
    invoke-virtual {p3, p5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 106
    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 107
    invoke-virtual {p3, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    if-eqz p6, :cond_96

    .line 109
    invoke-virtual {p6}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 110
    invoke-virtual {p6}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    goto :goto_9e

    :catchall_90
    move-exception v0

    move-object p0, v0

    goto :goto_dc

    :catch_93
    move-exception v0

    move-object p0, v0

    goto :goto_cf

    .line 112
    :cond_96
    iget p5, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p5, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 113
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    .line 115
    :goto_9e
    iput-boolean p4, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mInBackVideoEnhance1080p30fps:Z

    .line 116
    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p3, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 117
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->prepare()V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[prepareSurface] success, video size:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "x"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_c8} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_c8} :catch_93
    .catchall {:try_start_74 .. :try_end_c8} :catchall_90

    .line 123
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 124
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->release()V

    return-void

    .line 120
    :goto_cf
    :try_start_cf
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 121
    sput-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_90

    .line 123
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 124
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->release()V

    return-void

    .line 123
    :goto_dc
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 124
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->release()V

    .line 125
    throw p0

    .line 84
    :goto_e3
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->prepareSurfaceWithoutFile(ILjava/lang/String;ZZLandroid/util/Size;)V

    return-void
.end method

.method private declared-synchronized prepareSurfaceWithoutFile(ILjava/lang/String;ZZLandroid/util/Size;)V
    .registers 10

    monitor-enter p0

    .line 130
    :try_start_1
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prepareSurfaceWithNoFile]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " inBackVideoEnhance1080p30fps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p4, :cond_30

    .line 132
    const-string p2, "0"

    :cond_30
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_38

    :catchall_35
    move-exception p1

    goto/16 :goto_151

    .line 134
    :goto_38
    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->isSupportCustomVideoQuality(I)Z

    move-result p4

    const/4 v0, 0x6

    if-eqz p4, :cond_48

    const/4 p1, 0x5

    .line 135
    invoke-static {p2, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_35

    goto :goto_5c

    .line 139
    :cond_48
    :try_start_48
    invoke-static {p2, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_4d
    .catchall {:try_start_48 .. :try_end_4c} :catchall_35

    goto :goto_5c

    :catch_4d
    move-exception p1

    .line 141
    :try_start_4e
    sget-object p4, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepareSurfaceWithNoFile: CamcorderProfile.get with exception, please check it."

    invoke-static {p4, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    invoke-static {p2, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    :goto_5c
    if-nez p1, :cond_67

    .line 148
    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "prepareSurfaceWithNoFile profile is null !!!!"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_35

    .line 149
    monitor-exit p0

    return-void

    :cond_67
    if-eqz p5, :cond_76

    .line 153
    :try_start_69
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 154
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    goto :goto_7e

    .line 156
    :cond_76
    iget p2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 157
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    .line 160
    :goto_7e
    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p1, :cond_8a

    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_97

    .line 161
    :cond_8a
    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "prepareSurfaceWithNoFile MediaCodec.createPersistentInputSurface"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object p1

    sput-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    .line 164
    :cond_97
    const-string p1, "video/avc"

    .line 165
    iget p2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    iget p4, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    invoke-static {p1, p2, p4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    .line 166
    const-string p4, "color-format"

    const p5, 0x7f000789

    invoke-virtual {p2, p4, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 167
    const-string p4, "bitrate-mode"

    const/4 p5, 0x2

    invoke-virtual {p2, p4, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 168
    const-string p4, "bitrate"

    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    mul-int/2addr v1, v2

    invoke-virtual {p2, p4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    const-string p4, "frame-rate"

    const/16 v1, 0x1e

    invoke-virtual {p2, p4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 170
    const-string p4, "capture-rate"

    invoke-virtual {p2, p4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 171
    const-string p4, "i-frame-interval"

    const/4 v1, 0x1

    invoke-virtual {p2, p4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    sget-object p4, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSurfaceWithoutFile: inBackVideoEnhance1080p30fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-eqz p3, :cond_f5

    .line 174
    const-string v3, "color-range"

    invoke-virtual {p2, v3, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 175
    const-string v3, "color-standard"

    invoke-virtual {p2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 176
    const-string v0, "color-transfer"

    invoke-virtual {p2, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 179
    :cond_f5
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 180
    const-string v0, "prepareSurfaceWithoutFile: set color space to bt709"

    invoke-static {p4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    const-string v0, "color-range"

    invoke-virtual {p2, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 182
    const-string p5, "color-standard"

    invoke-virtual {p2, p5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 183
    const-string p5, "color-transfer"

    invoke-virtual {p2, p5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 186
    :cond_10f
    iput-boolean p3, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mInBackVideoEnhance1080p30fps:Z

    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "prepareSurfaceWithNoFile configCodec format: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_69 .. :try_end_125} :catchall_35

    const/4 p3, 0x0

    .line 191
    :try_start_126
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12a} :catch_13d
    .catchall {:try_start_126 .. :try_end_12a} :catchall_13b

    .line 192
    :try_start_12a
    invoke-virtual {p1, p2, p3, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 194
    sget-object p2, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 195
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_135} :catch_139
    .catchall {:try_start_12a .. :try_end_135} :catchall_136

    goto :goto_146

    :catchall_136
    move-exception p2

    move-object p3, p1

    goto :goto_14b

    :catch_139
    move-exception p2

    goto :goto_13f

    :catchall_13b
    move-exception p2

    goto :goto_14b

    :catch_13d
    move-exception p2

    move-object p1, p3

    .line 197
    :goto_13f
    :try_start_13f
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    sput-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;
    :try_end_144
    .catchall {:try_start_13f .. :try_end_144} :catchall_136

    if-eqz p1, :cond_149

    .line 201
    :goto_146
    :try_start_146
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_35

    .line 204
    :cond_149
    monitor-exit p0

    return-void

    :goto_14b
    if-eqz p3, :cond_150

    .line 201
    :try_start_14d
    invoke-virtual {p3}, Landroid/media/MediaCodec;->release()V

    .line 203
    :cond_150
    throw p2

    :goto_151
    monitor-exit p0
    :try_end_152
    .catchall {:try_start_14d .. :try_end_152} :catchall_35

    throw p1
.end method


# virtual methods
.method public createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZLandroid/util/Size;)V

    return-void
.end method

.method public createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZLandroid/util/Size;)V
    .registers 17

    .line 60
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createVideoSurface for low platform."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    const-string v0, "_"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 62
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSet1080p30fpsColorSpaceToBt2020:Z

    if-eqz p1, :cond_1e

    iget-boolean p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mInBackVideoEnhance1080p30fps:Z

    if-ne p1, p4, :cond_1b

    if-eqz p4, :cond_1e

    :cond_1b
    const/4 p1, 0x1

    :goto_1c
    move v7, p1

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_1c

    .line 63
    :goto_20
    iget p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoQuality:I

    if-ne v4, p1, :cond_34

    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p1, :cond_34

    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_34

    if-eqz v7, :cond_33

    goto :goto_34

    :cond_33
    return-void

    .line 64
    :cond_34
    :goto_34
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;

    const-string v3, "VideoSurfaceUtil"

    move-object v2, p0

    move-object v6, p2

    move-object v5, p3

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;-><init>(Lcom/transsion/camera/utils/VideoSurfaceUtil;Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V

    const-wide/16 p2, 0x64

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, p2, p3, p0}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->schedule(Lcom/transsion/camera/utils/threads/WorkTask;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)Landroid/view/Surface;
    .registers 15

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 42
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;ZZLandroid/util/Size;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;ZZLandroid/util/Size;)Landroid/view/Surface;
    .registers 16

    .line 46
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSet1080p30fpsColorSpaceToBt2020:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mInBackVideoEnhance1080p30fps:Z

    if-ne v0, p6, :cond_e

    if-eqz p6, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 47
    :goto_11
    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    if-ne v1, p3, :cond_27

    iget p3, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    if-ne p3, p4, :cond_27

    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p3, :cond_27

    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-eqz p3, :cond_27

    if-eqz v0, :cond_39

    .line 48
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->releaseSurface()V

    .line 49
    const-string p3, "_"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v3, p2

    move-object v2, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->prepareSurface(ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V

    .line 52
    :cond_39
    sget-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public declared-synchronized releaseSurface()V
    .registers 3

    monitor-enter p0

    .line 75
    :try_start_1
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseSurface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_17

    .line 77
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_19

    .line 80
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    throw v0
.end method
