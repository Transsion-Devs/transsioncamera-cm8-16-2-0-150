.class public Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;,
        Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;
    }
.end annotation


# static fields
.field public static final DELETE_SYSTEM_APP:I = 0x4

.field public static final FLAG_PERMISSION_GRANTED_BY_DEFAULT:I = 0x20

.field public static final FLAG_PERMISSION_POLICY_FIXED:I = 0x4

.field public static final FLAG_PERMISSION_RESTRICTION_INSTALLER_EXEMPT:I = 0x800

.field public static final FLAG_PERMISSION_RESTRICTION_SYSTEM_EXEMPT:I = 0x1000

.field public static final FLAG_PERMISSION_RESTRICTION_UPGRADE_EXEMPT:I = 0x2000

.field public static final FLAG_PERMISSION_REVIEW_REQUIRED:I = 0x40

.field public static final FLAG_PERMISSION_SYSTEM_FIXED:I = 0x10

.field public static final FLAG_PERMISSION_USER_SENSITIVE_WHEN_DENIED:I = 0x200

.field public static final FLAG_PERMISSION_USER_SENSITIVE_WHEN_GRANTED:I = 0x100

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final MATCH_ANY_USER:I = 0x400000

.field public static final MATCH_HIDDEN_UNTIL_INSTALLED_COMPONENTS:I = 0x20000000

.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranPackageManager"

.field public static final USERID_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userId is wrong"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

.field private mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$91HHpRBkke9see47c3RBjxMmX8w(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;Ljava/lang/String;Z)V
    .registers 3

    if-eqz p0, :cond_5

    .line 746
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$OnkUMqq2cMzCr5vsJZnMoDnZn1s(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V
    .registers 3

    if-eqz p0, :cond_5

    .line 320
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$e5LXV6QF0IKr6HyO23pOBrco9_8(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;Ljava/lang/String;Z)V
    .registers 3

    if-eqz p0, :cond_5

    .line 722
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$iTZSw5mVwNRul9zozfCb6fjNzes(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V
    .registers 3

    if-eqz p0, :cond_5

    .line 470
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDefaultCalendar()V
    .registers 2

    .line 562
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->checkDefaultCalendar()V

    return-void
.end method

.method public checkDefaultGaller()V
    .registers 2

    .line 552
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->checkDefaultGaller()V

    return-void
.end method

.method public checkDefaultMusic()V
    .registers 2

    .line 572
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->checkDefaultMusic()V

    return-void
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;)V
    .registers 4

    .line 743
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;)V

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->deleteApplicationCacheFiles(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V

    return-void
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;)V
    .registers 5

    .line 719
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V

    return-void
.end method

.method public deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;I)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 468
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;)V

    invoke-interface {p0, p1, v0, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;I)V

    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;II)V
    .registers 6
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_22

    const/high16 v0, -0x80000000

    if-le p4, v0, :cond_1a

    const v0, 0x7fffffff

    if-ge p4, v0, :cond_1a

    .line 318
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;)V

    invoke-interface {p0, p1, v0, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V

    return-void

    .line 316
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllHiddenApps()[Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 159
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getAllHiddenApps()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_d

    .line 386
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 384
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 5

    if-eqz p1, :cond_d

    .line 201
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 199
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationNotifyScreenOn(Ljava/lang/String;I)I
    .registers 4

    .line 529
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getApplicationNotifyScreenOn(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getCurrentShapeDataOrRadius(I)Ljava/lang/String;
    .registers 3

    .line 697
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getCurrentShapeDataOrRadius(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;
    .registers 3

    .line 584
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 503
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;
    .registers 3

    .line 610
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-ltz p2, :cond_12

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_12

    .line 265
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 263
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstalledApplicationsInDualSpace(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getInstalledApplicationsInDualSpace(I)Ljava/util/List;

    move-result-object p0

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

    .line 215
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33182:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 130
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 5

    if-eqz p1, :cond_d

    .line 667
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 665
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .registers 2

    .line 358
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;
    .registers 3

    .line 83
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 84
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPackageManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    :cond_18
    return-object p1

    .line 87
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPackageManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    :cond_2b
    return-object p1
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1c

    if-ltz p2, :cond_14

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_14

    .line 349
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 347
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 344
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRemovableSysApp(Ljava/lang/String;)Z
    .registers 3

    .line 647
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p1, :cond_15

    .line 653
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 651
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
    .registers 4

    .line 632
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_19

    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 638
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V

    return-void

    .line 636
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

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

    if-ltz p3, :cond_12

    const v0, 0x7fffffff

    if-ge p3, v0, :cond_12

    .line 291
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 289
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 5
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

    .line 447
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public reinstall(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 687
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->reinstall(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 7

    .line 181
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 433
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
    .registers 5

    if-eqz p1, :cond_c

    .line 412
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setApplicationEnabledSettingForPM(Ljava/lang/String;II)V

    return-void

    .line 410
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setApplicationNotifyScreenOn(Ljava/lang/String;II)V
    .registers 5

    .line 542
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setApplicationNotifyScreenOn(Ljava/lang/String;II)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .registers 6
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1d

    const/high16 v0, -0x80000000

    if-le p4, v0, :cond_15

    const v0, 0x7fffffff

    if-ge p4, v0, :cond_15

    .line 237
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    return-void

    .line 235
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 597
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 490
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 4

    .line 516
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 623
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setHomeActivity(Landroid/content/ComponentName;I)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .line 104
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setHomeActivity(Landroid/content/ComponentName;I)V

    return-void
.end method
