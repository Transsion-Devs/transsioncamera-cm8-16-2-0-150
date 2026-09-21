.class public Lcom/transsion/hubsdk/core/os/TranThubUserManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubUserManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/os/ITranUserManager;


# direct methods
.method public static synthetic $r8$lambda$1uowQYYEYFnrFldG_COejILwpWk(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$getUserInfo$6(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7Ml_L_ZxTmDTPjdHYD6x_piiFIw(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$removeUserEvenWhenDisallowed$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BXooKpo_j7oz9y6be4mnVIpxOSU(Lcom/transsion/hubsdk/core/os/TranThubUserManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$isAdminUser$11()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bm9rmse08pv0Km-n5C3sf08r76E(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$isUserAdmin$5(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D5ATIJYwM1EEQwUrqmEbP_HOTJQ(Lcom/transsion/hubsdk/core/os/TranThubUserManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$getUsers$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EpDe7XO8iCR2n75lvCTVotwhWP0(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$getUsers$10(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H0DORDgAYv6O34WO4kuk4pwHMsw(Lcom/transsion/hubsdk/core/os/TranThubUserManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$getAllProfiles$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KxJxDSamDC9hcLRVXzqgE_cG1n0(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$getProfiles$4(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R1Xt9xaHqpDjhR-t4PntK1YS6qs(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$createProfileForUserEvenWhenDisallowed$0(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bJXERxuOhxyrgzqZ5IT1MMaLvs0(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$canAddMoreProfilesToUser$2(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h0zo0fbssMp8BwFZhCf7avI0utQ(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$isManagedProfile$9(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k1q0UlB8lpemQrn38n3jVNjVpwY(Lcom/transsion/hubsdk/core/os/TranThubUserManager;IZ)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$canAddMoreManagedProfiles$3(IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wAIcG6rddl6HROsXSSoQ11u8NDA(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->lambda$setUserRestriction$8(Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "user_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranUserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    return-void
.end method

.method private synthetic lambda$canAddMoreManagedProfiles$3(IZ)Ljava/lang/Object;
    .registers 3

    .line 118
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_d

    .line 119
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/os/ITranUserManager;->canAddMoreManagedProfiles(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 121
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$canAddMoreProfilesToUser$2(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 106
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_d

    .line 107
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/os/ITranUserManager;->canAddMoreProfilesToUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 109
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$createProfileForUserEvenWhenDisallowed$0(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 65
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_9

    .line 66
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/os/ITranUserManager;->createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAllProfiles$12()Ljava/lang/Object;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_9

    .line 313
    invoke-interface {p0}, Lcom/transsion/hubsdk/os/ITranUserManager;->getAllProfiles()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getProfiles$4(I)Ljava/lang/Object;
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_9

    .line 131
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getUserInfo$6(I)Ljava/lang/Object;
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_9

    .line 177
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getUserInfo(I)Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getUsers$10(Z)Ljava/lang/Object;
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_9

    .line 266
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getUsersExt(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getUsers$7()Ljava/lang/Object;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_9

    .line 196
    invoke-interface {p0}, Lcom/transsion/hubsdk/os/ITranUserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isAdminUser$11()Ljava/lang/Object;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_d

    .line 301
    invoke-interface {p0}, Lcom/transsion/hubsdk/os/ITranUserManager;->isAdminUser()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isManagedProfile$9(I)Ljava/lang/Object;
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_d

    .line 254
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->isManagedProfile(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 256
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isUserAdmin$5(I)Ljava/lang/Object;
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_d

    .line 165
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->isUserAdmin(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 167
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$removeUserEvenWhenDisallowed$1(I)Ljava/lang/Object;
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_d

    .line 95
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 97
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setUserRestriction$8(Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/lang/Object;
    .registers 4

    .line 231
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_7

    .line 232
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/os/ITranUserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canAddMoreManagedProfiles(IZ)Z
    .registers 5

    .line 117
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;IZ)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 123
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canAddMoreManagedProfiles result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;I)Z
    .registers 5

    .line 105
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;I)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 111
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canAddMoreProfilesToUser result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public createProfile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 4

    .line 241
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_20

    .line 242
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/os/ITranUserManager;->createProfile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 245
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createProfile fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 8

    const/4 v1, 0x0

    .line 324
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    if-eqz p0, :cond_61

    .line 325
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/os/ITranUserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v1

    .line 329
    :cond_c
    new-instance p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 330
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->id:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 331
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->flags:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 332
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->name:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 333
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->iconPath:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 334
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->userType:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 335
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->serialNumber:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 336
    iget-wide p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->creationTime:J

    iput-wide p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 337
    iget-boolean p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->partial:Z

    iput-boolean p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 338
    iget-boolean p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->preCreated:Z

    iput-boolean p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 339
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 340
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileBadge:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 341
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->restrictedProfileParentId:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 342
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->isDualProfile()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setDualProfile(Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_48} :catch_49

    return-object p1

    :catch_49
    move-exception v0

    move-object p0, v0

    .line 346
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createProfile fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-object v1
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 14

    .line 64
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    .line 70
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createProfileForUserEvenWhenDisallowed tranUserInfo:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_32

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_32
    new-instance p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 75
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->id:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 76
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->flags:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 77
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->name:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 78
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->iconPath:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 79
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->userType:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 80
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->serialNumber:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 81
    iget-wide p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->creationTime:J

    iput-wide p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 82
    iget-boolean p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->partial:Z

    iput-boolean p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 83
    iget-boolean p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->preCreated:Z

    iput-boolean p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 84
    iget-object p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 85
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileBadge:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 86
    iget p2, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->restrictedProfileParentId:I

    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 87
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->isDualProfile()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setDualProfile(Z)V

    return-object p1
.end method

.method public getAllProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 317
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    const-string v1, "getAllProfiles"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5

    .line 37
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 41
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getCredentialOwnerProfile(I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 43
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialOwnerProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getProfileIdsWithDisabled(I)[I
    .registers 5

    .line 50
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 54
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 56
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialOwnerProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getProfiles(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 135
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProfiles mTranUserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2c

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_2c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    .line 141
    new-instance v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 142
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->id:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 143
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->flags:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 144
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 145
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->iconPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 146
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->userType:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 147
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileGroupId:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    .line 148
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->serialNumber:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 149
    iget-wide v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->creationTime:J

    iput-wide v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 150
    iget-boolean v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->partial:Z

    iput-boolean v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 151
    iget-boolean v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->preCreated:Z

    iput-boolean v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 152
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 153
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileBadge:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 154
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->restrictedProfileParentId:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 155
    invoke-virtual {v0}, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->isDualProfile()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setDualProfile(Z)V

    .line 156
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_85
    return-object p1
.end method

.method public getUserInfo(I)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 4

    .line 175
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    .line 181
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserInfo tranUserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2c

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_2c
    new-instance p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 186
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setId(I)V

    .line 187
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setFlags(I)V

    .line 188
    iget-object p0, p0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setName(Ljava/lang/String;)V

    return-object p1
.end method

.method public getUsers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 200
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsers mTranUserInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_30

    goto :goto_89

    .line 205
    :cond_30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    .line 206
    new-instance v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 207
    iget-object v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 208
    iget-object v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->iconPath:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 209
    iget v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->id:I

    iput v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 210
    iget v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->flags:I

    iput v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 211
    iget-object v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->userType:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 212
    iget v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->serialNumber:I

    iput v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 213
    iget-wide v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->creationTime:J

    iput-wide v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 214
    iget-object v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 215
    iget-boolean v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->partial:Z

    iput-boolean v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 216
    iget-boolean v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->preCreated:Z

    iput-boolean v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 217
    iget-wide v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInTime:J

    iput-wide v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInTime:J

    .line 218
    iget-boolean v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->convertedFromPreCreated:Z

    iput-boolean v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mConvertedFromPreCreated:Z

    .line 219
    iget v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileGroupId:I

    iput v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    .line 220
    iget v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->restrictedProfileParentId:I

    iput v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 221
    iget-boolean v3, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->guestToRemove:Z

    iput-boolean v3, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mGuestToRemove:Z

    .line 222
    iget v1, v1, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileBadge:I

    iput v1, v2, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_89
    :goto_89
    return-object v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Z)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 270
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    const-string v0, "getUsers"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_79

    .line 273
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;

    .line 274
    new-instance v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 275
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 276
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->iconPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 277
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->id:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 278
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->flags:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 279
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->userType:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 280
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->serialNumber:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 281
    iget-wide v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->creationTime:J

    iput-wide v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 282
    iget-object v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 283
    iget-boolean v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->partial:Z

    iput-boolean v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 284
    iget-boolean v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->preCreated:Z

    iput-boolean v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 285
    iget-wide v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->lastLoggedInTime:J

    iput-wide v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInTime:J

    .line 286
    iget-boolean v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->convertedFromPreCreated:Z

    iput-boolean v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mConvertedFromPreCreated:Z

    .line 287
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileGroupId:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    .line 288
    iget v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->restrictedProfileParentId:I

    iput v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 289
    iget-boolean v2, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->guestToRemove:Z

    iput-boolean v2, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mGuestToRemove:Z

    .line 290
    iget v0, v0, Lcom/transsion/hubsdk/content/pm/TranUserInfo;->profileBadge:I

    iput v0, v1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 291
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_79
    return-object p1
.end method

.method public isAdminUser()Z
    .registers 4

    .line 299
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 305
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdminUser result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isManagedProfile(I)Z
    .registers 4

    .line 252
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 258
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isManagedProfile result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isUserAdmin(I)Z
    .registers 4

    .line 163
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 169
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUserAdmin result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 4

    .line 93
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 99
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUserEvenWhenDisallowed result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/os/ITranUserManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 6

    .line 230
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string p0, "user_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
