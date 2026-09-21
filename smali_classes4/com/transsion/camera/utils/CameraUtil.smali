.class public abstract Lcom/transsion/camera/utils/CameraUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;,
        Lcom/transsion/camera/utils/CameraUtil$PlatformLevel;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static externalStoragePublicDirectoryPath:Ljava/lang/String;

.field private static lastClickTime:J

.field private static mCameraOrientation:I

.field private static mIsSuperNightLiteCountDownAnimEnabled:Z

.field private static mLastFlashState:I

.field private static mMicNumber:Ljava/lang/String;

.field private static sGooglePhotosVersion:Ljava/lang/Double;

.field private static sParsedVersionName:I

.field private static sPhysicalLastClickTime:[J

.field private static final sSizeDesComparator:Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

.field private static sVIPSelfie:Z

.field private static sVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 80
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x8

    .line 100
    sput v0, Lcom/transsion/camera/utils/CameraUtil;->sParsedVersionName:I

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [J

    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->sPhysicalLastClickTime:[J

    const-wide/16 v0, 0x0

    .line 104
    sput-wide v0, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    const/16 v0, 0x6e

    .line 105
    sput v0, Lcom/transsion/camera/utils/CameraUtil;->mLastFlashState:I

    const/4 v0, -0x1

    .line 106
    sput v0, Lcom/transsion/camera/utils/CameraUtil;->mCameraOrientation:I

    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/transsion/camera/utils/CameraUtil;->mIsSuperNightLiteCountDownAnimEnabled:Z

    const/4 v1, 0x0

    .line 125
    sput-object v1, Lcom/transsion/camera/utils/CameraUtil;->sGooglePhotosVersion:Ljava/lang/Double;

    .line 1289
    new-instance v2, Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

    invoke-direct {v2, v1}, Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;-><init>(Lcom/transsion/camera/utils/CameraUtil-IA;)V

    sput-object v2, Lcom/transsion/camera/utils/CameraUtil;->sSizeDesComparator:Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

    .line 1608
    sput-boolean v0, Lcom/transsion/camera/utils/CameraUtil;->sVIPSelfie:Z

    return-void
.end method

.method public static cacheAndParseAppVersionName(Landroid/content/Context;)V
    .registers 5

    .line 1411
    const-string v0, "8.0"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1412
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1413
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_13

    move-object v2, v0

    goto :goto_15

    .line 1414
    :cond_13
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_15
    sput-object v2, Lcom/transsion/camera/utils/CameraUtil;->sVersionName:Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_17} :catch_18

    goto :goto_1a

    .line 1416
    :catch_18
    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->sVersionName:Ljava/lang/String;

    .line 1419
    :goto_1a
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1420
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sVersionName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1421
    sget-object v2, Lcom/transsion/camera/utils/CameraUtil;->sVersionName:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/CameraUtil;->sParsedVersionName:I

    .line 1424
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.apps.photos"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getPackageMajorMinorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/utils/CameraUtil;->sGooglePhotosVersion:Ljava/lang/Double;

    return-void
.end method

.method public static canDecodeDrawableRes(I)Z
    .registers 2

    .line 2023
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->canDecodeDrawableRes(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static canDecodeDrawableRes(Landroid/content/Context;I)Z
    .registers 8

    .line 2027
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2028
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 2030
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2031
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_45

    const-string v3, ", mimeType = "

    if-lez p0, :cond_47

    :try_start_16
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p0, :cond_47

    .line 2032
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding successful: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :catch_45
    move-exception p0

    goto :goto_66

    .line 2035
    :cond_47
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoding failed: resId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_65} :catch_45

    return v2

    .line 2039
    :goto_66
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while decoding resource: resId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static clamp(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 414
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 416
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static compareQuality(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1275
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1276
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1277
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1278
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p0, p1, :cond_1d

    const/4 p0, -0x1

    if-eq v1, p0, :cond_1c

    if-ne v2, p0, :cond_1c

    return v3

    :cond_1c
    return v0

    :cond_1d
    if-le p0, p1, :cond_20

    return v3

    :cond_20
    return v0
.end method

.method public static convertV3SceneToEffect([I)[I
    .registers 3

    if-eqz p0, :cond_13

    .line 2207
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 2208
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 2209
    aget v0, p0, v1

    packed-switch v0, :pswitch_data_14

    :pswitch_10
    const/4 v0, 0x0

    .line 2227
    aput v0, p0, v1

    :cond_13
    :pswitch_13
    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public static convertV4SceneToEffect([I)[I
    .registers 3

    if-eqz p0, :cond_3b

    .line 2156
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3b

    .line 2157
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 2158
    aget v0, p0, v1

    packed-switch v0, :pswitch_data_3c

    const/4 v0, 0x0

    .line 2195
    aput v0, p0, v1

    return-object p0

    :pswitch_14
    const/16 v0, 0x18

    .line 2192
    aput v0, p0, v1

    return-object p0

    :pswitch_19
    const/16 v0, 0x17

    .line 2189
    aput v0, p0, v1

    return-object p0

    :pswitch_1e
    const/16 v0, 0x12

    .line 2186
    aput v0, p0, v1

    return-object p0

    :pswitch_23
    const/16 v0, 0x16

    .line 2183
    aput v0, p0, v1

    return-object p0

    :pswitch_28
    const/16 v0, 0x15

    .line 2180
    aput v0, p0, v1

    return-object p0

    :pswitch_2d
    const/16 v0, 0xd

    .line 2177
    aput v0, p0, v1

    return-object p0

    :pswitch_32
    const/16 v0, 0xc

    .line 2174
    aput v0, p0, v1

    return-object p0

    :pswitch_37
    const/16 v0, 0xa

    .line 2171
    aput v0, p0, v1

    :cond_3b
    :pswitch_3b
    return-object p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method public static convertV5SceneToEffect([I)[I
    .registers 4

    if-eqz p0, :cond_61

    .line 2075
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_61

    .line 2076
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 2077
    aget v0, p0, v1

    const/16 v2, 0x32

    if-eq v0, v2, :cond_61

    const/16 v2, 0x33

    if-eq v0, v2, :cond_61

    packed-switch v0, :pswitch_data_62

    const/4 v0, 0x0

    .line 2144
    aput v0, p0, v1

    return-object p0

    :pswitch_1c
    const/16 v0, 0x15

    .line 2140
    aput v0, p0, v1

    return-object p0

    :pswitch_21
    const/4 v0, 0x6

    .line 2137
    aput v0, p0, v1

    return-object p0

    :pswitch_25
    const/16 v0, 0x1e

    .line 2134
    aput v0, p0, v1

    return-object p0

    :pswitch_2a
    const/4 v0, 0x5

    .line 2131
    aput v0, p0, v1

    return-object p0

    :pswitch_2e
    const/16 v0, 0x12

    .line 2128
    aput v0, p0, v1

    return-object p0

    :pswitch_33
    const/16 v0, 0x16

    .line 2125
    aput v0, p0, v1

    return-object p0

    :pswitch_38
    const/16 v0, 0x8

    .line 2122
    aput v0, p0, v1

    return-object p0

    :pswitch_3d
    const/4 v0, 0x3

    .line 2119
    aput v0, p0, v1

    return-object p0

    :pswitch_41
    const/16 v0, 0x17

    .line 2116
    aput v0, p0, v1

    return-object p0

    :pswitch_46
    const/16 v0, 0x1b

    .line 2113
    aput v0, p0, v1

    return-object p0

    :pswitch_4b
    const/16 v0, 0x1a

    .line 2110
    aput v0, p0, v1

    return-object p0

    :pswitch_50
    const/16 v0, 0xc

    .line 2107
    aput v0, p0, v1

    return-object p0

    :pswitch_55
    const/4 v0, 0x2

    .line 2104
    aput v0, p0, v1

    return-object p0

    :pswitch_59
    const/16 v0, 0x1c

    .line 2101
    aput v0, p0, v1

    return-object p0

    :pswitch_5e
    const/4 v0, 0x4

    .line 2098
    aput v0, p0, v1

    :cond_61
    :pswitch_61
    return-object p0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_59
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_41
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_61
        :pswitch_2a
        :pswitch_25
        :pswitch_21
        :pswitch_61
        :pswitch_1c
        :pswitch_61
    .end packed-switch
.end method

.method private static findBestMatchPanelSize(Ljava/util/List;DIIDZ)Landroid/util/Size;
    .registers 16

    .line 177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 p3, 0x0

    move-wide v1, v0

    move-object v0, p3

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 178
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v4, p1

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p5

    if-gtz v4, :cond_c

    .line 182
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpg-double v6, v4, v1

    if-gtz v6, :cond_3c

    move-object p3, v3

    move-wide v1, v4

    .line 187
    :cond_3c
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-lt v4, p4, :cond_c

    move-object v0, v3

    goto :goto_c

    :cond_44
    if-eqz p7, :cond_47

    return-object v0

    :cond_47
    return-object p3
.end method

.method public static findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 197
    invoke-static/range {v0 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;
    .registers 26

    move/from16 v0, p7

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v1, v4

    mul-double v1, v1, p1

    double-to-int v3, v1

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v7, 0x0

    if-eqz p6, :cond_ad

    .line 215
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v9, v5

    move-object v5, v7

    move-object v6, v5

    :cond_2b
    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Size;

    .line 216
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    sub-double v12, v12, p1

    .line 218
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v12, v12, p4

    if-gtz v12, :cond_2b

    .line 220
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v14, v12, v9

    if-gtz v14, :cond_5c

    move-object v5, v11

    move-wide v9, v12

    .line 225
    :cond_5c
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-lt v12, v4, :cond_63

    move-object v6, v11

    :cond_63
    if-eqz p8, :cond_70

    .line 229
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v12

    rem-int/lit8 v12, v12, 0x40

    if-nez v12, :cond_70

    .line 230
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    if-lez v0, :cond_2b

    .line 233
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-gt v12, v0, :cond_2b

    .line 234
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_7c
    if-eqz p8, :cond_8d

    if-lez v0, :cond_8d

    .line 240
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 241
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_8b

    :cond_8a
    move-object v1, v2

    :goto_8b
    move-object v0, v1

    goto :goto_95

    :cond_8d
    if-eqz p8, :cond_90

    goto :goto_8b

    :cond_90
    if-lez v0, :cond_94

    move-object v0, v2

    goto :goto_95

    :cond_94
    move-object v0, v7

    :goto_95
    if-nez v0, :cond_a2

    if-eqz p9, :cond_9e

    move-wide/from16 v1, p1

    move-object v7, v6

    :goto_9c
    move-wide v5, v9

    goto :goto_af

    :cond_9e
    move-wide/from16 v1, p1

    move-object v7, v5

    goto :goto_9c

    :cond_a2
    move-wide/from16 v1, p1

    move-wide/from16 v5, p4

    move/from16 v7, p9

    .line 255
    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchPanelSize(Ljava/util/List;DIIDZ)Landroid/util/Size;

    move-result-object v7

    goto :goto_9c

    :cond_ad
    move-wide/from16 v1, p1

    :goto_af
    if-nez v7, :cond_111

    .line 260
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPreviewSize] no preview size match the aspect ratio : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", then use standard 4:3 for preview"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    const-string v0, "1.3333"

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 263
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d6
    :goto_d6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 264
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, v0

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v8, v8, p4

    if-lez v8, :cond_f7

    goto :goto_d6

    .line 268
    :cond_f7
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v5

    if-gez v8, :cond_d6

    .line 270
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    move-object v7, v3

    goto :goto_d6

    :cond_111
    return-object v7
.end method

.method private static findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;
    .registers 8

    const/4 v0, 0x0

    .line 1399
    aget-object v1, p0, v0

    .line 1400
    array-length v2, p0

    :goto_4
    if-ge v0, v2, :cond_30

    aget-object v3, p0, v0

    .line 1401
    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 1402
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_2d

    move-object v1, v3

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_30
    return-object v1
.end method

.method public static flipSystemOrientation(I)I
    .registers 5

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_12

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_10

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    goto :goto_13

    :cond_e
    const/4 v0, 0x3

    goto :goto_13

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    .line 1570
    :goto_13
    sget-object v1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flipSystemOrientation orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", sysOrientation: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static floatEquals(FFF)Z
    .registers 3

    sub-float/2addr p0, p1

    .line 2069
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static floatMultiplication(FI)I
    .registers 3

    .line 1589
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1590
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0
.end method

.method public static generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V
    .registers 8

    .line 1362
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateSupportedList supportedVideoSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1363
    :goto_1b
    array-length v1, p3

    if-ge v0, v1, :cond_60

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_60

    .line 1364
    aget v1, p3, v0

    invoke-static {v1}, Lcom/transsion/camera/utils/VideoQualityUtils;->isSupportCustomVideoQuality(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1365
    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1368
    :cond_37
    aget v1, p3, v0

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1369
    aget v1, p3, v0

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1370
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    .line 1371
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1372
    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1376
    :cond_60
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateSupportedList add "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 1

    .line 1458
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getArrayId(Ljava/lang/String;)I
    .registers 4

    .line 1026
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    const/4 p0, -0x1

    return p0
.end method

.method public static getBoolean(I)Z
    .registers 2

    .line 1003
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 986
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    .line 989
    :catch_13
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBooleanResource NotFoundException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getBooleanResource(Ljava/lang/String;)Z
    .registers 3

    .line 995
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getCameraMemory(Landroid/content/Context;)J
    .registers 5

    .line 1733
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1734
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    if-nez p0, :cond_19

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_19
    const/4 v0, 0x0

    .line 1739
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCameraOrientation()I
    .registers 1

    .line 1580
    sget v0, Lcom/transsion/camera/utils/CameraUtil;->mCameraOrientation:I

    return v0
.end method

.method public static getCameraRelativePath()Ljava/lang/String;
    .registers 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChoseGallery(Landroid/content/pm/PackageManager;Z)I
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 885
    :cond_4
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosEnabled(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x1

    return p0

    .line 887
    :cond_c
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosGoEnabled(Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    return v0
.end method

.method public static getColor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 1114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1115
    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    .line 1117
    :catch_17
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColor NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getDimen(I)I
    .registers 2

    .line 1109
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getDimen(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1097
    const-string v0, "dimen"

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    .line 1099
    :catch_f
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDimen NotFoundException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 1216
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1217
    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1219
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .registers 2

    .line 1167
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getExternalStoragePublicDirectory()Ljava/lang/String;
    .registers 1

    .line 633
    const-string v0, "getExternalStoragePublicDirectory"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->externalStoragePublicDirectoryPath:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 635
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateExternalStoragePublicDirectoryPath()V

    .line 637
    :cond_c
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 638
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->externalStoragePublicDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getIdByResName(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .line 1240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1241
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1242
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdByResName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", defType = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", identifier = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method public static getIdByResName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 1236
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getIdByResName(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getImageInfoFormUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1325
    :try_start_1
    const-string v1, "[MediaProvider]getImageInfoFormUri"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_e
    .catchall {:try_start_1 .. :try_end_a} :catchall_9e

    .line 1330
    :goto_a
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto :goto_17

    :catch_e
    move-exception p0

    .line 1328
    :try_start_f
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "query uri fail:"

    invoke-static {p1, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_9e

    goto :goto_a

    .line 1332
    :goto_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_99

    .line 1334
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 1336
    :cond_24
    const-string p1, "query success, _data: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mime_type: "

    .line 1337
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mime_type"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", date_added: "

    .line 1338
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "date_added"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", date_modified: "

    .line 1339
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "date_modified"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", datetaken: "

    .line 1340
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "datetaken"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", _size: "

    .line 1341
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_size"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_24

    .line 1344
    :cond_96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1346
    :cond_99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_9e
    move-exception p0

    .line 1330
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 1331
    throw p0
.end method

.method public static getIntArray(I)[I
    .registers 2

    .line 1032
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getInteger(I)I
    .registers 2

    .line 1091
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 1078
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "integer"

    .line 1079
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1078
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    .line 1081
    :catch_17
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInteger NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .registers 2

    .line 1087
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 1128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1129
    const-string v1, "layout"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1131
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .registers 2

    .line 1123
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutIdsFromArrayId(I)Ljava/util/List;
    .registers 7

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1141
    :try_start_6
    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 p0, 0x0

    move v2, p0

    .line 1142
    :goto_12
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 1143
    invoke-virtual {v1, v2, p0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2e

    if-ne v3, v4, :cond_22

    goto :goto_2e

    .line 1153
    :cond_22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :catchall_2a
    move-exception p0

    goto :goto_6a

    :catch_2c
    move-exception p0

    goto :goto_4e

    .line 1145
    :cond_2e
    :goto_2e
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 1147
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->getLayoutId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_47

    if-eq v3, v4, :cond_47

    .line 1149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_2c
    .catchall {:try_start_6 .. :try_end_47} :catchall_2a

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1160
    :cond_4a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 1157
    :goto_4e
    :try_start_4e
    sget-object v2, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLayouts error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_2a

    if-eqz v1, :cond_69

    .line 1160
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_69
    return-object v0

    :goto_6a
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1162
    :cond_6f
    throw p0
.end method

.method public static getMetadataNative(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Object;
    .registers 3

    .line 1757
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureResult;

    const-string v1, "mResults"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1758
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1759
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1763
    const-string v0, "android.hardware.camera2.impl.CameraMetadataNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1764
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1761
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "CameraMetadataNative is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_29

    :catch_29
    move-exception p0

    .line 1766
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1767
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get metadata pointer"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getMicNumber()Ljava/lang/String;
    .registers 1

    .line 1751
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->mMicNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMinSizeForSupport(Landroid/util/Size;Ljava/util/List;)Landroid/util/Size;
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_49

    if-eqz p1, :cond_49

    .line 279
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_c

    goto :goto_49

    .line 282
    :cond_c
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v3, v1

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_21
    if-ltz p0, :cond_49

    .line 284
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 285
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    sub-double v5, v3, v5

    .line 286
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_46

    return-object v1

    :cond_46
    add-int/lit8 p0, p0, -0x1

    goto :goto_21

    :cond_49
    :goto_49
    return-object v0
.end method

.method public static getModeId(Ljava/lang/String;)I
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto/16 :goto_307

    .line 1845
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x17

    const/16 v4, 0x16

    const/16 v5, 0x15

    const/16 v6, 0x14

    const/16 v7, 0x13

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    const/16 v24, -0x1

    sparse-switch v2, :sswitch_data_370

    goto/16 :goto_304

    :sswitch_3c
    const-string v2, "val_pmaster_portrait"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_304

    :cond_46
    const/16 v24, 0x33

    goto/16 :goto_304

    :sswitch_4a
    const-string v2, "val_video_open_anti_with_auto_fps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_304

    :cond_54
    const/16 v24, 0x32

    goto/16 :goto_304

    :sswitch_58
    const-string v2, "val_intent_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_304

    :cond_62
    const/16 v24, 0x31

    goto/16 :goto_304

    :sswitch_66
    const-string v2, "val_360_video_hdr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_304

    :cond_70
    const/16 v24, 0x30

    goto/16 :goto_304

    :sswitch_74
    const-string v2, "val_stb_blur"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_304

    :cond_7e
    const/16 v24, 0x2f

    goto/16 :goto_304

    :sswitch_82
    const-string v2, "val_celebrity_scene_stage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_304

    :cond_8c
    const/16 v24, 0x2e

    goto/16 :goto_304

    :sswitch_90
    const-string v2, "lightpainting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_304

    :cond_9a
    const/16 v24, 0x2d

    goto/16 :goto_304

    :sswitch_9e
    const-string v2, "val_super_definition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_304

    :cond_a8
    const/16 v24, 0x2c

    goto/16 :goto_304

    :sswitch_ac
    const-string v2, "val_super_anti_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto/16 :goto_304

    :cond_b6
    const/16 v24, 0x2b

    goto/16 :goto_304

    :sswitch_ba
    const-string v2, "val_ultrahd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto/16 :goto_304

    :cond_c4
    const/16 v24, 0x2a

    goto/16 :goto_304

    :sswitch_c8
    const-string v2, "val_video_close_anti_open_auto_fps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto/16 :goto_304

    :cond_d2
    const/16 v24, 0x29

    goto/16 :goto_304

    :sswitch_d6
    const-string v2, "val_underwater_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto/16 :goto_304

    :cond_e0
    const/16 v24, 0x28

    goto/16 :goto_304

    :sswitch_e4
    const-string v2, "val_flash_snap_lite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto/16 :goto_304

    :cond_ee
    const/16 v24, 0x27

    goto/16 :goto_304

    :sswitch_f2
    const-string v2, "val_motion_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fc

    goto/16 :goto_304

    :cond_fc
    const/16 v24, 0x26

    goto/16 :goto_304

    :sswitch_100
    const-string v2, "val_super_night"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    goto/16 :goto_304

    :cond_10a
    const/16 v24, 0x25

    goto/16 :goto_304

    :sswitch_10e
    const-string v2, "val_super_macro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    goto/16 :goto_304

    :cond_118
    const/16 v24, 0x24

    goto/16 :goto_304

    :sswitch_11c
    const-string v2, "val_video_super_night"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    goto/16 :goto_304

    :cond_126
    const/16 v24, 0x23

    goto/16 :goto_304

    :sswitch_12a
    const-string v2, "val_pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    goto/16 :goto_304

    :cond_134
    const/16 v24, 0x22

    goto/16 :goto_304

    :sswitch_138
    const-string v2, "val_pan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    goto/16 :goto_304

    :cond_142
    const/16 v24, 0x21

    goto/16 :goto_304

    :sswitch_146
    const-string v2, "val_fun"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    goto/16 :goto_304

    :cond_150
    const/16 v24, 0x20

    goto/16 :goto_304

    :sswitch_154
    const-string v2, "val_doc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    goto/16 :goto_304

    :cond_15e
    const/16 v24, 0x1f

    goto/16 :goto_304

    :sswitch_162
    const-string v2, "val_def"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16c

    goto/16 :goto_304

    :cond_16c
    const/16 v24, 0x1e

    goto/16 :goto_304

    :sswitch_170
    const-string v2, "val_video_super_night_4k"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    goto/16 :goto_304

    :cond_17a
    const/16 v24, 0x1d

    goto/16 :goto_304

    :sswitch_17e
    const-string v2, "star"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188

    goto/16 :goto_304

    :cond_188
    const/16 v24, 0x1c

    goto/16 :goto_304

    :sswitch_18c
    const-string v2, "val_beauty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    goto/16 :goto_304

    :cond_196
    const/16 v24, 0x1b

    goto/16 :goto_304

    :sswitch_19a
    const-string v2, "val_intent_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto/16 :goto_304

    :cond_1a4
    const/16 v24, 0x1a

    goto/16 :goto_304

    :sswitch_1a8
    const-string v2, "val_celebrity_scene_sunset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2

    goto/16 :goto_304

    :cond_1b2
    const/16 v24, 0x19

    goto/16 :goto_304

    :sswitch_1b6
    const-string v2, "val_time_lapse_video_anti_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0

    goto/16 :goto_304

    :cond_1c0
    const/16 v24, 0x18

    goto/16 :goto_304

    :sswitch_1c4
    const-string v2, "val_magic_sky"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce

    goto/16 :goto_304

    :cond_1ce
    move/from16 v24, v3

    goto/16 :goto_304

    :sswitch_1d2
    const-string v2, "val_ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    goto/16 :goto_304

    :cond_1dc
    move/from16 v24, v4

    goto/16 :goto_304

    :sswitch_1e0
    const-string v2, "val_video_makeup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ea

    goto/16 :goto_304

    :cond_1ea
    move/from16 v24, v5

    goto/16 :goto_304

    :sswitch_1ee
    const-string v2, "flowingwater"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f8

    goto/16 :goto_304

    :cond_1f8
    move/from16 v24, v6

    goto/16 :goto_304

    :sswitch_1fc
    const-string v2, "traffic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206

    goto/16 :goto_304

    :cond_206
    move/from16 v24, v7

    goto/16 :goto_304

    :sswitch_20a
    const-string v2, "val_video_filter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_214

    goto/16 :goto_304

    :cond_214
    const/16 v24, 0x12

    goto/16 :goto_304

    :sswitch_218
    const-string v2, "val_anti_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_222

    goto/16 :goto_304

    :cond_222
    const/16 v24, 0x11

    goto/16 :goto_304

    :sswitch_226
    const-string v2, "val_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_230

    goto/16 :goto_304

    :cond_230
    move/from16 v24, v8

    goto/16 :goto_304

    :sswitch_234
    const-string v2, "val_movie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23e

    goto/16 :goto_304

    :cond_23e
    move/from16 v24, v9

    goto/16 :goto_304

    :sswitch_242
    const-string v2, "val_lapse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24c

    goto/16 :goto_304

    :cond_24c
    move/from16 v24, v10

    goto/16 :goto_304

    :sswitch_250
    const-string v2, "val_vlog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25a

    goto/16 :goto_304

    :cond_25a
    move/from16 v24, v11

    goto/16 :goto_304

    :sswitch_25e
    const-string v2, "val_slow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_268

    goto/16 :goto_304

    :cond_268
    move/from16 v24, v12

    goto/16 :goto_304

    :sswitch_26c
    const-string v2, "val_sdof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_276

    goto/16 :goto_304

    :cond_276
    move/from16 v24, v13

    goto/16 :goto_304

    :sswitch_27a
    const-string v2, "val_aigc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_284

    goto/16 :goto_304

    :cond_284
    move/from16 v24, v14

    goto/16 :goto_304

    :sswitch_288
    const-string v2, "val_dv_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_292

    goto/16 :goto_304

    :cond_292
    move/from16 v24, v15

    goto/16 :goto_304

    :sswitch_296
    const-string v2, "val_street_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a0

    goto/16 :goto_304

    :cond_2a0
    move/from16 v24, v16

    goto/16 :goto_304

    :sswitch_2a4
    const-string v2, "val_celebrity_scene_food"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ae

    goto/16 :goto_304

    :cond_2ae
    move/from16 v24, v17

    goto :goto_304

    :sswitch_2b1
    const-string v2, "val_super_night_stable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ba

    goto :goto_304

    :cond_2ba
    move/from16 v24, v18

    goto :goto_304

    :sswitch_2bd
    const-string v2, "val_pmaster_beauty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c6

    goto :goto_304

    :cond_2c6
    move/from16 v24, v19

    goto :goto_304

    :sswitch_2c9
    const-string v2, "val_super_moon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    goto :goto_304

    :cond_2d2
    move/from16 v24, v20

    goto :goto_304

    :sswitch_2d5
    const-string v2, "val_underwater"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2de

    goto :goto_304

    :cond_2de
    move/from16 v24, v21

    goto :goto_304

    :sswitch_2e1
    const-string v2, "val_video_facebeauty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ea

    goto :goto_304

    :cond_2ea
    move/from16 v24, v22

    goto :goto_304

    :sswitch_2ed
    const-string v2, "val_dual_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f6

    goto :goto_304

    :cond_2f6
    move/from16 v24, v23

    goto :goto_304

    :sswitch_2f9
    const-string v2, "stellartrack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_302

    goto :goto_304

    :cond_302
    move/from16 v24, v1

    :goto_304
    packed-switch v24, :pswitch_data_442

    :goto_307
    return v1

    :pswitch_308
    const/16 v0, 0xbbc

    return v0

    :pswitch_30b
    const/16 v0, 0xbc1

    return v0

    :pswitch_30e
    const/16 v0, 0xfa1

    return v0

    :pswitch_311
    const/16 v0, 0xbb8

    return v0

    :pswitch_314
    const/16 v0, 0xbcc

    return v0

    :pswitch_317
    return v3

    :pswitch_318
    const/16 v0, 0xbc5

    return v0

    :pswitch_31b
    return v14

    :pswitch_31c
    const/16 v0, 0xbc0

    return v0

    :pswitch_31f
    const/16 v0, 0xbc9

    return v0

    :pswitch_322
    const/16 v0, 0x1b

    return v0

    :pswitch_325
    return v11

    :pswitch_326
    return v10

    :pswitch_327
    const/16 v0, 0xbba

    return v0

    :pswitch_32a
    return v16

    :pswitch_32b
    return v19

    :pswitch_32c
    return v23

    :pswitch_32d
    return v17

    :pswitch_32e
    return v1

    :pswitch_32f
    const/16 v0, 0xbbb

    return v0

    :pswitch_332
    return v7

    :pswitch_333
    return v22

    :pswitch_334
    const/16 v0, 0xfa0

    return v0

    :pswitch_337
    const/16 v0, 0xbcb

    return v0

    :pswitch_33a
    const/16 v0, 0xbc7

    return v0

    :pswitch_33d
    return v12

    :pswitch_33e
    return v20

    :pswitch_33f
    const/16 v0, 0xbbf

    return v0

    :pswitch_342
    return v5

    :pswitch_343
    return v4

    :pswitch_344
    const/16 v0, 0xbbe

    return v0

    :pswitch_347
    const/16 v0, 0xbb9

    return v0

    :pswitch_34a
    return v15

    :pswitch_34b
    return v21

    :pswitch_34c
    return v18

    :pswitch_34d
    const/16 v0, 0x19

    return v0

    :pswitch_350
    return v8

    :pswitch_351
    return v13

    :pswitch_352
    const/16 v0, 0x1a

    return v0

    :pswitch_355
    const/16 v0, 0x18

    return v0

    :pswitch_358
    const/16 v0, 0x1c

    return v0

    :pswitch_35b
    const/16 v0, 0xbca

    return v0

    :pswitch_35e
    const/16 v0, 0xbc4

    return v0

    :pswitch_361
    const/16 v0, 0xbbd

    return v0

    :pswitch_364
    const/16 v0, 0x1d

    return v0

    :pswitch_367
    const/16 v0, 0xfa2

    return v0

    :pswitch_36a
    const/16 v0, 0xbc6

    return v0

    :pswitch_36d
    return v9

    :pswitch_36e
    return v6

    nop

    :sswitch_data_370
    .sparse-switch
        -0x7e5d776a -> :sswitch_2f9
        -0x7e191d2a -> :sswitch_2ed
        -0x76bc3b45 -> :sswitch_2e1
        -0x6d48f6e3 -> :sswitch_2d5
        -0x6abb86dd -> :sswitch_2c9
        -0x659b9899 -> :sswitch_2bd
        -0x64342a9c -> :sswitch_2b1
        -0x603b4195 -> :sswitch_2a4
        -0x5dac5cac -> :sswitch_296
        -0x5633d214 -> :sswitch_288
        -0x5545129e -> :sswitch_27a
        -0x553cf5ba -> :sswitch_26c
        -0x553cd7a1 -> :sswitch_25e
        -0x553b7a94 -> :sswitch_250
        -0x52c5bd71 -> :sswitch_242
        -0x52b1336e -> :sswitch_234
        -0x52355e23 -> :sswitch_226
        -0x51d0d6c4 -> :sswitch_218
        -0x44f53be6 -> :sswitch_20a
        -0x3f9dde03 -> :sswitch_1fc
        -0x3a4e425d -> :sswitch_1ee
        -0x3974b655 -> :sswitch_1e0
        -0x311ab5f1 -> :sswitch_1d2
        -0x2eaafc0f -> :sswitch_1c4
        -0x2849e5f8 -> :sswitch_1b6
        -0x27edd29d -> :sswitch_1a8
        -0x2360567f -> :sswitch_19a
        -0x16d0d0a6 -> :sswitch_18c
        0x360652 -> :sswitch_17e
        0x24aa324 -> :sswitch_170
        0xdc401e7 -> :sswitch_162
        0xdc4031a -> :sswitch_154
        0xdc40b61 -> :sswitch_146
        0xdc42e7f -> :sswitch_138
        0xdc4308f -> :sswitch_12a
        0x10e08af2 -> :sswitch_11c
        0x134421ea -> :sswitch_10e
        0x1355ea36 -> :sswitch_100
        0x20db789b -> :sswitch_f2
        0x217c4156 -> :sswitch_e4
        0x2c6d76d9 -> :sswitch_d6
        0x30b8745a -> :sswitch_c8
        0x36c9268a -> :sswitch_ba
        0x3fbd4600 -> :sswitch_ac
        0x50c7d1f5 -> :sswitch_9e
        0x533119da -> :sswitch_90
        0x598c5291 -> :sswitch_82
        0x5a08b723 -> :sswitch_74
        0x659dd902 -> :sswitch_66
        0x67d94976 -> :sswitch_58
        0x68aea348 -> :sswitch_4a
        0x6f2a03c6 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_442
    .packed-switch 0x0
        :pswitch_36e
        :pswitch_36d
        :pswitch_36a
        :pswitch_367
        :pswitch_364
        :pswitch_361
        :pswitch_35e
        :pswitch_35b
        :pswitch_358
        :pswitch_355
        :pswitch_352
        :pswitch_351
        :pswitch_350
        :pswitch_34d
        :pswitch_34c
        :pswitch_34b
        :pswitch_34a
        :pswitch_347
        :pswitch_344
        :pswitch_343
        :pswitch_342
        :pswitch_33f
        :pswitch_33e
        :pswitch_33d
        :pswitch_33a
        :pswitch_337
        :pswitch_334
        :pswitch_333
        :pswitch_332
        :pswitch_32f
        :pswitch_32e
        :pswitch_32d
        :pswitch_32c
        :pswitch_32b
        :pswitch_32a
        :pswitch_327
        :pswitch_326
        :pswitch_325
        :pswitch_322
        :pswitch_31f
        :pswitch_34a
        :pswitch_31c
        :pswitch_31b
        :pswitch_318
        :pswitch_31b
        :pswitch_317
        :pswitch_314
        :pswitch_351
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
    .end packed-switch
.end method

.method public static getNV21Buffer(Landroid/media/Image;)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    .line 762
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isImageClosed(Landroid/media/Image;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2d

    .line 767
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v2, :cond_1e

    .line 768
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->parseSemiPlanar(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0

    :catch_1c
    move-exception p0

    goto :goto_23

    .line 770
    :cond_1e
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->parsePlanar(Landroid/media/Image;)[B

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_22} :catch_1c

    return-object p0

    .line 773
    :goto_23
    sget-object v1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "getNV21Buffer failed, drop frame."

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 774
    new-array p0, v0, [B

    return-object p0

    .line 763
    :cond_2d
    :goto_2d
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Image is null or closed."

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 764
    new-array p0, v0, [B

    return-object p0
.end method

.method public static getP3PhotoPreviewSwitch(Landroid/content/Context;)I
    .registers 2

    .line 1602
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1605
    :cond_8
    const-string p0, "debug.vendor.camera.photopreview.srgb2p3"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getP3VideoPreviewSwitch(Landroid/content/Context;)I
    .registers 2

    .line 1595
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1598
    :cond_8
    const-string p0, "debug.vendor.camera.videopreview.srgb2p3"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getPackageMajorMinorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)D
    .registers 6

    const/4 v0, 0x0

    .line 1430
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 1431
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1432
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 1433
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_58

    add-int/lit8 v2, v2, 0x1

    .line 1435
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v3, :cond_26

    .line 1436
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1437
    :cond_26
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2a} :catch_2b

    return-wide p0

    .line 1443
    :catch_2b
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse version for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_58

    .line 1441
    :catch_42
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_58
    :goto_58
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getParsedAppVersion()I
    .registers 1

    .line 1462
    sget v0, Lcom/transsion/camera/utils/CameraUtil;->sParsedVersionName:I

    return v0
.end method

.method public static getPhysicalLastClickTime()[J
    .registers 1

    .line 167
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sPhysicalLastClickTime:[J

    return-object v0
.end method

.method public static getRam()I
    .registers 4

    .line 1809
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_d

    const/16 v0, 0x64

    return v0

    :cond_d
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_16

    const/16 v0, 0x65

    return v0

    :cond_16
    const-wide/16 v2, 0xfa0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1f

    const/16 v0, 0x66

    return v0

    :cond_1f
    const-wide/16 v2, 0x1770

    cmp-long v2, v0, v2

    if-gtz v2, :cond_28

    const/16 v0, 0x67

    return v0

    :cond_28
    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-gtz v0, :cond_31

    const/16 v0, 0x68

    return v0

    :cond_31
    const/16 v0, 0x69

    return v0
.end method

.method public static getRotation(IIZ)I
    .registers 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    if-eqz p2, :cond_b

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    .line 362
    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_b
    add-int/2addr p1, p0

    .line 364
    rem-int/lit16 p1, p1, 0x168

    :cond_e
    return p1
.end method

.method public static getScreenPocketSystemOrientation()I
    .registers 5

    .line 1534
    const-string v0, "persist.sys.pocket_display.last_rotation"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1536
    sget-object v2, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenPocketSystemOrientation systemRotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_32

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    return v1

    :cond_29
    const/16 v0, 0x10e

    return v0

    :cond_2c
    const/16 v0, 0xb4

    return v0

    :cond_2f
    const/16 v0, 0x5a

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .registers 2

    .line 1060
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 1065
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 1067
    :catch_11
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1051
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    .line 1052
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1051
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    .line 1054
    :catch_17
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .registers 2

    .line 1007
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    .line 1017
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1016
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    .line 1019
    :catch_17
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringArray NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1011
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 999
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 1184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1185
    const-string v1, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    .line 1187
    :catch_f
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStyleId NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .registers 2

    .line 1179
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSuperNightLiteCountDownAnimaEnabled()Z
    .registers 1

    .line 2241
    sget-boolean v0, Lcom/transsion/camera/utils/CameraUtil;->mIsSuperNightLiteCountDownAnimEnabled:Z

    return v0
.end method

.method private static getSystemIntegerRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 2012
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2013
    const-string v0, "integer"

    const-string v1, "android"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13

    .line 2015
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 2017
    :cond_13
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Failed to get system resource ID. Incompatible framework version?"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getTopMargin(DIIII)I
    .registers 10

    .line 312
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 314
    invoke-static {p0, p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_68

    :cond_15
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 316
    invoke-static {p0, p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_68

    :cond_21
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 318
    invoke-static {p0, p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_30

    sub-int/2addr p2, p4

    sub-int/2addr p2, p3

    sub-int/2addr p2, p5

    .line 319
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    return p3

    :cond_30
    const-wide p4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 320
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_68

    :cond_3c
    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    .line 322
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_45

    return v1

    :cond_45
    const-wide p4, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    .line 324
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_51

    return v1

    :cond_51
    const-wide p4, 0x4000e38e38e38e39L    # 2.111111111111111

    .line 326
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_5d

    return v1

    :cond_5d
    const-wide p4, 0x3ff25d4c3b2a1908L    # 1.1477777777777778

    .line 328
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_69

    :goto_68
    return p3

    :cond_69
    return v1
.end method

.method public static getWatermarkDrawableId(Ljava/lang/String;)I
    .registers 2

    .line 1175
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getWatermarkDrawableId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1199
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1200
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1202
    :cond_d
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    if-nez v0, :cond_19

    goto :goto_42

    .line 1207
    :cond_19
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->canDecodeDrawableRes(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1208
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be decoded, using default: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1209
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_41
    return v0

    .line 1204
    :cond_42
    :goto_42
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found, use "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1205
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static gotoAppDetails(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_14

    const p1, 0x10008000

    .line 725
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 728
    :cond_14
    const-string p1, "package"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 729
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 730
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static gotoAppPermissionDetails(Landroid/app/Fragment;ZLjava/lang/String;)V
    .registers 5

    .line 695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_14

    const p1, 0x10008000

    .line 698
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 701
    :cond_14
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 702
    const-string p1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    const-string p1, "package"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 704
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 705
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    :cond_2c
    return-void
.end method

.method public static gotoAppPermissionDetails(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_14

    const v1, 0x10008000

    .line 713
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    :cond_14
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 717
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->gotoAppDetails(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static hasVisibleFragment(Landroid/content/Context;)Z
    .registers 2

    .line 1830
    check-cast p0, Landroid/app/Activity;

    .line 1831
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 1832
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 1833
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_e

    .line 1834
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static hookDisturbStatus(Landroid/content/Context;I)V
    .registers 20

    move/from16 v0, p1

    .line 1633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1634
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightV2Support:Z

    if-eqz v3, :cond_6d

    packed-switch v0, :pswitch_data_c4

    :pswitch_11
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    .line 1660
    invoke-static/range {v4 .. v10}, Lcom/transsion/camera/utils/CameraUtil;->setTranLedFlash(Landroid/content/Context;IIIIII)V

    goto/16 :goto_8d

    :pswitch_1e
    const/16 v16, 0x7d

    const/16 v17, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/16 v15, 0x7d

    move-object/from16 v11, p0

    .line 1657
    invoke-static/range {v11 .. v17}, Lcom/transsion/camera/utils/CameraUtil;->setTranLedFlash(Landroid/content/Context;IIIIII)V

    goto :goto_8d

    :pswitch_2e
    const/16 v16, 0xfa

    const/16 v17, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/16 v15, 0xfa

    move-object/from16 v11, p0

    .line 1654
    invoke-static/range {v11 .. v17}, Lcom/transsion/camera/utils/CameraUtil;->setTranLedFlash(Landroid/content/Context;IIIIII)V

    goto :goto_8d

    :pswitch_3e
    const/16 v16, 0x1f4

    const/16 v17, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/16 v15, 0x1f4

    move-object/from16 v11, p0

    .line 1650
    invoke-static/range {v11 .. v17}, Lcom/transsion/camera/utils/CameraUtil;->setTranLedFlash(Landroid/content/Context;IIIIII)V

    goto :goto_8d

    :pswitch_4e
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v11, p0

    .line 1643
    invoke-static/range {v11 .. v17}, Lcom/transsion/camera/utils/CameraUtil;->setTranLedFlash(Landroid/content/Context;IIIIII)V

    goto :goto_8d

    :pswitch_5d
    const/16 v16, 0x3e8

    const/16 v17, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/16 v15, 0x3e8

    move-object/from16 v11, p0

    .line 1638
    invoke-static/range {v11 .. v17}, Lcom/transsion/camera/utils/CameraUtil;->setTranLedFlash(Landroid/content/Context;IIIIII)V

    goto :goto_8d

    :cond_6d
    const/16 v3, 0x6d

    if-eq v0, v3, :cond_7f

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_76

    goto :goto_7f

    .line 1670
    :cond_76
    new-instance v3, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {v3}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    .line 1671
    invoke-virtual {v3, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->hookDisturbStatus(I)V

    goto :goto_8d

    .line 1664
    :cond_7f
    :goto_7f
    sget v3, Lcom/transsion/camera/utils/CameraUtil;->mLastFlashState:I

    if-eq v0, v3, :cond_8d

    .line 1665
    sput v0, Lcom/transsion/camera/utils/CameraUtil;->mLastFlashState:I

    .line 1666
    new-instance v3, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {v3}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    .line 1667
    invoke-virtual {v3, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->hookDisturbStatus(I)V

    .line 1674
    :cond_8d
    :goto_8d
    :pswitch_8d
    sget-object v3, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[hookDisturbStatus] status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightV2Support:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", spends "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_c4
    .packed-switch 0x65
        :pswitch_5d
        :pswitch_4e
        :pswitch_5d
        :pswitch_4e
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_4e
        :pswitch_8d
        :pswitch_8d
        :pswitch_3e
        :pswitch_2e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method

.method public static isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z
    .registers 3

    .line 1584
    const-string v0, "support_shared_animation_to_gallery"

    .line 1585
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1584
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFastDoubleClick(J)Z
    .registers 8

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    sget-wide v2, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_14

    cmp-long p0, v2, p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 146
    :cond_14
    sput-wide v0, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method public static isFastDoubleClick(J[J)Z
    .registers 10

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 152
    aget-wide v3, p2, v2

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v3

    if-gez v5, :cond_15

    cmp-long p0, v3, p0

    if-gez p0, :cond_15

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_15
    aput-wide v0, p2, v2

    return v2
.end method

.method public static isGestureNavigationEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 2008
    const-string v0, "config_navBarInteractionMode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getSystemIntegerRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isGooglePhotosDefault(Z[Ljava/lang/String;)Z
    .registers 8

    .line 898
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v0

    .line 899
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_42

    aget-object v3, p1, v2

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 901
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_42
    return p0
.end method

.method private static isGooglePhotosEnabled(Landroid/content/pm/PackageManager;)Z
    .registers 5

    .line 921
    const-string v0, "com.google.android.apps.photos"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_a

    return v1

    .line 925
    :cond_a
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_e} :catch_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    return v1

    :cond_15
    :goto_15
    return v0

    :catch_16
    move-exception p0

    .line 932
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGooglePhotosEnabled IllegalArgumentException occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_39

    .line 929
    :catch_32
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isGooglePhotosEnabled NameNotFoundException: com.google.android.apps.photos"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_39
    return v1
.end method

.method private static isGooglePhotosGoEnabled(Landroid/content/pm/PackageManager;)Z
    .registers 4

    .line 939
    const-string v0, "com.google.android.apps.photosgo"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_a

    return v1

    .line 943
    :cond_a
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    return v1

    :cond_15
    :goto_15
    return v0

    .line 947
    :catch_16
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isGooglePhotosGoEnabled NameNotFoundException: com.google.android.apps.photosgo"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public static isGooglePhotosSupportSharedAnimation(Landroid/content/Context;)Z
    .registers 5

    .line 1449
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sGooglePhotosVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/camera/utils/CameraUtil;->sGooglePhotosVersion:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1450
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sGooglePhotosVersion:Ljava/lang/Double;

    if-nez v0, :cond_2c

    .line 1451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.apps.photos"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getPackageMajorMinorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/utils/CameraUtil;->sGooglePhotosVersion:Ljava/lang/Double;

    .line 1454
    :cond_2c
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->sGooglePhotosVersion:Ljava/lang/Double;

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x401eeb851eb851ecL    # 7.73

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method private static isImageClosed(Landroid/media/Image;)Z
    .registers 1

    .line 781
    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x0

    return p0

    :catch_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isInAIGCModeV30(Ljava/lang/String;)Z
    .registers 2

    .line 2064
    const-string v0, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 2065
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isInPanoMode(Ljava/lang/String;)Z
    .registers 2

    .line 2056
    const-string v0, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isInUltraHDMode(Ljava/lang/String;)Z
    .registers 2

    .line 2060
    const-string v0, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isInVideoMode(Ljava/lang/String;)Z
    .registers 2

    .line 2045
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    .line 2046
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 2047
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    .line 2048
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 2049
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    .line 2050
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 2051
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    .line 2052
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    return p0

    :cond_43
    :goto_43
    const/4 p0, 0x1

    return p0
.end method

.method public static isNeedShowFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    .line 1380
    array-length v1, p0

    if-lez v1, :cond_53

    if-eqz p1, :cond_53

    .line 1382
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p0

    .line 1384
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1383
    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 1385
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr v1, p1

    const p1, 0x3d4ccccd    # 0.05f

    cmpl-float p1, v1, p1

    if-gtz p1, :cond_53

    .line 1387
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt p1, v1, :cond_53

    .line 1388
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_51

    goto :goto_53

    :cond_51
    const/4 p0, 0x1

    return p0

    :cond_53
    :goto_53
    return v0
.end method

.method public static isPackageNameEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 966
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 968
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_c

    return p0

    .line 971
    :catch_c
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageNameEnable NameNotFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_22
    return v0
.end method

.method public static isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_6

    goto :goto_44

    .line 684
    :cond_6
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 685
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 686
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v3

    if-eqz v3, :cond_2e

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    goto :goto_33

    :cond_2e
    const-wide v3, 0x3f8cac083126e979L    # 0.014

    :goto_33
    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    move v1, v0

    :goto_3b
    if-eqz v1, :cond_44

    .line 688
    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    :cond_44
    :goto_44
    return v0
.end method

.method public static isRepairMode(Landroid/content/Context;)Z
    .registers 3

    .line 2003
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "os_reboot_to_repair_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    return v0

    :cond_f
    return v1
.end method

.method public static isSameAspectRatio(DD)Z
    .registers 4

    sub-double/2addr p0, p2

    .line 306
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameAspectRatio(Landroid/graphics/Rect;D)Z
    .registers 7

    .line 300
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    sub-double/2addr v0, p1

    .line 301
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v4, p0

    div-double/2addr v0, v4

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v4, p0

    sub-double/2addr v0, v4

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public static isSatelliteNetworksState(Landroid/content/Context;)Z
    .registers 5

    .line 2260
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCameraExclusiveSatelliteSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 2261
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "camera exclusive satellite not support."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2264
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "transsion_satellite_networks_state"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 2265
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSatelliteNetworksState] state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p0, :cond_35

    return v0

    :cond_35
    return v1
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .registers 2

    .line 1801
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_f

    .line 1803
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 977
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 981
    :cond_c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public static isThunderbackWindow(Landroid/content/Context;)Z
    .registers 4

    .line 1466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1467
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;-><init>()V

    .line 1468
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->isThunderbackWindow(Landroid/content/res/Configuration;)Z

    move-result p0

    .line 1469
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThunderBackWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public static isUriValid(Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_43

    .line 1311
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_43

    .line 1314
    :cond_10
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1315
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1316
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x1

    return p0

    :cond_43
    :goto_43
    return v0
.end method

.method public static isVIPSelfieMode()Z
    .registers 2

    .line 1625
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 1626
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    .line 1629
    :cond_10
    sget-boolean v0, Lcom/transsion/camera/utils/CameraUtil;->sVIPSelfie:Z

    return v0
.end method

.method public static isVIPSelfieMode(Landroid/content/Context;)Z
    .registers 3

    .line 1616
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 1617
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1621
    :cond_10
    sget-boolean p0, Lcom/transsion/camera/utils/CameraUtil;->sVIPSelfie:Z

    return p0
.end method

.method public static lerp(FFF)F
    .registers 3

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private static parsePlanar(Landroid/media/Image;)[B
    .registers 10

    .line 789
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 790
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 791
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v4, 0x2

    aget-object p0, p0, v4

    .line 793
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 795
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 796
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 797
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 798
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    add-int v7, v4, v5

    add-int/2addr v7, v6

    .line 800
    new-array v7, v7, [B

    .line 801
    invoke-virtual {v0, v7, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-ge v5, v6, :cond_39

    move v0, v5

    goto :goto_3a

    :cond_39
    move v0, v6

    :goto_3a
    if-ge v1, v0, :cond_49

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v4

    .line 804
    invoke-virtual {p0, v7, v8, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v8, v3

    .line 805
    invoke-virtual {v2, v7, v8, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_49
    if-le v6, v0, :cond_52

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v4

    sub-int/2addr v6, v0

    .line 808
    invoke-virtual {p0, v7, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_52
    if-le v5, v0, :cond_5b

    mul-int/lit8 p0, v0, 0x2

    add-int/2addr v4, p0

    sub-int/2addr v5, v0

    .line 811
    invoke-virtual {v2, v7, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_5b
    return-object v7
.end method

.method private static parseSemiPlanar(Landroid/media/Image;)[B
    .registers 12

    .line 817
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 818
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 820
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 821
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 822
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 824
    invoke-virtual {p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 825
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 826
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 827
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    mul-int v9, v7, v8

    .line 828
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v10

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x8

    new-array v9, v9, [B

    if-ne v7, v0, :cond_a9

    .line 834
    :try_start_3b
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    if-ne v8, p0, :cond_a9

    .line 835
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    .line 836
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt v0, v4, :cond_57

    .line 838
    invoke-virtual {v3, v9, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_75

    :catch_54
    move-exception p0

    goto/16 :goto_eb

    .line 840
    :cond_57
    sget-object v1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseSemiPlanar yBufferRemaining: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", yRemaining: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    :goto_75
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p0, :cond_84

    .line 844
    invoke-virtual {v5, v9, v4, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_a2

    .line 846
    :cond_84
    sget-object v1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseSemiPlanar vuBufferRemaining: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vuRemaining: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 848
    :goto_a2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 849
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v9

    .line 851
    :cond_a9
    iget p0, v6, Landroid/graphics/Rect;->top:I

    mul-int/2addr p0, v0

    iget v4, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v4

    move v4, v1

    move v10, v4

    :goto_b1
    if-ge v4, v8, :cond_be

    .line 854
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 855
    invoke-virtual {v3, v9, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v7

    add-int/2addr p0, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 861
    :cond_be
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p0

    .line 862
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    .line 863
    iget v2, v6, Landroid/graphics/Rect;->top:I

    shr-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    iget v3, v6, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, p0

    add-int/2addr v2, v3

    shr-int/lit8 p0, v8, 0x1

    :goto_d3
    add-int/lit8 v3, p0, -0x1

    if-ge v1, v3, :cond_e2

    .line 866
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 867
    invoke-virtual {v5, v9, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v7

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 871
    :cond_e2
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v7, v7, -0x1

    .line 872
    invoke-virtual {v5, v9, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_ea
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_ea} :catch_54

    return-object v9

    .line 875
    :goto_eb
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer is inaccessible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v9
.end method

.method public static parseVideoFps(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1257
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1259
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 1260
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1262
    :cond_17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1248
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 1250
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1251
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1253
    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static putFbCameraState(Landroid/content/Context;I)V
    .registers 4

    .line 1720
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isShoulderKeySupport()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1722
    :try_start_a
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_48

    .line 1723
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fb_camera_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1724
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putFbCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_32

    return-void

    .line 1727
    :catch_32
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putFbCameraState error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public static randomValueIn(II)I
    .registers 3

    .line 1286
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static readRawFile(I)Ljava/lang/String;
    .registers 4

    .line 1351
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_26

    .line 1352
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 1353
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 1354
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    .line 1355
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_26

    return-object v1

    :catchall_1a
    move-exception v0

    if-eqz p0, :cond_25

    .line 1351
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p0

    :try_start_22
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    .line 1356
    :catch_26
    const-string p0, ""

    return-object p0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .registers 3

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 398
    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 399
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 400
    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 401
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .registers 5

    .line 393
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static rectToString(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCameraOrientation(I)V
    .registers 1

    .line 1576
    sput p0, Lcom/transsion/camera/utils/CameraUtil;->mCameraOrientation:I

    return-void
.end method

.method public static setSuperNightLiteCountDownAnimaEnabled(Z)V
    .registers 1

    .line 2237
    sput-boolean p0, Lcom/transsion/camera/utils/CameraUtil;->mIsSuperNightLiteCountDownAnimEnabled:Z

    return-void
.end method

.method private static setTranLedFlash(Landroid/content/Context;IIIIII)V
    .registers 15

    if-eqz p0, :cond_46

    .line 1690
    :try_start_2
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1691
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1692
    const-string v1, "setTranLedFlash"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_40} :catch_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_40} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_40} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception v0

    move-object p0, v0

    .line 1697
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_46
    return-void
.end method

.method public static sortSizeInDescending(Ljava/util/List;)V
    .registers 2

    .line 1307
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sSizeDesComparator:Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static splitToBitList(J)Ljava/util/List;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_c

    .line 2246
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_c
    long-to-double v2, p0

    .line 2248
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 2249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v2, :cond_3a

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    and-long v7, p0, v5

    cmp-long v7, v7, v0

    if-eqz v7, :cond_37

    .line 2253
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_3a
    return-object v3
.end method

.method public static startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z
    .registers 3

    .line 735
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception p0

    .line 737
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startActivity Exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .line 745
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception p0

    .line 747
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startActivity Exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static updateExternalStoragePublicDirectoryPath()V
    .registers 2

    .line 642
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateExternalStoragePublicDirectoryPath]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->externalStoragePublicDirectoryPath:Ljava/lang/String;

    return-void
.end method

.method public static updateLastClickTime()V
    .registers 2

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    return-void
.end method

.method public static updateMicNumber(Landroid/content/Context;)V
    .registers 3

    .line 1743
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_2a

    .line 1745
    const-string v0, "LVACFS_MIC_NUMBER"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/utils/CameraUtil;->mMicNumber:Ljava/lang/String;

    .line 1746
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateMicNumber] mMicNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/camera/utils/CameraUtil;->mMicNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public static writeHeadsetSetting(Landroid/content/Context;I)V
    .registers 4

    .line 1703
    const-string v0, "writeHeadsetSetting: "

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHeadsetCaptureSupport()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1705
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "remote_camera_screen"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1706
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 1708
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_43
    return-void
.end method
