.class public Lcom/ss/android/vesdk/utils/BitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BitmapLoader"

.field public static isSampleSizeRound:Z = false

.field public static maxSide:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UpAlignPo2(II)I
    .registers 2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, -0x1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static calAutoScale(IIIII)[I
    .registers 9

    if-gtz p0, :cond_7

    if-lez p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :goto_8
    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq p4, v2, :cond_10

    if-ne p4, v1, :cond_13

    :cond_10
    move v3, p3

    move p3, p2

    move p2, v3

    :cond_13
    if-eqz v0, :cond_2b

    if-lez p0, :cond_18

    goto :goto_1b

    :cond_18
    mul-int p0, p1, p2

    .line 501
    div-int/2addr p0, p3

    :goto_1b
    if-lez p1, :cond_1e

    goto :goto_21

    :cond_1e
    mul-int/2addr p3, p0

    .line 502
    div-int p1, p3, p2

    :goto_21
    const/4 p2, 0x2

    .line 505
    invoke-static {p0, p2}, Lcom/ss/android/vesdk/utils/BitmapLoader;->UpAlignPo2(II)I

    move-result p0

    .line 506
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/utils/BitmapLoader;->UpAlignPo2(II)I

    move-result p3

    move p2, p0

    :cond_2b
    if-eq p4, v2, :cond_2f

    if-ne p4, v1, :cond_32

    :cond_2f
    move v3, p3

    move p3, p2

    move p2, v3

    .line 519
    :cond_32
    filled-new-array {p2, p3}, [I

    move-result-object p0

    return-object p0
.end method

.method private static calculateInSampleSize(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 10

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_b3

    if-ne p3, v1, :cond_8

    goto/16 :goto_b3

    .line 352
    :cond_8
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 353
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 354
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 355
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_68

    .line 357
    :cond_19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p0, :cond_2c

    .line 361
    :try_start_20
    const-string p0, "BitmapLoader"

    const-string p1, "contentResolver should not be null after Android Q"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_28
    move-exception p0

    goto :goto_54

    :catch_2a
    move-exception p0

    goto :goto_62

    .line 364
    :cond_2c
    const-string v4, "r"

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_32} :catch_2a
    .catchall {:try_start_20 .. :try_end_32} :catchall_28

    if-nez v3, :cond_3f

    if-eqz v3, :cond_3e

    .line 378
    :try_start_36
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    return v0

    :catch_3a
    move-exception p0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3e
    return v0

    .line 367
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_4b} :catch_2a
    .catchall {:try_start_3f .. :try_end_4b} :catchall_28

    .line 378
    :goto_4b
    :try_start_4b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_68

    :catch_4f
    move-exception p0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    .line 373
    :goto_54
    :try_start_54
    const-string p1, "loadBitmap"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_68

    goto :goto_4b

    :catchall_60
    move-exception p0

    goto :goto_a8

    .line 369
    :goto_62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_60

    if-eqz v3, :cond_68

    goto :goto_4b

    .line 385
    :cond_68
    :goto_68
    iget p0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 386
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le p3, p2, :cond_6f

    goto :goto_72

    :cond_6f
    move v5, p3

    move p3, p2

    move p2, v5

    :goto_72
    if-le p0, p1, :cond_77

    move v5, p1

    move p1, p0

    move p0, v5

    :cond_77
    if-gt p0, p2, :cond_7e

    if-le p1, p3, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 p0, 0x0

    goto :goto_a3

    :cond_7e
    :goto_7e
    int-to-float v1, p1

    int-to-float p3, p3

    div-float/2addr v1, p3

    int-to-float p3, p0

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 401
    sget-boolean p2, Lcom/ss/android/vesdk/utils/BitmapLoader;->isSampleSizeRound:Z

    if-eqz p2, :cond_9e

    .line 402
    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 403
    :goto_90
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p3

    div-int/2addr p3, p2

    sget v1, Lcom/ss/android/vesdk/utils/BitmapLoader;->maxSide:I

    if-le p3, v1, :cond_9c

    mul-int/lit8 p2, p2, 0x2

    goto :goto_90

    :cond_9c
    move p0, p2

    goto :goto_a3

    .line 407
    :cond_9e
    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    .line 410
    :goto_a3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :goto_a8
    if-eqz v3, :cond_b2

    .line 378
    :try_start_aa
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    :cond_b2
    :goto_b2
    throw p0

    :cond_b3
    :goto_b3
    return v0
.end method

.method public static getPictureSize(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Point;
    .registers 6

    .line 303
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 304
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 305
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 306
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_6b

    .line 308
    :cond_12
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 311
    const-string v1, "BitmapLoader"

    const/4 v2, 0x0

    if-nez p0, :cond_25

    .line 312
    :try_start_1b
    const-string p0, "contentResolver should not be null after Android Q"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_21
    move-exception p0

    goto :goto_56

    :catch_23
    move-exception p0

    goto :goto_65

    .line 315
    :cond_25
    const-string v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_2b} :catch_23
    .catchall {:try_start_1b .. :try_end_2b} :catchall_21

    if-nez p0, :cond_38

    if-eqz p0, :cond_37

    .line 329
    :try_start_2f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    return-object v2

    :catch_33
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    return-object v2

    .line 318
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_45} :catch_52
    .catchall {:try_start_38 .. :try_end_45} :catchall_4e

    .line 329
    :try_start_45
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_6b

    :catch_49
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6b

    :catchall_4e
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_56

    :catch_52
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_65

    .line 324
    :goto_56
    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_63

    if-eqz v2, :cond_6b

    .line 329
    :goto_5f
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_49

    goto :goto_6b

    :catchall_63
    move-exception p0

    goto :goto_75

    .line 320
    :goto_65
    :try_start_65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_63

    if-eqz v2, :cond_6b

    goto :goto_5f

    .line 336
    :cond_6b
    :goto_6b
    new-instance p0, Landroid/graphics/Point;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :goto_75
    if-eqz v2, :cond_7f

    .line 329
    :try_start_77
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    :cond_7f
    :goto_7f
    throw p0
.end method

.method public static getRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 5

    .line 423
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 425
    :try_start_8
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-object v2, p0

    goto :goto_68

    :catch_f
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    :cond_14
    if-nez p0, :cond_1e

    .line 433
    const-string p0, "BitmapLoader"

    const-string p1, "contentResolver should not be null after Android Q"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 436
    :cond_1e
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 439
    :try_start_22
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_28} :catch_4f
    .catchall {:try_start_22 .. :try_end_28} :catchall_4c

    if-nez p0, :cond_35

    if-eqz p0, :cond_34

    .line 456
    :try_start_2c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    return v1

    :catch_30
    move-exception p0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    return v1

    .line 444
    :cond_35
    :try_start_35
    new-instance p1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3e} :catch_4a
    .catchall {:try_start_35 .. :try_end_3e} :catchall_48

    .line 456
    :try_start_3e
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_46
    move-object v2, p1

    goto :goto_68

    :catchall_48
    move-exception p1

    goto :goto_52

    :catch_4a
    move-exception p1

    goto :goto_62

    :catchall_4c
    move-exception p1

    move-object p0, v2

    goto :goto_52

    :catch_4f
    move-exception p1

    move-object p0, v2

    goto :goto_62

    .line 451
    :goto_52
    :try_start_52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    if-eqz p0, :cond_68

    .line 456
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_68

    :catch_5b
    move-exception p0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    :catchall_60
    move-exception p1

    goto :goto_85

    .line 448
    :goto_62
    :try_start_62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_60

    if-eqz p0, :cond_68

    goto :goto_57

    :cond_68
    :goto_68
    if-eqz v2, :cond_84

    .line 465
    const-string p0, "Orientation"

    invoke-virtual {v2, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_81

    const/4 p1, 0x6

    if-eq p0, p1, :cond_7e

    const/16 p1, 0x8

    if-eq p0, p1, :cond_7b

    return v1

    :cond_7b
    const/16 p0, 0x10e

    return p0

    :cond_7e
    const/16 p0, 0x5a

    return p0

    :cond_81
    const/16 p0, 0xb4

    return p0

    :cond_84
    return v1

    :goto_85
    if-eqz p0, :cond_8f

    .line 456
    :try_start_87
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 461
    :cond_8f
    :goto_8f
    throw p1
.end method

.method public static loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 47
    sget-object v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;Z)Landroid/graphics/Bitmap;
    .registers 11
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 52
    sget-object v3, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZ)Landroid/graphics/Bitmap;
    .registers 13
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 57
    sget-object v3, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZZ)Landroid/graphics/Bitmap;
    .registers 19
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 62
    const-string v2, "loadBitmap"

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 64
    invoke-static {v3, p0, p1, p2}, Lcom/ss/android/vesdk/utils/BitmapLoader;->calculateInSampleSize(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 67
    :cond_12
    :try_start_12
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_31

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BitmapFactory.decodeFile failed, imgPath"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_2d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_bc

    .line 74
    :cond_31
    sget-object v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;
    :try_end_33
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_33} :catch_2d

    const/4 v5, 0x0

    if-ne p3, v0, :cond_5f

    .line 77
    :try_start_36
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_3b} :catch_2d

    goto :goto_42

    :catch_3c
    move-exception v0

    move-object p0, v0

    .line 79
    :try_start_3e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v3

    :goto_42
    if-eqz v0, :cond_54

    .line 83
    const-string p0, "Orientation"

    invoke-virtual {v0, p0, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_59

    const/16 v0, 0x8

    if-eq p0, v0, :cond_56

    :cond_54
    move p0, v5

    goto :goto_63

    :cond_56
    const/16 p0, 0x10e

    goto :goto_63

    :cond_59
    const/16 p0, 0x5a

    goto :goto_63

    :cond_5c
    const/16 p0, 0xb4

    goto :goto_63

    .line 101
    :cond_5f
    invoke-virtual {p3}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->getRotation()I

    move-result p0

    :goto_63
    const/4 v0, 0x1

    if-eqz p6, :cond_7a

    .line 105
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p1, p2, v6, v7, p0}, Lcom/ss/android/vesdk/utils/BitmapLoader;->calAutoScale(IIIII)[I

    move-result-object p1

    .line 106
    aget v1, p1, v5

    .line 107
    aget p1, p1, v0

    move v11, v1

    move v1, p1

    move p1, v11

    goto :goto_7b

    :cond_7a
    move v1, p2

    :goto_7b
    if-eqz p5, :cond_91

    .line 111
    invoke-static {v4, p1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 114
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_90

    .line 115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_90
    move-object v4, p1

    :cond_91
    if-eqz p0, :cond_b5

    .line 122
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 123
    invoke-virtual {v9, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 124
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 125
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 124
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 126
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_b4

    .line 127
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b4
    move-object v4, p0

    :cond_b5
    if-eqz p4, :cond_bb

    .line 132
    invoke-static {v4}, Lcom/ss/android/vesdk/utils/BitmapLoader;->makeDimensionEven(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_bb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3e .. :try_end_bb} :catch_2d

    :cond_bb
    return-object v4

    .line 137
    :goto_bc
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static loadBitmapCompat(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 10
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 154
    sget-object v4, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmapCompat(Landroid/content/ContentResolver;Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmapCompat(Landroid/content/ContentResolver;Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;Z)Landroid/graphics/Bitmap;
    .registers 13
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 170
    sget-object v4, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmapCompat(Landroid/content/ContentResolver;Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmapCompat(Landroid/content/ContentResolver;Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZ)Landroid/graphics/Bitmap;
    .registers 23
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 186
    const-string v5, "loadBitmapCompat"

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 189
    invoke-static {v2}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 190
    invoke-static/range {p1 .. p6}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1a
    if-lez v3, :cond_24

    if-lez v4, :cond_24

    .line 194
    invoke-static/range {p0 .. p3}, Lcom/ss/android/vesdk/utils/BitmapLoader;->calculateInSampleSize(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_24
    const/4 v6, 0x0

    if-nez v1, :cond_2f

    .line 197
    const-string v0, "BitmapLoader"

    const-string v1, "contentResolver should not be null after Android Q"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 200
    :cond_2f
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 203
    :try_start_33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v8, "r"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_61} :catch_8c
    .catchall {:try_start_33 .. :try_end_61} :catchall_89

    if-nez v7, :cond_6e

    if-eqz v7, :cond_6d

    .line 220
    :try_start_65
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    return-object v6

    :catch_69
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6d
    return-object v6

    .line 209
    :cond_6e
    :try_start_6e
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_7c} :catch_87
    .catchall {:try_start_6e .. :try_end_7c} :catchall_85

    .line 220
    :try_start_7c
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_ac

    :catch_80
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ac

    :catchall_85
    move-exception v0

    goto :goto_8f

    :catch_87
    move-exception v0

    goto :goto_a5

    :catchall_89
    move-exception v0

    move-object v7, v6

    goto :goto_8f

    :catch_8c
    move-exception v0

    move-object v7, v6

    goto :goto_a5

    .line 215
    :goto_8f
    :try_start_8f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_a1

    if-eqz v7, :cond_ab

    .line 220
    :goto_98
    :try_start_98
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_ab

    :catch_9c
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ab

    :catchall_a1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_116

    .line 211
    :goto_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a1

    if-eqz v7, :cond_ab

    goto :goto_98

    :cond_ab
    :goto_ab
    move-object v8, v6

    :goto_ac
    if-nez v8, :cond_c3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapFactory.decodeFile failed, imgPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_c3
    if-eqz p6, :cond_db

    const/4 v0, 0x1

    .line 231
    invoke-static {v8, v3, v4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 234
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_d9

    .line 235
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d9
    move-object v9, v0

    goto :goto_dc

    :cond_db
    move-object v9, v8

    .line 241
    :goto_dc
    sget-object v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    move-object/from16 v3, p4

    if-ne v3, v0, :cond_e7

    .line 242
    invoke-static/range {p0 .. p1}, Lcom/ss/android/vesdk/utils/BitmapLoader;->getRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_eb

    .line 244
    :cond_e7
    invoke-virtual {v3}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->getRotation()I

    move-result v0

    :goto_eb
    if-eqz v0, :cond_10f

    .line 248
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 249
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 250
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 251
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 250
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_10e

    .line 253
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10e
    move-object v9, v0

    :cond_10f
    if-eqz p5, :cond_115

    .line 258
    invoke-static {v9}, Lcom/ss/android/vesdk/utils/BitmapLoader;->makeDimensionEven(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_115
    return-object v9

    :goto_116
    if-eqz v7, :cond_120

    .line 220
    :try_start_118
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_120

    :catch_11c
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    :cond_120
    :goto_120
    throw v1
.end method

.method private static makeDimensionEven(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 270
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 273
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1e

    .line 275
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    move v3, v4

    goto :goto_1f

    :catch_1c
    move-exception p0

    goto :goto_3e

    :cond_1e
    move v3, v5

    .line 278
    :goto_1f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_2c

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    if-nez v4, :cond_30

    return-object p0

    :cond_30
    if-lez v1, :cond_3d

    if-gtz v2, :cond_35

    goto :goto_3d

    .line 291
    :cond_35
    invoke-static {p0, v5, v5, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_3c} :catch_1c

    return-object v1

    :cond_3d
    :goto_3d
    return-object v0

    .line 296
    :goto_3e
    const-string v1, "makeDimensionEven"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
