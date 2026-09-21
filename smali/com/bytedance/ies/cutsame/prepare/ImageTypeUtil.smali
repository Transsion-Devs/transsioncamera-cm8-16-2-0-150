.class public Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    }
.end annotation


# static fields
.field private static final GIF87A:[B

.field private static final GIF89A:[B

.field private static final JPEG:[B

.field private static final PNG:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    .line 31
    new-array v1, v0, [B

    fill-array-data v1, :array_22

    sput-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->GIF87A:[B

    .line 32
    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->GIF89A:[B

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [B

    fill-array-data v0, :array_32

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->JPEG:[B

    const/16 v0, 0x8

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->PNG:[B

    return-void

    nop

    :array_22
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    nop

    :array_32
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_38
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSignature([B[B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    if-nez p1, :cond_6

    goto :goto_16

    :cond_6
    move v1, v0

    .line 133
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 134
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    :goto_16
    return v0
.end method

.method private static getImageType(Landroid/content/Context;Landroid/net/Uri;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    .registers 5

    const/4 v0, 0x0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_b7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_b2
    .catchall {:try_start_1 .. :try_end_b} :catchall_ad

    if-eqz p0, :cond_98

    .line 64
    :try_start_d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 65
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1c} :catch_93
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_8e
    .catchall {:try_start_d .. :try_end_1c} :catchall_88

    const/16 v0, 0x8

    .line 66
    :try_start_1e
    new-array v0, v0, [B

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 68
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->GIF89A:[B

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v1

    if-nez v1, :cond_75

    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->GIF87A:[B

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_75

    .line 70
    :cond_34
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->JPEG:[B

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 71
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->JPG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_3e} :catch_55
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3e} :catch_52
    .catchall {:try_start_1e .. :try_end_3e} :catchall_4f

    .line 83
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :goto_46
    :try_start_46
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4e
    return-object v0

    :catchall_4f
    move-exception v0

    goto/16 :goto_df

    :catch_52
    move-exception v0

    goto/16 :goto_bc

    :catch_55
    move-exception v0

    goto/16 :goto_cc

    .line 72
    :cond_58
    :try_start_58
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->PNG:[B

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 73
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->PNG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_62} :catch_55
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_62} :catch_52
    .catchall {:try_start_58 .. :try_end_62} :catchall_4f

    .line 83
    :try_start_62
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :goto_6a
    :try_start_6a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_72
    return-object v0

    :cond_73
    move-object v0, p1

    goto :goto_98

    .line 69
    :cond_75
    :goto_75
    :try_start_75
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->GIF:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_77} :catch_55
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_77} :catch_52
    .catchall {:try_start_75 .. :try_end_77} :catchall_4f

    .line 83
    :try_start_77
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :goto_7f
    :try_start_7f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_87
    return-object v0

    :catchall_88
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_df

    :catch_8e
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_bc

    :catch_93
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_cc

    :cond_98
    :goto_98
    if-eqz v0, :cond_a2

    .line 83
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_a2

    :catch_9e
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a2
    :goto_a2
    if-eqz p0, :cond_dc

    .line 90
    :goto_a4
    :try_start_a4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_dc

    :catch_a8
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_dc

    :catchall_ad
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_df

    :catch_b2
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_bc

    :catch_b7
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_cc

    .line 79
    :goto_bc
    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_4f

    if-eqz p1, :cond_c9

    .line 83
    :try_start_c1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_c9

    :catch_c5
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c9
    :goto_c9
    if-eqz p0, :cond_dc

    goto :goto_a4

    .line 77
    :goto_cc
    :try_start_cc
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_4f

    if-eqz p1, :cond_d9

    .line 83
    :try_start_d1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_d9

    :catch_d5
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d9
    :goto_d9
    if-eqz p0, :cond_dc

    goto :goto_a4

    .line 96
    :cond_dc
    :goto_dc
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->UNKNOWN:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    return-object p0

    :goto_df
    if-eqz p1, :cond_e9

    .line 83
    :try_start_e1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_e9

    :catch_e5
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e9
    :goto_e9
    if-eqz p0, :cond_f3

    .line 90
    :try_start_eb
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    :cond_f3
    :goto_f3
    throw v0
.end method

.method public static getImageType(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    .registers 3

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 43
    sget-object v0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 44
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->getImageType(Landroid/content/Context;Landroid/net/Uri;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    move-result-object p0

    return-object p0

    .line 46
    :cond_17
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->getImageType(Ljava/io/File;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    move-result-object p0

    return-object p0

    .line 49
    :cond_21
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->UNKNOWN:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    return-object p0
.end method

.method private static getImageType(Ljava/io/File;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    .registers 4

    if-eqz p0, :cond_61

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_61

    .line 103
    :cond_9
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->UNKNOWN:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    const/4 v1, 0x0

    .line 106
    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_5b
    .catchall {:try_start_c .. :try_end_11} :catchall_54

    const/16 p0, 0x8

    .line 107
    :try_start_13
    new-array p0, p0, [B

    .line 108
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 109
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->GIF89A:[B

    invoke-static {p0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v1

    if-nez v1, :cond_4e

    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->GIF87A:[B

    invoke-static {p0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_4e

    .line 111
    :cond_29
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->JPEG:[B

    invoke-static {p0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 112
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->JPG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_3a
    .catchall {:try_start_13 .. :try_end_33} :catchall_37

    .line 120
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_36

    :catch_36
    return-object p0

    :catchall_37
    move-exception p0

    move-object v1, v2

    goto :goto_55

    :catch_3a
    move-object v1, v2

    goto :goto_5b

    .line 113
    :cond_3c
    :try_start_3c
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->PNG:[B

    invoke-static {p0, v1}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->checkSignature([B[B)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 114
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->PNG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_3a
    .catchall {:try_start_3c .. :try_end_46} :catchall_37

    .line 120
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    return-object p0

    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_60

    return-object v0

    .line 110
    :cond_4e
    :goto_4e
    :try_start_4e
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->GIF:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_50} :catch_3a
    .catchall {:try_start_4e .. :try_end_50} :catchall_37

    .line 120
    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    return-object p0

    :catchall_54
    move-exception p0

    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5a

    .line 123
    :catch_5a
    :cond_5a
    throw p0

    :catch_5b
    :goto_5b
    if-eqz v1, :cond_60

    .line 120
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-object v0

    .line 101
    :cond_61
    :goto_61
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->UNKNOWN:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    return-object p0
.end method
