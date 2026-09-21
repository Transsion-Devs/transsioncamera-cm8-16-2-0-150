.class public final Lcom/bytedance/ugc/recorder/template/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ugc/recorder/template/FileUtils;

.field private static final SCHEMA_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ugc/recorder/template/FileUtils;

    invoke-direct {v0}, Lcom/bytedance/ugc/recorder/template/FileUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ugc/recorder/template/FileUtils;->INSTANCE:Lcom/bytedance/ugc/recorder/template/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "assetName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dstFilePath"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1b

    goto :goto_33

    :cond_1b
    const/4 p3, 0x0

    .line 27
    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_3d

    .line 28
    :try_start_24
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_3b

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 29
    :try_start_2b
    invoke-static {p1, p2, p0, v0, p3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 31
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-nez p1, :cond_34

    :goto_33
    return-void

    .line 32
    :cond_34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_38
    move-exception p0

    move-object p3, p2

    goto :goto_3f

    :catchall_3b
    move-exception p0

    goto :goto_3f

    :catchall_3d
    move-exception p0

    move-object p1, p3

    :goto_3f
    if-nez p3, :cond_42

    goto :goto_45

    .line 31
    :cond_42
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :goto_45
    if-nez p1, :cond_48

    goto :goto_4b

    .line 32
    :cond_48
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_4b
    throw p0
.end method

.method public final copyDirToDir(Ljava/io/File;Ljava/io/File;)Z
    .registers 10

    const-string v0, "srcFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 240
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 244
    :cond_18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v2, "srcFile.listFiles()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_31

    goto :goto_76

    .line 247
    :cond_31
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    move v2, v1

    :goto_3a
    if-ge v2, v0, :cond_74

    aget-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 248
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    const-string v6, "f"

    if-eqz v5, :cond_60

    .line 250
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    goto :goto_3a

    .line 253
    :cond_60
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_6d

    return v1

    .line 256
    :cond_6d
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/ugc/recorder/template/FileUtils;->copyDirToDir(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_3a

    :cond_74
    const/4 p0, 0x1

    return p0

    :cond_76
    :goto_76
    return v1
.end method

.method public final decodeOptions(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    const-string p0, "options"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_9

    return-object p0

    :cond_9
    if-nez p2, :cond_c

    goto :goto_12

    .line 136
    :cond_c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-object p0

    .line 139
    :cond_13
    sget-object p0, Lcom/bytedance/ugc/recorder/template/FileUtils;->INSTANCE:Lcom/bytedance/ugc/recorder/template/FileUtils;

    invoke-virtual {p0, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 140
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 141
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "parse(filepath)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/ugc/recorder/template/FileUtils$decodeOptions$1;

    invoke-direct {v1, v0, p3}, Lcom/bytedance/ugc/recorder/template/FileUtils$decodeOptions$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/bytedance/ugc/recorder/template/FileUtils;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    .line 146
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 148
    :cond_36
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getExifInterface(Landroid/content/Context;Ljava/lang/String;)Landroid/media/ExifInterface;
    .registers 5

    const-string p0, "filepath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_9
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 104
    :try_start_e
    sget-object v0, Lcom/bytedance/ugc/recorder/template/FileUtils;->INSTANCE:Lcom/bytedance/ugc/recorder/template/FileUtils;

    invoke-virtual {v0, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 105
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "parse(filepath)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/ugc/recorder/template/FileUtils$getExifInterface$1;

    invoke-direct {v1, p0}, Lcom/bytedance/ugc/recorder/template/FileUtils$getExifInterface$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/ugc/recorder/template/FileUtils;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2f

    .line 111
    :cond_28
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_2f

    .line 115
    :catch_2f
    :goto_2f
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/media/ExifInterface;

    return-object p0
.end method

.method public final getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string p0, "uri"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_d

    goto :goto_3d

    :cond_d
    const/4 p0, 0x0

    .line 80
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 81
    const-string v0, "r"

    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_33
    .catchall {:try_start_e .. :try_end_18} :catchall_2e

    if-nez p1, :cond_1c

    move-object p2, p0

    goto :goto_20

    .line 82
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    :goto_20
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_2c
    .catchall {:try_start_1c .. :try_end_23} :catchall_2a

    if-nez p1, :cond_26

    goto :goto_3d

    .line 91
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3d

    goto :goto_3d

    :catchall_2a
    move-exception p0

    goto :goto_3e

    :catch_2c
    move-exception p2

    goto :goto_35

    :catchall_2e
    move-exception p1

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    goto :goto_3e

    :catch_33
    move-exception p2

    move-object p1, p0

    .line 84
    :goto_35
    :try_start_35
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_2a

    if-nez p1, :cond_26

    :catch_3d
    :goto_3d
    return-void

    :goto_3e
    if-nez p1, :cond_41

    goto :goto_44

    .line 91
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44

    .line 92
    :catch_44
    :goto_44
    throw p0
.end method

.method public final getFileHeader(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 265
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 267
    :try_start_f
    invoke-virtual {p0, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 268
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_5c

    if-nez p0, :cond_28

    return-object v1

    .line 272
    :cond_28
    :try_start_28
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 273
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 274
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_34

    .line 271
    :try_start_30
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_5c

    return-object v0

    :catchall_34
    move-exception p1

    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p2

    :try_start_37
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 276
    :cond_3b
    sget-object p0, Lcom/bytedance/ugc/recorder/template/FileUtils;->INSTANCE:Lcom/bytedance/ugc/recorder/template/FileUtils;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_44

    return-object v1

    .line 277
    :cond_44
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_49} :catch_5c

    .line 278
    :try_start_49
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 279
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 280
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_55

    .line 277
    :try_start_51
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_5c

    return-object v0

    :catchall_55
    move-exception p1

    :try_start_56
    throw p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p2

    :try_start_58
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_5c

    :catch_5c
    return-object v1
.end method

.method public final getMediaMetadataRetriever(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .registers 4

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 121
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 122
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :catch_18
    move-exception p0

    goto :goto_1e

    .line 124
    :cond_1a
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_18

    return-object v0

    .line 127
    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final isFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_42

    .line 38
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_42

    .line 42
    :cond_a
    invoke-virtual {p0, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 43
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "parse(filePath)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->uriExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 45
    :cond_1e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    .line 48
    :cond_25
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-lez p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    :goto_42
    return v0
.end method

.method public final isGif(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/FileUtils;->getFileHeader(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    return p1

    .line 305
    :cond_12
    aget-byte p2, p0, p1

    const/16 v0, 0x47

    if-ne p2, v0, :cond_27

    const/4 p2, 0x1

    aget-byte v0, p0, p2

    const/16 v1, 0x49

    if-ne v0, v1, :cond_27

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    const/16 v0, 0x46

    if-ne p0, v0, :cond_27

    return p2

    :cond_27
    return p1
.end method

.method public final isUri(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_a

    .line 289
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return p0

    .line 294
    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 295
    const-string v0, "content"

    if-nez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    :goto_19
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_20

    if-eqz p1, :cond_20

    const/4 p0, 0x1

    :catch_20
    :cond_20
    return p0
.end method

.method public final mkdirs(Ljava/lang/String;Z)Z
    .registers 4

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    if-eqz p2, :cond_20

    .line 210
    invoke-virtual {p0, v0}, Lcom/bytedance/ugc/recorder/template/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x0

    return p0

    .line 215
    :cond_22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0
.end method

.method public final readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "filePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 170
    :try_start_6
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1b
    .catchall {:try_start_6 .. :try_end_b} :catchall_17

    .line 171
    :try_start_b
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_15
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 175
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_1f

    :catch_15
    move-exception p0

    goto :goto_1e

    :catchall_17
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_1f

    :catch_1b
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 173
    :goto_1e
    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_13

    :goto_1f
    if-nez v0, :cond_22

    goto :goto_25

    .line 175
    :cond_22
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :goto_25
    throw p0
.end method

.method public final removeDirectory(Ljava/io/File;)V
    .registers 7

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_36

    .line 188
    :cond_18
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 190
    const-string v4, "child"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/bytedance/ugc/recorder/template/FileUtils;->removeDirectory(Ljava/io/File;)V

    goto :goto_1a

    .line 192
    :cond_2f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1a

    .line 195
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final safeDeleteFile(Ljava/io/File;)Z
    .registers 6

    const/4 p0, 0x1

    if-eqz p1, :cond_47

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_rename_to_tmp_when_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_3f

    :cond_3b
    const/4 v0, 0x0

    move v3, v0

    move v0, p0

    move p0, v3

    :goto_3f
    if-nez p0, :cond_46

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_46
    return v0

    :cond_47
    return p0
.end method

.method public final uriExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5

    const-string p0, "uri"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_9

    return p0

    :cond_9
    const/4 v0, 0x0

    .line 58
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 59
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 60
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_2a
    .catchall {:try_start_a .. :try_end_20} :catchall_28

    const/4 p2, -0x1

    if-eq p1, p2, :cond_24

    const/4 p0, 0x1

    .line 66
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    return p0

    :catchall_28
    move-exception p0

    goto :goto_39

    :catch_2a
    move-exception p1

    goto :goto_33

    :cond_2c
    if-nez v0, :cond_2f

    goto :goto_38

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_38

    goto :goto_38

    .line 63
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_28

    if-nez v0, :cond_2f

    :catch_38
    :goto_38
    return p0

    :goto_39
    if-nez v0, :cond_3c

    goto :goto_3f

    .line 66
    :cond_3c
    :try_start_3c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    .line 67
    :catch_3f
    :goto_3f
    throw p0
.end method

.method public final writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "content"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "filePath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 156
    :try_start_b
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_22
    .catchall {:try_start_b .. :try_end_10} :catchall_1e

    .line 157
    :try_start_10
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_1c
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 162
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_26

    :catch_1c
    move-exception p0

    goto :goto_25

    :catchall_1e
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_26

    :catch_22
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 160
    :goto_25
    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1a

    :goto_26
    if-nez v0, :cond_29

    goto :goto_2c

    .line 162
    :cond_29
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :goto_2c
    throw p0
.end method
