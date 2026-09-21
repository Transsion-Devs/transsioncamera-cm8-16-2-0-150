.class public Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getLicensePath()Ljava/lang/String;
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LicenseBag_bundle"

    if-eqz v0, :cond_25

    .line 24
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;->getResourcePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "chuanyin_20231027_20331027_com.transsion.camera_4.4.3_807.licbag"

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_25
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;->getResourcePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "chuanyin_20231027_20331027_com.transsion.camera.debug_4.4.3_807.licbag"

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourcePath()Ljava/lang/String;
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;->mContext:Landroid/content/Context;

    const-string v1, "assets"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/FileUtil;->getExternalFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "resource"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method
