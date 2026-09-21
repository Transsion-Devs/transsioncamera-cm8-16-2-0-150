.class public Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPackageInstaller"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;

.field private mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;
    .registers 3

    .line 31
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 32
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPackageInstaller"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageInstaller;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageInstaller;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;

    :cond_18
    return-object p1

    .line 35
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPackageInstaller"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageInstaller;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageInstaller;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;

    :cond_2b
    return-object p1
.end method

.method public setDontKillApp(Landroid/content/pm/PackageInstaller$SessionParams;Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageInstaller;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;->setDontKillApp(Landroid/content/pm/PackageInstaller$SessionParams;Z)V

    return-void

    .line 48
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
