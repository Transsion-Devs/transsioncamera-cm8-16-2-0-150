.class public Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranLockPatternUtils"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;


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
.method public getActivePasswordQuality(I)I
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getActivePasswordQuality(I)I

    move-result p0

    return p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 119
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutAttemptDeadline(I)J
    .registers 3

    .line 69
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getLockoutAttemptDeadline(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPasswordLength(JI)J
    .registers 5

    .line 140
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getPasswordLength(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .registers 3

    .line 81
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getPowerButtonInstantlyLocks(I)Z

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;
    .registers 2

    .line 124
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 125
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;

    :cond_11
    return-object p1

    .line 127
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;

    :cond_1d
    return-object p1
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .line 95
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSecure(I)Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 55
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public setAutoPinConfirm(ZI)V
    .registers 4

    .line 151
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->setAutoPinConfirm(ZI)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .line 109
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
