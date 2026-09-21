.class public abstract Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LivePhotoMuxer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private static mergeXmpAndVideoData([B[BLjava/io/File;I)[B
    .registers 8

    .line 110
    const-string v0, "mergeXmpAndVideoData failed: "

    array-length v1, p0

    array-length p1, p1

    const/4 v2, 0x0

    if-gt v1, p1, :cond_f

    .line 111
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mergeXmpAndVideoData: XMP data is not larger than original JPEG, returning original JPEG"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 115
    :cond_f
    array-length p1, p0

    add-int/2addr p1, p3

    new-array p1, p1, [B

    .line 116
    array-length v1, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :try_start_18
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_27} :catch_6a
    .catchall {:try_start_18 .. :try_end_27} :catchall_68

    .line 120
    :try_start_27
    array-length p0, p0

    invoke-virtual {v1, p1, p0, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p0

    .line 121
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeXmpAndVideoData, readNumber: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_42} :catch_66
    .catchall {:try_start_27 .. :try_end_42} :catchall_63

    .line 128
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_5b

    :catch_46
    move-exception p0

    .line 131
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    :goto_5b
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mergeXmpAndVideoData: successfully merged XMP and video data"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    :catchall_63
    move-exception p0

    move-object v2, v1

    goto :goto_9c

    :catch_66
    move-exception p0

    goto :goto_6c

    :catchall_68
    move-exception p0

    goto :goto_9c

    :catch_6a
    move-exception p0

    move-object v1, v2

    .line 123
    :goto_6c
    :try_start_6c
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_63

    if-eqz v1, :cond_9b

    .line 128
    :try_start_82
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_9b

    :catch_86
    move-exception p0

    .line 131
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_9b
    :goto_9b
    return-object v2

    :goto_9c
    if-eqz v2, :cond_b7

    .line 128
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_b7

    :catch_a2
    move-exception p1

    .line 131
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    :cond_b7
    :goto_b7
    throw p0
.end method

.method public static muxLivePhoto([BLjava/lang/String;JLjava/lang/String;)[B
    .registers 13

    const/4 v0, 0x0

    if-eqz p0, :cond_67

    .line 20
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_67

    :cond_7
    if-nez p1, :cond_11

    .line 26
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "muxLivePhoto: videoPath is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    .line 32
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "muxLivePhoto: not find live video file "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 36
    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    if-nez p1, :cond_42

    .line 38
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "muxLivePhoto: the live video file Length is 0"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 43
    :cond_42
    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->parseXMPMeta([B)Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;

    move-result-object v2

    int-to-long v3, p1

    move-object v1, p0

    move-wide v5, p2

    move-object v7, p4

    .line 45
    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->writeXMPMetadata([BLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;JJLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_58

    .line 48
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "muxLivePhoto: failed write XMP metadata"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 53
    :cond_58
    invoke-static {p0, v1, v0, p1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->mergeXmpAndVideoData([B[BLjava/io/File;I)[B

    move-result-object p0

    if-nez p0, :cond_66

    .line 56
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "muxLivePhoto, mergeXmpAndVideoData failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_66
    return-object p0

    .line 21
    :cond_67
    :goto_67
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "muxLivePhoto: jpegData is empty, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static writeXMPMetadata([BLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;JJLjava/lang/String;)[B
    .registers 11

    .line 84
    const-string/jumbo v1, "writeXMPMetadata failed: "

    move-object v0, p0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-wide v2, p2

    move-wide p3, p4

    move-object p5, p1

    .line 85
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    long-to-int p2, v2

    const/4 v2, 0x0

    .line 87
    :try_start_13
    invoke-static/range {p0 .. p6}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;IJLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 89
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p3, "writeXMPMetadata: failed to write XMP metadata"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_42
    .catchall {:try_start_13 .. :try_end_21} :catchall_3f

    .line 98
    :try_start_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 99
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_28

    return-object v2

    :catch_28
    move-exception v0

    move-object p0, v0

    .line 101
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    :catchall_3f
    move-exception v0

    move-object p2, v0

    goto :goto_9c

    :catch_42
    move-exception v0

    move-object p2, v0

    goto :goto_6a

    .line 92
    :cond_45
    :try_start_45
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_42
    .catchall {:try_start_45 .. :try_end_48} :catchall_3f

    .line 98
    :try_start_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 99
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4e} :catch_4f

    goto :goto_65

    :catch_4f
    move-exception v0

    move-object p0, v0

    .line 101
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    :goto_65
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 94
    :goto_6a
    :try_start_6a
    sget-object p3, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_6a .. :try_end_7e} :catchall_3f

    .line 98
    :try_start_7e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 99
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_84} :catch_85

    goto :goto_9b

    :catch_85
    move-exception v0

    move-object p0, v0

    .line 101
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_9b
    return-object v2

    .line 98
    :goto_9c
    :try_start_9c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 99
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a2} :catch_a3

    goto :goto_b9

    :catch_a3
    move-exception v0

    move-object p0, v0

    .line 101
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    :goto_b9
    throw p2
.end method
