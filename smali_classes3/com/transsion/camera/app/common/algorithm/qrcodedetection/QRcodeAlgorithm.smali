.class public Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;


# instance fields
.field private mQRcodeEntry:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "com.transsion.camera.feature.setting.qrcode.QRcodeEntry"

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->mQRcodeEntry:Ljava/lang/Class;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;
    .registers 2

    const-class v0, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;

    monitor-enter v0

    .line 19
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->sInstance:Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;

    if-nez v1, :cond_11

    .line 20
    new-instance v1, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;-><init>()V

    sput-object v1, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->sInstance:Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 22
    :cond_11
    :goto_11
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->sInstance:Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public algorithmSupport()Z
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->mQRcodeEntry:Ljava/lang/Class;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
