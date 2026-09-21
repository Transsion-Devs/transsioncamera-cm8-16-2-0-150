.class public Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private apkVersion:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetapkVersion(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->apkVersion:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgaid(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlanguage(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->language:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmcc(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->mcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->model:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputapkVersion(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->apkVersion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgaid(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->gaid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlanguage(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->language:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmcc(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->mcc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmodel(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->model:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGAID(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->getGAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLanguage(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMcc(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVersionCode(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_RequestHeadParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "ss"

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->sign:Ljava/lang/String;

    .line 26
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->requestId:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->model:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;

    const-string v2, "RequestHeadParameter"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;-><init>(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private getGAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 97
    new-instance p0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "PDM_Request"

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    .line 101
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_28
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_7 .. :try_end_b} :catch_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_2e

    :catch_c
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2d

    .line 108
    :catch_22
    const-string p1, "GooglePlayServicesNotAvailableException"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2d

    .line 105
    :catch_28
    const-string p1, "IOException"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2d
    const/4 p0, 0x0

    :goto_2e
    if-eqz p0, :cond_4b

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0

    .line 115
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gaid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4d

    .line 113
    :cond_4b
    const-string p0, ""

    :goto_4d
    return-object p0
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 1

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMcc(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 56
    const-string p0, "phone"

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1c

    .line 59
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1c

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 61
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 76
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public setSign(Ljava/lang/String;)V
    .registers 4

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->sign:Ljava/lang/String;

    .line 51
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->sign:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 4

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->timestamp:Ljava/lang/String;

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->requestId:Ljava/lang/String;

    .line 123
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->requestId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateGAID(Landroid/content/Context;)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->gaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 88
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$2;

    const-string/jumbo v2, "updateGAID"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$2;-><init>(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method
