.class public Lcom/transsion/hubsdk/api/os/TranUserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAGS_ARGUMENT_EXCEPTION:Ljava/lang/String; = "flags is wrong"

.field public static final KEY_ARGUMENT_EXCEPTION:Ljava/lang/String; = "key should not be null"

.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranUserManager"

.field public static final USERID_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userId is wrong"

.field public static final USERTYPE_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userType is null"

.field public static final USER_TYPE_PROFILE_CLONE:Ljava/lang/String; = "android.os.usertype.profile.CLONE"

.field public static final USER_TYPE_PROFILE_MANAGED:Ljava/lang/String; = "android.os.usertype.profile.MANAGED"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubUserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAddMoreManagedProfiles(IZ)Z
    .registers 4

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 161
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->canAddMoreManagedProfiles(IZ)Z

    move-result p0

    return p0

    .line 159
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;I)Z
    .registers 4

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const/high16 v0, -0x80000000

    if-le p2, v0, :cond_1a

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_1a

    .line 145
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->canAddMoreProfilesToUser(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 143
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/os/UserHandle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_1b

    .line 269
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->createProfile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 267
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 7

    if-eqz p2, :cond_d

    .line 351
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;

    move-result-object p0

    return-object p0

    .line 349
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userType can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const/high16 v0, -0x80000000

    if-le p4, v0, :cond_1a

    const v0, 0x7fffffff

    if-ge p4, v0, :cond_1a

    .line 110
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getAllProfiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 3

    .line 69
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getCredentialOwnerProfile(I)I

    move-result p0

    return p0
.end method

.method public getProfileIdsWithDisabled(I)[I
    .registers 3

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getProfileIdsWithDisabled(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getProfiles(I)Ljava/util/List;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 184
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 182
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;
    .registers 3

    .line 44
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 45
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranUserManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUserManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    :cond_18
    return-object p1

    .line 48
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranUserManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospUserManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;

    :cond_2b
    return-object p1
.end method

.method public getUserInfo(I)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_10

    .line 198
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getUserInfo(I)Lcom/transsion/hubsdk/api/os/TranUserInfo;

    move-result-object p0

    return-object p0

    .line 196
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAdminUser()Z
    .registers 2

    .line 325
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method public isManagedProfile(I)Z
    .registers 3

    .line 289
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->isManagedProfile(I)Z

    move-result p0

    return p0
.end method

.method public isUserAdmin(I)Z
    .registers 3

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_10

    .line 213
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->isUserAdmin(I)Z

    move-result p0

    return p0

    .line 211
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 128
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->removeUserEvenWhenDisallowed(I)Z

    move-result p0

    return p0

    .line 126
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_c

    .line 252
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void

    .line 250
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
