.class public Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;
    }
.end annotation


# static fields
.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_LOADER_USAGE_STATS:I = 0x5f

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field private static final TAG:Ljava/lang/String; = "TranAppOpsManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;


# direct methods
.method public static synthetic $r8$lambda$LNX2wmMuPynoF6PxGEHbY2kygdA(Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 8

    if-eqz p0, :cond_5

    .line 143
    invoke-interface/range {p0 .. p7}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_5
    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkOp(IILjava/lang/String;)I
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 121
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->checkOp(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getOps(Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->getOps(Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOpsMode(Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;)I
    .registers 3

    .line 102
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->getOpsMode(Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;)I

    move-result p0

    return p0
.end method

.method public getPackageMode(IILjava/lang/String;)I
    .registers 5

    .line 171
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 172
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->getPackageMode(IILjava/lang/String;)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;
    .registers 2

    .line 187
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 188
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;

    :cond_11
    return-object p1

    .line 190
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;

    :cond_1d
    return-object p1
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 6

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method public setPackageMode(IILjava/lang/String;I)V
    .registers 6

    .line 157
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 158
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->setPackageMode(IILjava/lang/String;I)V

    :cond_f
    return-void
.end method

.method public startWatchingActive([ILcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;)V
    .registers 4

    .line 141
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;)V

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;->startWatchingActive([ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V

    return-void
.end method
