.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;,
        Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubPackageManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;


# direct methods
.method public static synthetic $r8$lambda$0tjPBo1w1H98htbCuYhwqWMXRNs(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$checkDefaultMusic$14()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2XFHUON5HG0uVTXgbInuXh5-0_Q(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;III)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setComponentEnabledSetting$4(Landroid/content/ComponentName;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5JZIx1Q1ZA1mhQ2YiW2aD_PIcps(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setApplicationNotifyScreenOn$11(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D4OkfZdbXu2pqkmNEmZvL_8pV3c(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/Intent;II)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$queryIntentActivitiesAsUser$6(Landroid/content/Intent;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DgNfbblWks2mgdTRQdQ1dBCuaTo(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$checkDefaultGaller$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FPd_bdLKyDfzNll-xtVdGKtceP4(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getInstalledApplicationsInDualSpace$17(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G5DMwmiav-_0MyyM2_sF4Gmjn9Y(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$installExistingPackageAsUser$8(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JkWUPPAUiWO6WX00f88D-eOXe-U(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getAllHiddenApps$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M3sy5nOtN9ZiPnvJT4w_PJvWWwo(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$deletePackageAsUser$7(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MTCdSuQZsH2XASx3mKcQaUbC-m0(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getPackageInfo$1(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NlQSsEoIysAk8fCbu5_hq2G88u4(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$checkDefaultCalendar$13()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pfsqn_enshqXy5nVohy3IPU12Ls(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getApplicationNotifyScreenOn$10(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TeOClmMC0CP9HjHR_CftZKRUBxY(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setHomeActivity$0(Landroid/content/ComponentName;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U4k_nyqY5z18bAfN6IFPhHODMUk(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setDefaulCalendarPackageNameAsUser$16(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZgpEWP-RvpkG1h8UUkiw1EAaYFg(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getHomeActivities$2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$btOCcuawchDlClGuY2oN74S3x1M(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;II)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getInstalledApplicationsAsUser$5(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mzH4blswwC--UhgdmboVVmY_hNo(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getDefaulCalendarPackageNameAsUser$15(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tCEUn6Sph_6HI-355IheYZTJHYs(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getPermissionControllerPackageName$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "package"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    return-void
.end method

.method private synthetic lambda$checkDefaultCalendar$13()Ljava/lang/Object;
    .registers 3

    .line 342
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->checkDefaultCalendar()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 344
    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, " checkDefaultCalendar exception: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$checkDefaultGaller$12()Ljava/lang/Object;
    .registers 3

    .line 330
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->checkDefaultGaller()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 332
    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, " checkDefaultGaller exception: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$checkDefaultMusic$14()Ljava/lang/Object;
    .registers 3

    .line 354
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->checkDefaultMusic()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 356
    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, " checkDefaultMusic exception: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$deletePackageAsUser$7(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_c

    .line 128
    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;

    invoke-direct {v1, p0, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/content/pm/ITranPackageDeleteObserver;II)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAllHiddenApps$3()Ljava/lang/Object;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_9

    .line 82
    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getAllHiddenApps()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getApplicationNotifyScreenOn$10(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getApplicationNotifyScreenOn(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 308
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " getApplicationNotifyScreenOn exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    .line 310
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaulCalendarPackageNameAsUser$15(I)Ljava/lang/Object;
    .registers 3

    .line 366
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 368
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " getDefaulCalendarPackageNameAsUser exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$getHomeActivities$2(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_9

    .line 70
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getInstalledApplicationsAsUser$5(II)Ljava/lang/Object;
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_d

    .line 104
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getInstalledApplicationsAsUserExt(II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getInstalledApplicationsInDualSpace$17(I)Ljava/lang/Object;
    .registers 3

    .line 441
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 442
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getInstalledApplicationsInDualSpace(I)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 443
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v0
.end method

.method private synthetic lambda$getPackageInfo$1(Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_9

    .line 58
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getPermissionControllerPackageName$9()Ljava/lang/Object;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_9

    .line 177
    invoke-interface {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$installExistingPackageAsUser$8(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_d

    .line 165
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queryIntentActivitiesAsUser$6(Landroid/content/Intent;II)Ljava/lang/Object;
    .registers 4

    .line 115
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_d

    .line 116
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->queryIntentActivitiesAsUserExt(Landroid/content/Intent;II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setApplicationNotifyScreenOn$11(Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 318
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setApplicationNotifyScreenOn(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 320
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setApplicationNotifyScreenOn exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setComponentEnabledSetting$4(Landroid/content/ComponentName;III)Ljava/lang/Object;
    .registers 5

    .line 93
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_7

    .line 94
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setDefaulCalendarPackageNameAsUser$16(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 378
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 380
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setDefaulCalendarPackageNameAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setHomeActivity$0(Landroid/content/ComponentName;I)Ljava/lang/Object;
    .registers 3

    .line 45
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_7

    .line 46
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkDefaultCalendar()V
    .registers 3

    .line 340
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public checkDefaultGaller()V
    .registers 3

    .line 328
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public checkDefaultMusic()V
    .registers 3

    .line 352
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V
    .registers 5

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_c

    .line 496
    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;

    invoke-direct {v1, p0, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Lcom/transsion/hubsdk/app/ITranPackageDataObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p0

    .line 500
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " deleteApplicationCacheFiles exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V
    .registers 6

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_c

    .line 483
    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;

    invoke-direct {v1, p0, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILcom/transsion/hubsdk/app/ITranPackageDataObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p0

    .line 487
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " deleteApplicationCacheFilesAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;I)V
    .registers 6

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;

    invoke-direct {v1, p0, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/content/pm/ITranPackageDeleteObserver;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 259
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deletePackageAsOOBE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V
    .registers 12

    .line 126
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda17;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getAllHiddenApps()[Ljava/lang/String;
    .registers 4

    .line 80
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllHiddenApps result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 2

    .line 224
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 198
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_20

    .line 200
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 202
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getApplicationInfoAsUser fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationNotifyScreenOn(Ljava/lang/String;I)I
    .registers 5

    .line 304
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCurrentShapeDataOrRadius(I)Ljava/lang/String;
    .registers 3

    .line 468
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_11

    .line 469
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getCurrentShapeDataOrRadius(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 472
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " reinstall exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;
    .registers 4

    .line 364
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;
    .registers 3

    .line 295
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 297
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " getDefaultGallerPackageNameAsUser exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    const-string p0, ""

    return-object p0
.end method

.method public getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;
    .registers 3

    .line 388
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 390
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " getDefaultMusicPackageNameAsUser exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const-string p0, ""

    return-object p0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/util/List;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    .line 74
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeActivities mComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 108
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstalledApplicationsAsUser applicationInfos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getInstalledApplicationsInDualSpace(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 447
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInstalledApplicationsInDualSpace applicationInfos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_24

    .line 212
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getInstalledPackagesAsUserExt(II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 214
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstalledPackagesAsUser fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 56
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 62
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPackageInfo mPackageInfo:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 431
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 433
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " getPackageInfoAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPermissionControllerPackageName packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .registers 5

    .line 163
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 169
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "installExistingPackageAsUser result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRemovableSysApp(Ljava/lang/String;)Z
    .registers 3

    .line 419
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_11

    .line 420
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 423
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v0, " isRemovableSysApp exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
    .registers 3

    .line 408
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_7

    .line 409
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 412
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " markAsUnremovableSystemAppTemp exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/Intent;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 120
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryIntentActivitiesAsUser mResolveInfos:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_27

    .line 245
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->queryIntentServicesAsUserExt(Landroid/content/Intent;II)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryIntentServicesAsUser fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public reinstall(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 454
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_11

    .line 455
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->reinstall(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 458
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " reinstall exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/16 p0, -0x3e8

    return p0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 7

    .line 187
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz p0, :cond_20

    .line 189
    :try_start_4
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 191
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replacePreferredActivity fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 7

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    move-object p0, v0

    .line 278
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, "setApplicationEnabledSetting exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
    .registers 4

    .line 235
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setApplicationNotifyScreenOn(Ljava/lang/String;II)V
    .registers 6

    .line 316
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .registers 12

    .line 92
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;III)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 5

    .line 376
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 266
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 268
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDefaultBrowserPackageNameAsUser "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 3

    .line 285
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 287
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setDefaultGallerPackageNameAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 3

    .line 398
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 400
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p2, " setDefaultMusicPackageNameAsUser exception: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setHomeActivity(Landroid/content/ComponentName;I)V
    .registers 5

    .line 44
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)V

    const-string p0, "package"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string p1, "setHomeActivity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/content/pm/ITranPackageManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 510
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    return-void
.end method
