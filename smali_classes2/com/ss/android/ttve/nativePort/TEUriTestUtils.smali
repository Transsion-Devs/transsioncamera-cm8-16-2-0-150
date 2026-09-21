.class public Lcom/ss/android/ttve/nativePort/TEUriTestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEUriTestUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkVideo(Ljava/lang/String;)I
.end method

.method public static native decodeImageFile(Ljava/lang/String;)I
.end method

.method public static native getColorGamut(Ljava/lang/String;)I
.end method

.method public static native getImageInfo(Ljava/lang/String;)I
.end method

.method public static getRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 5

    .line 46
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 48
    :try_start_8
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_10

    move-object v2, p0

    goto/16 :goto_6c

    :catch_10
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c

    :cond_15
    if-nez p0, :cond_1f

    .line 56
    const-string p0, "TEUriTestUtils"

    const-string p1, "contentResolver should not be null after Android Q"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 59
    :cond_1f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 62
    :try_start_23
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_29} :catch_55
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_52
    .catchall {:try_start_23 .. :try_end_29} :catchall_50

    if-nez p0, :cond_36

    if-eqz p0, :cond_35

    .line 79
    :try_start_2d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    return v1

    :catch_31
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_35
    return v1

    .line 67
    :cond_36
    :try_start_36
    new-instance p1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3f} :catch_4e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_4c
    .catchall {:try_start_36 .. :try_end_3f} :catchall_49

    .line 79
    :try_start_3f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_47
    move-object v2, p1

    goto :goto_6c

    :catchall_49
    move-exception p1

    move-object v2, p0

    goto :goto_8a

    :catch_4c
    move-exception p1

    goto :goto_58

    :catch_4e
    move-exception p1

    goto :goto_66

    :catchall_50
    move-exception p1

    goto :goto_8a

    :catch_52
    move-exception p1

    move-object p0, v2

    goto :goto_58

    :catch_55
    move-exception p1

    move-object p0, v2

    goto :goto_66

    .line 74
    :goto_58
    :try_start_58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_49

    if-eqz p0, :cond_6c

    .line 79
    :goto_5d
    :try_start_5d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_6c

    :catch_61
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c

    .line 71
    :goto_66
    :try_start_66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_49

    if-eqz p0, :cond_6c

    goto :goto_5d

    :cond_6c
    :goto_6c
    if-eqz v2, :cond_89

    .line 89
    const-string p0, "Orientation"

    const/4 p1, 0x0

    invoke-virtual {v2, p0, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_86

    const/4 v0, 0x6

    if-eq p0, v0, :cond_83

    const/16 v0, 0x8

    if-eq p0, v0, :cond_80

    return p1

    :cond_80
    const/16 p0, 0x10e

    return p0

    :cond_83
    const/16 p0, 0x5a

    return p0

    :cond_86
    const/16 p0, 0xb4

    return p0

    :cond_89
    return v1

    :goto_8a
    if-eqz v2, :cond_94

    .line 79
    :try_start_8c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :cond_94
    :goto_94
    throw p1
.end method

.method public static native isFileExistCompat(Ljava/lang/String;)Z
.end method
