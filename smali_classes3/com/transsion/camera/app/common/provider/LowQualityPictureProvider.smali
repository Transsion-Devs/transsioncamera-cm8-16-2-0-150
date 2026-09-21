.class public Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$JpegWriter;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public static synthetic $r8$lambda$QyTv6bEWGCVx1ReUfHgc09g_uZA(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->lambda$queryLowQualityLiveMetadata$2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Sn_wIH7RosqzXo0cmHUnUaS0zdY(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;J)Landroid/content/ContentValues;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->lambda$queryLowQualityMetadata$1(J)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VMCSwVKn5zdx598slOvHcKZHsqI(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;J)Landroid/content/ContentValues;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->lambda$queryLowQualityLiveMetadata$3(J)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n4eX7CseyDI-qiSrQG-kD4S10Sw(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->lambda$queryLowQualityMetadata$0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LowQualityPictureProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getColumnValues(Landroid/content/ContentValues;)[Ljava/lang/Object;
    .registers 16

    .line 196
    const-string p0, "_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    .line 197
    const-string p0, "_display_name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string p0, "datetaken"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 199
    const-string p0, "bucket_id"

    .line 201
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string p0, "mime_type"

    .line 203
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string p0, "date_added"

    .line 205
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string p0, "date_modified"

    .line 206
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string p0, "_data"

    .line 207
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string p0, "_size"

    .line 208
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string p0, "is_favorite"

    .line 209
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo p0, "width"

    .line 210
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string p0, "height"

    .line 211
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string p0, "orientation"

    .line 212
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const/4 p0, 0x1

    .line 213
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    .line 215
    sget-object p1, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColumnValues: id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", displayName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", datetaken: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private synthetic lambda$queryLowQualityLiveMetadata$2()Ljava/util/List;
    .registers 1

    .line 151
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityLiveMediaForProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queryLowQualityLiveMetadata$3(J)Landroid/content/ContentValues;
    .registers 3

    .line 152
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityLiveMediaForProvider(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queryLowQualityMetadata$0()Ljava/util/List;
    .registers 1

    .line 144
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queryLowQualityMetadata$1(J)Landroid/content/ContentValues;
    .registers 3

    .line 145
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private queryLowQualityLiveMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .registers 5

    .line 150
    new-instance v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)V

    new-instance v1, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)V

    const-string v2, "queryLowQualityLiveMetadata"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityMetadata(Ljava/lang/Long;Ljava/util/function/Supplier;Ljava/util/function/LongFunction;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized queryLowQualityMediaThumb(Ljava/lang/Long;)Landroid/os/ParcelFileDescriptor;
    .registers 13

    monitor-enter p0

    if-eqz p1, :cond_bd

    .line 221
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getPostViewJpeg(J)[B

    move-result-object v9

    if-eqz v9, :cond_4a

    .line 223
    array-length v2, v9

    if-lez v2, :cond_4a

    .line 224
    new-instance v10, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$JpegWriter;

    const/4 p1, 0x0

    invoke-direct {v10, p1}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$JpegWriter;-><init>(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider-IA;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_47

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    :try_start_22
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 225
    sget-object p1, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryLowQualityMediaThumb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_43

    .line 226
    monitor-exit v5

    return-object p0

    :catchall_43
    move-exception v0

    :goto_44
    move-object p0, v0

    goto/16 :goto_d5

    :catchall_47
    move-exception v0

    move-object v5, p0

    goto :goto_44

    :cond_4a
    move-object v5, p0

    .line 228
    :try_start_4b
    invoke-virtual {v5}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProvider(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_be

    .line 230
    sget-object v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryLowQualityMediaThumb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 232
    const-string v1, "_data"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryLowQualityMediaThumb: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_a6

    .line 237
    const-string p1, "r"

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_a4
    .catchall {:try_start_4b .. :try_end_a4} :catchall_43

    monitor-exit v5

    return-object p0

    .line 235
    :cond_a6
    :try_start_a6
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    move-object v5, p0

    .line 241
    :cond_be
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_d5
    monitor-exit v5
    :try_end_d6
    .catchall {:try_start_a6 .. :try_end_d6} :catchall_43

    throw p0
.end method

.method private queryLowQualityMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .registers 5

    .line 143
    new-instance v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)V

    new-instance v1, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)V

    const-string v2, "queryLowQualityMetadata: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityMetadata(Ljava/lang/Long;Ljava/util/function/Supplier;Ljava/util/function/LongFunction;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private queryLowQualityMetadata(Ljava/lang/Long;Ljava/util/function/Supplier;Ljava/util/function/LongFunction;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 160
    new-instance v2, Landroid/database/MatrixCursor;

    const-string v15, "orientation"

    const-string v16, "media_type"

    const-string v3, "_id"

    const-string v4, "bucket_id"

    const-string v5, "_display_name"

    const-string v6, "mime_type"

    const-string v7, "datetaken"

    const-string v8, "date_added"

    const-string v9, "date_modified"

    const-string v10, "_data"

    const-string v11, "_size"

    const-string v12, "is_favorite"

    const-string/jumbo v13, "width"

    const-string v14, "height"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-nez v1, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_52

    .line 178
    invoke-interface/range {p2 .. p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-nez v5, :cond_4a

    goto :goto_3b

    .line 182
    :cond_4a
    invoke-direct {v0, v5}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->getColumnValues(Landroid/content/ContentValues;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3b

    .line 185
    :cond_52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v6, p3

    invoke-interface {v6, v4, v5}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_67

    .line 187
    invoke-direct {v0, v4}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->getColumnValues(Landroid/content/ContentValues;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 190
    :cond_67
    sget-object v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; queryAll = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 191
    invoke-virtual {v2, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    return-object v2
.end method

.method private queryVersion()Landroid/os/Bundle;
    .registers 3

    .line 75
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5

    .line 55
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 56
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 57
    new-instance p2, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 58
    const-string v0, "low"

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "low/#"

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "low/livePhoto"

    const/4 v1, 0x6

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string p2, "low/livePhoto/#"

    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 67
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryVersion()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 70
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 134
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 123
    const-string p0, "image/*"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 129
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 101
    sget-object v0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 105
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_34

    .line 106
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityMediaThumb(Ljava/lang/Long;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 108
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported mode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 8

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 116
    sget-object p1, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "openTypedAssetFile: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 83
    sget-object p2, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "query uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x4

    const/4 p4, 0x0

    if-eq p2, p3, :cond_5f

    const/4 p3, 0x5

    if-eq p2, p3, :cond_52

    const/4 p3, 0x6

    if-eq p2, p3, :cond_4d

    const/4 p3, 0x7

    if-ne p2, p3, :cond_36

    .line 92
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityLiveMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 94
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_4d
    invoke-direct {p0, p4}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityLiveMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 88
    :cond_52
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 86
    :cond_5f
    invoke-direct {p0, p4}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->queryLowQualityMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 139
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
