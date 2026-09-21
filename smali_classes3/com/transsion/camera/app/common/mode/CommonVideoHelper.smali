.class public Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AOD_SUFFIX:Ljava/lang/String; = "_aod"

.field private static final FILE_ERROR:I = -0x2

.field protected static final INVALID_DURATION:I = -0x1

.field private static final JPEG_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final MIME_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MIME_THREE_GPP:Ljava/lang/String; = "video/3gp"

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final SEPARATOR:Ljava/lang/String;

.field protected static final SNAPSHOT_NAME_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_S"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THREE_GPP_SUFFIX:Ljava/lang/String; = ".3gp"

.field protected static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "\'VID\'_yyyyMMdd_HHmmss"


# instance fields
.field private mAodCamera:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonVideoHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 53
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 64
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 66
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static getDuration(Ljava/io/FileDescriptor;)J
    .registers 4

    .line 229
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 231
    :try_start_5
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 p0, 0x9

    .line 233
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_12} :catch_18
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 241
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catchall_16
    move-exception p0

    goto :goto_36

    :catch_18
    move-exception p0

    goto :goto_1c

    :catch_1a
    move-exception p0

    goto :goto_29

    .line 238
    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "RuntimeException: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_16

    .line 241
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 v0, -0x2

    return-wide v0

    .line 235
    :goto_29
    :try_start_29
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "IllegalArgumentException: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_16

    .line 241
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_36
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 242
    throw p0
.end method

.method public static getDuration(Ljava/lang/String;)J
    .registers 5

    .line 210
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x2

    .line 212
    :try_start_6
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 214
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 213
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_13} :catch_19
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 224
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catchall_17
    move-exception p0

    goto :goto_45

    :catch_19
    move-exception p0

    goto :goto_1d

    :catch_1b
    move-exception p0

    goto :goto_31

    .line 220
    :goto_1d
    :try_start_1d
    sget-object v2, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "RuntimeException: "

    invoke-static {v2, v3, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_17

    .line 224
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 v0, -0x2

    return-wide v0

    .line 216
    :goto_31
    :try_start_31
    sget-object v2, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "IllegalArgumentException: "

    invoke-static {v2, v3, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_17

    .line 224
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_45
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 225
    throw p0
.end method


# virtual methods
.method public adjustRingStreamVolume(ZLandroid/content/Context;)V
    .registers 6

    .line 77
    sget-object p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[adjustRingStreamVolume] isMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_4a

    .line 81
    :cond_21
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 83
    :try_start_29
    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , ringMode:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x2

    if-eq p0, v0, :cond_4b

    :goto_4a
    return-void

    :cond_4b
    const/4 v0, 0x0

    if-eqz p1, :cond_54

    const/16 p1, -0x64

    .line 90
    invoke-virtual {p2, p0, p1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :cond_54
    const/16 p1, 0x64

    .line 92
    invoke-virtual {p2, p0, p1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p0

    .line 95
    sget-object p1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustRingStreamVolume error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result v2

    .line 164
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif([B)Landroid/util/Size;

    move-result-object p1

    .line 166
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "\'IMG\'_yyyyMMdd_HHmmss_S"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 167
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAodCamera:Z

    if-eqz p0, :cond_33

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_aod"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_33
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result p0

    if-eqz p0, :cond_42

    .line 172
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p0

    const/4 v4, 0x1

    .line 173
    invoke-interface {p0, v3, v4}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 179
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 180
    const-string v5, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string/jumbo v0, "title"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "_display_name"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string p0, "mime_type"

    const-string v0, "image/jpeg"

    invoke-virtual {v4, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string p0, "orientation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string p0, "_data"

    invoke-virtual {v4, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p3, "width"

    invoke-virtual {v4, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "height"

    invoke-virtual {v4, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_cc

    .line 189
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-virtual {v4, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 190
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v4, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_cc
    return-object v4
.end method

.method public createVideoContentValues(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;
    .registers 16

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getVideoNameFormat()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAodCamera:Z

    if-eqz p0, :cond_2d

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_aod"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p0

    const/4 v3, 0x0

    .line 128
    invoke-interface {p0, v2, v3}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v4

    .line 134
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getOrientation()I

    move-result v6

    .line 136
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 138
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 139
    const-string/jumbo v9, "title"

    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "_display_name"

    invoke-virtual {v5, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string p0, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v9, 0x3e8

    .line 142
    div-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "date_modified"

    invoke-virtual {v5, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string p0, "mime_type"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string p0, "_data"

    invoke-virtual {v5, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "width"

    invoke-virtual {v5, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "height"

    invoke-virtual {v5, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "resolution"

    invoke-virtual {v5, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string p0, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 p0, -0x2

    cmp-long p0, p2, p0

    if-eqz p0, :cond_10a

    const-wide/16 p0, -0x1

    cmp-long p0, p2, p0

    if-eqz p0, :cond_10a

    .line 150
    const-string p0, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    :cond_10a
    const-string p0, "_size"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_12f

    .line 154
    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-virtual {v5, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 155
    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v5, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_12f
    return-object v5
.end method

.method public getVideoNameFormat()Ljava/lang/String;
    .registers 1

    .line 116
    const-string p0, "\'VID\'_yyyyMMdd_HHmmss"

    return-object p0
.end method

.method public pauseAudioPlayBack(Landroid/content/Context;)Z
    .registers 4

    .line 100
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pauseAudioPlayback]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_16

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public releaseAudioFocus(Landroid/content/Context;)V
    .registers 3

    .line 109
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_f

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_f
    return-void
.end method

.method public setAodCamera(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAodCamera:Z

    return-void
.end method
