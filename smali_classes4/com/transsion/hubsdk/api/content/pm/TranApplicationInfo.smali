.class public Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ARGUMENT_EXCEPTION:Ljava/lang/String; = "application info should not be null"

.field private static final TAG:Ljava/lang/String; = "TranApplicationInfo"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospApplicationInfo;

.field private mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconRes(Landroid/content/pm/ApplicationInfo;)I
    .registers 3

    .line 119
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->getIconRes(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;
    .registers 3

    .line 104
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 105
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranThubApplicationInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;

    :cond_18
    return-object p1

    .line 108
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranAospApplicationInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospApplicationInfo;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospApplicationInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospApplicationInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospApplicationInfo;

    :cond_2b
    return-object p1
.end method

.method public isDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 144
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 142
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 99
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 97
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "application info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPartiallyDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 157
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isPartiallyDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 155
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPrivilegedApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isPrivilegedApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 129
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isProduct(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isProduct(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 41
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "application info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSignedWithPlatformKey(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isSignedWithPlatformKey(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 55
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "application info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 71
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 69
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "application info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSystemExt(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 85
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranApplicationInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;->isSystemExt(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    .line 83
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "application info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
