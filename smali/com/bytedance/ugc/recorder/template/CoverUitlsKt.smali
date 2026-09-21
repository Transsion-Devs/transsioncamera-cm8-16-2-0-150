.class public final Lcom/bytedance/ugc/recorder/template/CoverUitlsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getVideoFrame(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long/2addr p1, v0

    .line 11
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 12
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 13
    invoke-virtual {v0, p1, p2, p0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 26
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 p1, 0x0

    .line 29
    :try_start_1c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_3d
    .catchall {:try_start_1c .. :try_end_21} :catchall_3b

    .line 30
    :try_start_21
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 31
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_38
    .catchall {:try_start_21 .. :try_end_2b} :catchall_35

    const/4 p0, 0x1

    .line 39
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    return p0

    :catch_30
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    :catchall_35
    move-exception p0

    move-object p1, v1

    goto :goto_4d

    :catch_38
    move-exception p0

    move-object p1, v1

    goto :goto_3e

    :catchall_3b
    move-exception p0

    goto :goto_4d

    :catch_3d
    move-exception p0

    .line 34
    :goto_3e
    :try_start_3e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    if-eqz p1, :cond_4b

    .line 39
    :try_start_43
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4b
    :goto_4b
    const/4 p0, 0x0

    return p0

    :goto_4d
    if-eqz p1, :cond_57

    .line 39
    :try_start_4f
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_57
    :goto_57
    throw p0
.end method

.method public static final saveVideoFirstFrame(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    .line 17
    invoke-static {p0, v0, v1}, Lcom/bytedance/ugc/recorder/template/CoverUitlsKt;->getVideoFrame(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_14
    invoke-static {p0, p1}, Lcom/bytedance/ugc/recorder/template/CoverUitlsKt;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
