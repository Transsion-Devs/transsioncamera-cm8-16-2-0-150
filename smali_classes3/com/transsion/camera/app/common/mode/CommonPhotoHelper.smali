.class public Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AOD_SUFFIX:Ljava/lang/String; = "_aod"

.field private static final COVER_PICTURE_INDEX:I = 0x1

.field private static final CS_COVER_NAME_PATTERN:Ljava/lang/String; = "%s_BURST%04d_COVER"

.field private static final CS_IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmssSSS"

.field private static final CS_NAME_PATTERN:Ljava/lang/String; = "%s_BURST%04d"

.field private static final IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_SSS"

.field public static final IMAGE_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final INVALID:I = -0x1

.field public static final MIME_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mAodCamera:Z

.field private mChooseGooglePhoto:Z

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private needChangeSize:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 13

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 71
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;
    .registers 14

    .line 80
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getQualityInfo([B)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object v0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getShowTimestamp(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, p5, v3

    if-lez v3, :cond_25

    .line 85
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "\'IMG\'_yyyyMMdd_HHmmssSSS"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, p5, p6}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    goto :goto_37

    .line 87
    :cond_25
    new-instance p5, Ljava/text/SimpleDateFormat;

    const-string p6, "\'IMG\'_yyyyMMdd_HHmmss_SSS"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p5, p6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p6, Ljava/sql/Date;

    invoke-direct {p6, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p5, p6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    .line 89
    :goto_37
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[createContentValues] currentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p6, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    if-eqz p6, :cond_6a

    .line 92
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "_aod"

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 95
    :cond_6a
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result p6

    const/4 v3, 0x1

    if-eqz p6, :cond_79

    .line 96
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p6

    .line 97
    invoke-interface {p6, p5, v3}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p5

    :cond_79
    if-lez p7, :cond_9f

    if-ne v3, p7, :cond_8e

    .line 103
    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    filled-new-array {p5, p7}, [Ljava/lang/Object;

    move-result-object p7

    const-string v3, "%s_BURST%04d_COVER"

    invoke-static {p6, v3, p7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    goto :goto_a0

    .line 105
    :cond_8e
    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    filled-new-array {p5, p7}, [Ljava/lang/Object;

    move-result-object p7

    const-string v3, "%s_BURST%04d"

    invoke-static {p6, v3, p7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    goto :goto_a0

    :cond_9f
    move-object p6, p5

    .line 110
    :goto_a0
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".jpg"

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 112
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p7, 0x0

    if-eqz p2, :cond_d7

    .line 116
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, v3, p2}, Landroid/util/Size;-><init>(II)V

    move p2, p7

    goto :goto_df

    .line 118
    :cond_d7
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result p2

    .line 119
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif([B)Landroid/util/Size;

    move-result-object p1

    .line 122
    :goto_df
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 123
    const-string v4, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string/jumbo v1, "title"

    invoke-virtual {v3, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string p5, "_display_name"

    invoke-virtual {v3, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string p5, "mime_type"

    const-string p6, "image/jpeg"

    invoke-virtual {v3, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->needChangeSize:Z

    if-eqz p5, :cond_108

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p5

    goto :goto_10c

    :cond_108
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p5

    :goto_10c
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string/jumbo p6, "width"

    invoke-virtual {v3, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->needChangeSize:Z

    if-eqz p5, :cond_11f

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_123

    :cond_11f
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :goto_123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p5, "height"

    invoke-virtual {v3, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string p1, "orientation"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string p1, "_data"

    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_156

    .line 132
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 133
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_156
    if-eqz v0, :cond_165

    .line 135
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result p1

    if-eqz p1, :cond_165

    .line 136
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->addCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V

    .line 138
    :cond_165
    iput-boolean p7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->needChangeSize:Z

    return-object v3
.end method

.method public createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;Z)Landroid/content/ContentValues;
    .registers 14

    .line 75
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->needChangeSize:Z

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 76
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public createProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 165
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {v1, v2, p2}, Landroid/util/Size;-><init>(II)V

    move p2, v0

    goto :goto_1a

    .line 167
    :cond_12
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result p2

    .line 168
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif([B)Landroid/util/Size;

    move-result-object v1

    .line 171
    :goto_1a
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getQualityInfo([B)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object p1

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getShowTimestamp(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;J)J

    move-result-wide v2

    .line 174
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 175
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v5, "width"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "height"

    invoke-virtual {v4, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string p4, "orientation"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string p2, "is_pending"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v4, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "date_modified"

    invoke-virtual {v4, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_83

    .line 181
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p4, "latitude"

    invoke-virtual {v4, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 182
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "longitude"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_83
    if-eqz p1, :cond_92

    .line 184
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result p2

    if-eqz p2, :cond_92

    .line 185
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p2

    invoke-virtual {p2, v4, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->addCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V

    .line 187
    :cond_92
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "\'IMG\'_yyyyMMdd_HHmmss_SSS"

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p2, Ljava/sql/Date;

    invoke-direct {p2, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result p2

    if-eqz p2, :cond_b3

    .line 189
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p2

    const/4 p3, 0x1

    .line 190
    invoke-interface {p2, p1, p3}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 192
    :cond_b3
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    if-eqz p2, :cond_c8

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_aod"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    :cond_c8
    const-string p2, "_display_name"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[createProcessedContentValues] mChooseGooglePhoto:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mChooseGooglePhoto:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v4
.end method

.method public createProcessingContentValues(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/TimestampInfo;)Landroid/content/ContentValues;
    .registers 9

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_14

    .line 144
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/TimestampInfo;->getCaptureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_14

    .line 145
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/TimestampInfo;->getCaptureTime()J

    move-result-wide v0

    .line 147
    :cond_14
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 148
    const-string p2, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "is_pending"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "date_modified"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string p2, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Camera"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "relative_path"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "_display_name"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createProcessingContentValues] mChooseGooglePhoto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mChooseGooglePhoto:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", currentTime:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public setAodCamera(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    return-void
.end method

.method public setChooseGooglePhoto(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mChooseGooglePhoto:Z

    return-void
.end method
