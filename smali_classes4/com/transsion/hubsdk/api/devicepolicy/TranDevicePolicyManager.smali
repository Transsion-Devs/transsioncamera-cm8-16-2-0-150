.class public Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranDevicePolicyManager"

.field public static final USERID_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userId is wrong"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/devicepolicy/TranAospDevicePolicyManager;

.field private mThubService:Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    .line 81
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .registers 2

    .line 100
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 4

    .line 164
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getProfileOwner()Landroid/content/ComponentName;
    .registers 2

    .line 110
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 3

    .line 175
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p1, :cond_d

    .line 147
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 145
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "user is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProfileOwnerWithContext(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p1, :cond_d

    .line 135
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->getProfileOwnerWithContext(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 133
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Param context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;
    .registers 3

    .line 85
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 86
    sget-object p1, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDevicePolicyManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->mThubService:Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->mThubService:Lcom/transsion/hubsdk/core/devicepolicy/TranThubDevicePolicyManager;

    :cond_18
    return-object p1

    .line 89
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDevicePolicyManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->mAospService:Lcom/transsion/hubsdk/aosp/devicepolicy/TranAospDevicePolicyManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/devicepolicy/TranAospDevicePolicyManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/devicepolicy/TranAospDevicePolicyManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->mAospService:Lcom/transsion/hubsdk/aosp/devicepolicy/TranAospDevicePolicyManager;

    :cond_2b
    return-object p1
.end method

.method public isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFinancedRestrictDevice()Z
    .registers 2

    .line 121
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->isFinancedRestrictDevice()Z

    move-result p0

    return p0
.end method

.method public setDualProfileEnabled(Landroid/content/ComponentName;I)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_13

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_13

    .line 54
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/devicepolicy/TranDevicePolicyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;->setDualProfileEnabled(Landroid/content/ComponentName;I)V

    return-void

    .line 52
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
