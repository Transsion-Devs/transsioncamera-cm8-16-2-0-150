.class public Lcom/cdv/io/NvAndroidMediaFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaInfoFromFile(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/AssetManager;)Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;
    .registers 12

    .line 61
    const-string v0, "frame-rate"

    const-string v1, "rotation-degrees"

    const/4 v2, 0x0

    .line 64
    :try_start_5
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_ed
    .catchall {:try_start_5 .. :try_end_a} :catchall_ea

    if-nez p2, :cond_40

    .line 67
    :try_start_c
    const-string p2, "content://"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_38
    .catchall {:try_start_c .. :try_end_12} :catchall_33

    if-eqz p2, :cond_3c

    if-nez p1, :cond_1a

    .line 127
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    return-object v2

    .line 71
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 72
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p2, "r"

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 75
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_56

    :catchall_33
    move-exception v0

    move-object p0, v0

    move-object v2, v3

    goto/16 :goto_f9

    :catch_38
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f0

    .line 77
    :cond_3c
    invoke-virtual {v3, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_56

    .line 81
    :cond_40
    invoke-virtual {p2, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 84
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 89
    :goto_56
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5a} :catch_38
    .catchall {:try_start_1a .. :try_end_5a} :catchall_33

    const/4 p1, -0x1

    const/4 p2, 0x0

    move v4, p2

    move p2, p1

    .line 90
    :goto_5e
    const-string v5, "mime"

    if-ge v4, p0, :cond_84

    .line 91
    :try_start_62
    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 92
    invoke-virtual {v6, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-gez p1, :cond_76

    .line 93
    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    move p1, v4

    goto :goto_81

    :cond_76
    if-gez p2, :cond_81

    .line 95
    const-string v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    move p2, v4

    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 99
    :cond_84
    new-instance p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;

    invoke-direct {p0}, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;-><init>()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_89} :catch_38
    .catchall {:try_start_62 .. :try_end_89} :catchall_33

    .line 100
    const-string v4, "durationUs"

    const/4 v6, 0x1

    if-ltz p1, :cond_c8

    .line 101
    :try_start_8e
    invoke-virtual {v3, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->mime:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->videoStreamDurationUs:J

    .line 104
    const-string v5, "width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->width:I

    .line 105
    const-string v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->height:I

    .line 106
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 107
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->rotation:I

    .line 108
    :cond_ba
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 109
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->frameRate:I

    .line 110
    :cond_c6
    iput-boolean v6, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->hasVideoStream:Z

    :cond_c8
    if-ltz p2, :cond_e6

    .line 114
    invoke-virtual {v3, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->audioStreamDurationUs:J

    .line 116
    const-string p2, "channel-count"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->channelCount:I

    .line 117
    const-string p2, "sample-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->sampleRate:I

    .line 118
    iput-boolean v6, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->hasAudioStream:Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_e6} :catch_38
    .catchall {:try_start_8e .. :try_end_e6} :catchall_33

    .line 127
    :cond_e6
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    return-object p0

    :catchall_ea
    move-exception v0

    move-object p0, v0

    goto :goto_f9

    :catch_ed
    move-exception v0

    move-object p0, v0

    move-object v3, v2

    .line 123
    :goto_f0
    :try_start_f0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_33

    if-eqz v3, :cond_f8

    .line 127
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    :cond_f8
    return-object v2

    :goto_f9
    if-eqz v2, :cond_fe

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 128
    :cond_fe
    throw p0
.end method
