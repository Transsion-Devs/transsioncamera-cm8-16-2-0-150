.class public abstract Lcom/bst/BstQrCodeFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    const-string v0, "jniBstQrCode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static BstQRCodeInit(Landroid/content/Context;)I
    .registers 2

    .line 45
    invoke-static {}, Lcom/bst/QrCode/BstFileUtil;->isJniBypass()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_8
    invoke-static {p0}, Lcom/bst/BstQrCodeFilter;->getCfgPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bst/BstQrCodeFilter;->nativeBstQRCodeInit(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static BstQRCodeRender(Ljava/nio/ByteBuffer;III)[Ljava/lang/String;
    .registers 5

    .line 58
    invoke-static {}, Lcom/bst/QrCode/BstFileUtil;->isJniBypass()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_8
    invoke-static {}, Lcom/bst/QrCode/BstFileUtil;->isPreviewDump()Z

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bst/BstQrCodeFilter;->nativeBstQRCodeRender(Ljava/nio/ByteBuffer;IIII)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static BstQRCodeUninit()I
    .registers 1

    .line 79
    invoke-static {}, Lcom/bst/QrCode/BstFileUtil;->isJniBypass()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 82
    :cond_8
    invoke-static {}, Lcom/bst/BstQrCodeFilter;->nativeBstQRCodeUninit()I

    move-result v0

    return v0
.end method

.method private static getCfgPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bst/qrcode/detect_model.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/bst/QrCode/BstFileUtil;->checkAndCopyAssetDataToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bst/qrcode/sr_model.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/bst/QrCode/BstFileUtil;->checkAndCopyAssetDataToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bst/qrcode/detect_model_tf.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/bst/QrCode/BstFileUtil;->checkAndCopyAssetDataToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bst/qrcode/detect_v3_model_tf_64.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/bst/QrCode/BstFileUtil;->checkAndCopyAssetDataToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bst/qrcode/bstQRCode.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/bst/QrCode/BstFileUtil;->checkAndCopyAssetDataToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final native nativeBstQRCodeInit(Ljava/lang/String;)I
.end method

.method private static final native nativeBstQRCodeRender(Ljava/nio/ByteBuffer;IIII)[Ljava/lang/String;
.end method

.method private static final native nativeBstQRCodeUninit()I
.end method
