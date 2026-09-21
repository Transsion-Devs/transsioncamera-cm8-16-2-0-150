.class public Lcom/cdv/utils/NvAndroidThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidThumbnail"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThumbnail(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_9e

    if-eqz p1, :cond_9e

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_9e

    .line 42
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_14

    return-object v0

    .line 46
    :cond_14
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 47
    new-instance v8, Lcom/cdv/utils/NvAndroidBitmap$Size;

    invoke-direct {v8, p3, p4}, Lcom/cdv/utils/NvAndroidBitmap$Size;-><init>(II)V

    .line 50
    const-string p3, "_id"

    if-nez v1, :cond_3c

    if-eqz p2, :cond_29

    .line 55
    sget-object p4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_27
    move-object v3, p4

    goto :goto_2c

    :cond_29
    sget-object p4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_27

    :goto_2c
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 54
    const-string v5, "_data=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    goto :goto_4b

    .line 62
    :cond_3c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 61
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    :goto_4b
    if-eqz p4, :cond_94

    .line 69
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_94

    .line 76
    :cond_54
    invoke-interface {p4, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_62

    .line 78
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-static {p0, p1, p2, v8}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 82
    :cond_62
    invoke-interface {p4, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 83
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    const/4 p3, 0x1

    if-eqz p2, :cond_71

    .line 130
    invoke-static {v2, v3, v4, p3, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_75

    .line 132
    :cond_71
    invoke-static {v2, v3, v4, p3, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_75
    if-eqz p3, :cond_7c

    .line 134
    invoke-static {p0, p3, p1, p2}, Lcom/cdv/utils/NvAndroidThumbnail;->transformSystemGeneratedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 136
    :cond_7c
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Fail to get thumbnail file for media \'%d\'!"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "NvAndroidThumbnail"

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0, p1, p2, v8}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_94
    :goto_94
    if-eqz p4, :cond_99

    .line 71
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_99
    invoke-static {p0, p1, p2, v8}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_9e
    :goto_9e
    return-object v0
.end method

.method private static createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p2, :cond_9

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 175
    invoke-static {p0, p1, p3, p2, v0}, Lcom/cdv/utils/NvAndroidBitmap;->createRotatedBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/cdv/utils/NvAndroidBitmap$Size;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x1

    .line 187
    invoke-static {p1, p0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 189
    const-string p2, "Failed to create video thumbnail bitmap for \'%s\'!"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NvAndroidThumbnail"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-object p0
.end method

.method private static transformSystemGeneratedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object p1
.end method
