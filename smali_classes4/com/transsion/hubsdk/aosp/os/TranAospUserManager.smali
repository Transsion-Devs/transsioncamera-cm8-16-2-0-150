.class public Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospUserManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sUserInfoClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstanceObject:Ljava/lang/Object;

.field private mMethodGet:Ljava/lang/reflect/Method;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "android.os.UserManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sClassName:Ljava/lang/Class;

    .line 31
    const-string v0, "android.content.pm.UserInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    .line 34
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    .line 38
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public canAddMoreManagedProfiles(IZ)Z
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "canAddMoreManagedProfiles"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 178
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_31

    .line 179
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;I)Z
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "canAddMoreProfilesToUser"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 167
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2d

    .line 168
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public createProfile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 7

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 404
    iget-object p3, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/Set;

    filled-new-array {v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createProfile"

    invoke-static {p3, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 405
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0
.end method

.method public createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 16

    .line 522
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createProfileForUser"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 524
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 525
    new-instance p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    if-nez p0, :cond_30

    return-object p1

    .line 530
    :cond_30
    :try_start_30
    sget-object p2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string p3, "id"

    invoke-static {p2, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 531
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    .line 533
    sget-object p3, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string p4, "flags"

    invoke-static {p3, p4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    .line 534
    invoke-virtual {p3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    .line 536
    sget-object p4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string p5, "name"

    invoke-static {p4, p5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p4

    .line 537
    invoke-virtual {p4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 539
    sget-object p5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v0, "iconPath"

    invoke-static {p5, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p5

    .line 540
    invoke-virtual {p5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 542
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v1, "userType"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v2, "serialNumber"

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 546
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 548
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v3, "creationTime"

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 549
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 551
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v5, "partial"

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 552
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 554
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v6, "preCreated"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 555
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 557
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v7, "lastLoggedInFingerprint"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 558
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 560
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v8, "profileBadge"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 561
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 563
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v9, "restrictedProfileParentId"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 564
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    .line 566
    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 567
    iput p3, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 568
    iput-object p4, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 569
    iput-object p5, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 570
    iput-object v0, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 571
    iput v1, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 572
    iput-wide v2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 573
    iput-boolean v4, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 574
    iput-boolean v5, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 575
    iput-object v6, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 576
    iput v7, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 577
    iput p0, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 578
    const-string p0, "android.os.usertype.profile.DUAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setDualProfile(Z)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_e9} :catch_ea

    return-object p1

    .line 580
    :catch_ea
    sget-object p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    const-string p2, "createProfileForUser fail."

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 16

    .line 87
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createProfileForUserEvenWhenDisallowed"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    new-instance p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    if-nez p0, :cond_30

    return-object p1

    .line 96
    :cond_30
    :try_start_30
    sget-object p2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string p3, "id"

    invoke-static {p2, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 97
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    .line 99
    sget-object p3, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string p4, "flags"

    invoke-static {p3, p4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    .line 100
    invoke-virtual {p3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    .line 102
    sget-object p4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string p5, "name"

    invoke-static {p4, p5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p4

    .line 103
    invoke-virtual {p4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 105
    sget-object p5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v0, "iconPath"

    invoke-static {p5, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p5

    .line 106
    invoke-virtual {p5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v1, "userType"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v2, "serialNumber"

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 114
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v3, "creationTime"

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 117
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v5, "partial"

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 118
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 120
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v6, "preCreated"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 121
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 123
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v7, "lastLoggedInFingerprint"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 124
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 126
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v8, "profileBadge"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 127
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 129
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v9, "restrictedProfileParentId"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 130
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    .line 132
    iput p2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 133
    iput p3, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 134
    iput-object p4, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 135
    iput-object p5, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 136
    iput-object v0, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 137
    iput v1, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 138
    iput-wide v2, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 139
    iput-boolean v4, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 140
    iput-boolean v5, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 141
    iput-object v6, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 142
    iput v7, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 143
    iput p0, p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 144
    const-string p0, "android.os.usertype.profile.DUAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setDualProfile(Z)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_e9} :catch_ea

    return-object p1

    .line 146
    :catch_ea
    sget-object p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    const-string p2, "createProfileForUserEvenWhenDisallowed fail."

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getAllProfiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getAllProfiles"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 517
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 6

    .line 43
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    if-nez v0, :cond_18

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_18
    const/4 v0, 0x0

    .line 48
    :try_start_19
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    if-nez v1, :cond_30

    .line 49
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mMethodGet:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sClassName:Ljava/lang/Class;

    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_75

    .line 51
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCredentialOwnerProfile"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 54
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_5d

    .line 55
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_5e

    :cond_5d
    move p0, v0

    .line 57
    :goto_5e
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialOwnerProfile user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_19 .. :try_end_74} :catchall_2e

    return p0

    .line 60
    :goto_75
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialOwnerProfile fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getProfileIdsWithDisabled(I)[I
    .registers 6

    const/4 v0, 0x0

    .line 69
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getProfileIdsWithDisabled"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 73
    instance-of p1, p0, [I

    if-eqz p1, :cond_36

    .line 74
    check-cast p0, [I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_34

    return-object p0

    :catchall_34
    move-exception p0

    goto :goto_37

    :cond_36
    return-object v0

    .line 79
    :goto_37
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileIdsWithDisabled fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getProfiles(I)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 186
    iget-object v1, v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getProfiles"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 187
    iget-object v0, v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4a

    .line 191
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 192
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 195
    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_50
    move-object v0, v2

    goto/16 :goto_159

    .line 198
    :cond_53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_58
    if-ge v3, v0, :cond_50

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 200
    :try_start_60
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 201
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 203
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v7, "flags"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 204
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 206
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v8, "name"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 207
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 209
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v9, "iconPath"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 210
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 212
    sget-object v9, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v10, "userType"

    invoke-static {v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 213
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 215
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v11, "serialNumber"

    invoke-static {v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 216
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 218
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v12, "creationTime"

    invoke-static {v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 219
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v11

    .line 221
    sget-object v13, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v14, "partial"

    invoke-static {v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 222
    invoke-virtual {v13, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    .line 224
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v15, "preCreated"

    invoke-static {v14, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 225
    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    .line 227
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_d4} :catch_146

    move/from16 p0, v0

    :try_start_d6
    const-string v0, "lastLoggedInFingerprint"

    invoke-static {v15, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e4} :catch_143

    move-object/from16 p1, v1

    :try_start_e6
    const-string v1, "profileBadge"

    invoke-static {v15, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 233
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f2} :catch_13f

    move/from16 v16, v3

    :try_start_f4
    const-string v3, "restrictedProfileParentId"

    invoke-static {v15, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 236
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_100} :catch_13d

    move-object/from16 v17, v2

    :try_start_102
    const-string v2, "profileGroupId"

    invoke-static {v15, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 237
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 239
    new-instance v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {v4}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 240
    iput v5, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 241
    iput v6, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 242
    iput-object v7, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 243
    iput-object v8, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 244
    iput-object v9, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 245
    iput v10, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 246
    iput-wide v11, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 247
    iput-boolean v13, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 248
    iput-boolean v14, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 249
    iput-object v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 250
    iput v1, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 251
    iput v3, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 252
    iput v2, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    .line 253
    const-string v0, "android.os.usertype.profile.DUAL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setDualProfile(Z)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_134} :catch_13a

    move-object/from16 v0, v17

    .line 254
    :try_start_136
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_149

    goto :goto_150

    :catch_13a
    move-object/from16 v0, v17

    goto :goto_149

    :catch_13d
    move-object v0, v2

    goto :goto_149

    :catch_13f
    :goto_13f
    move-object v0, v2

    move/from16 v16, v3

    goto :goto_149

    :catch_143
    :goto_143
    move-object/from16 p1, v1

    goto :goto_13f

    :catch_146
    move/from16 p0, v0

    goto :goto_143

    .line 256
    :catch_149
    :goto_149
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    const-string v2, "getProfiles fail."

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_150
    move-object/from16 v1, p1

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v0, p0

    goto/16 :goto_58

    :goto_159
    return-object v0
.end method

.method public getUserInfo(I)Lcom/transsion/hubsdk/api/os/TranUserInfo;
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUserInfo"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 276
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 277
    new-instance p1, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    if-nez p0, :cond_28

    return-object p1

    .line 281
    :cond_28
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 282
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_46
    :try_start_46
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 288
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v2, "flags"

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 289
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 291
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 292
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 294
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_73

    .line 295
    check-cast p0, Ljava/lang/String;

    goto :goto_74

    :catch_71
    move-exception p0

    goto :goto_7e

    :cond_73
    const/4 p0, 0x0

    .line 297
    :goto_74
    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setId(I)V

    .line 298
    invoke-virtual {p1, v1}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setFlags(I)V

    .line 299
    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/os/TranUserInfo;->setName(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7d} :catch_71

    return-object p1

    .line 301
    :goto_7e
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserInfo fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getUsers()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 308
    iget-object v1, v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getUsers"

    invoke-static {v1, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 309
    iget-object v0, v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_41

    .line 313
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 314
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 317
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_47
    move-object v0, v3

    goto/16 :goto_17c

    .line 320
    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4e
    if-ge v2, v0, :cond_47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 322
    :try_start_56
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 323
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 325
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v7, "flags"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 326
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 328
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v8, "name"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 329
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 331
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v9, "iconPath"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 332
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 334
    sget-object v9, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v10, "userType"

    invoke-static {v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 335
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 337
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v11, "serialNumber"

    invoke-static {v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 338
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 340
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v12, "creationTime"

    invoke-static {v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 341
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v11

    .line 343
    sget-object v13, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v14, "partial"

    invoke-static {v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 344
    invoke-virtual {v13, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    .line 346
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v15, "preCreated"

    invoke-static {v14, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 347
    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    .line 349
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_ca} :catch_169

    move/from16 p0, v0

    :try_start_cc
    const-string v0, "lastLoggedInFingerprint"

    invoke-static {v15, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_da} :catch_166

    move-object/from16 v16, v1

    :try_start_dc
    const-string v1, "profileBadge"

    invoke-static {v15, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 355
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e8} :catch_163

    move/from16 v17, v2

    :try_start_ea
    const-string v2, "restrictedProfileParentId"

    invoke-static {v15, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 356
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 358
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f6} :catch_161

    move-object/from16 v18, v3

    :try_start_f8
    const-string v3, "profileGroupId"

    invoke-static {v15, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 361
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    move/from16 v19, v3

    const-string v3, "lastLoggedInTime"

    invoke-static {v15, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move v15, v2

    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    move/from16 v20, v15

    .line 364
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    move-wide/from16 v21, v2

    const-string v2, "convertedFromPreCreated"

    invoke-static {v15, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 367
    sget-object v3, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v15, "guestToRemove"

    invoke-static {v3, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 370
    new-instance v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {v4}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 371
    iput v5, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 372
    iput v6, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 373
    iput-object v7, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 374
    iput-object v8, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 375
    iput-object v9, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 376
    iput v10, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 377
    iput-wide v11, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 378
    iput-boolean v13, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 379
    iput-boolean v14, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 380
    iput-object v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 381
    iput v1, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    move/from16 v15, v20

    .line 382
    iput v15, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    move/from16 v0, v19

    .line 383
    iput v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    move-wide/from16 v0, v21

    .line 384
    iput-wide v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInTime:J

    .line 385
    iput-boolean v2, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mConvertedFromPreCreated:Z

    .line 386
    iput-boolean v3, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mGuestToRemove:Z
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_158} :catch_15e

    move-object/from16 v0, v18

    .line 387
    :try_start_15a
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15d} :catch_16c

    goto :goto_173

    :catch_15e
    move-object/from16 v0, v18

    goto :goto_16c

    :catch_161
    :goto_161
    move-object v0, v3

    goto :goto_16c

    :catch_163
    :goto_163
    move/from16 v17, v2

    goto :goto_161

    :catch_166
    :goto_166
    move-object/from16 v16, v1

    goto :goto_163

    :catch_169
    move/from16 p0, v0

    goto :goto_166

    .line 389
    :catch_16c
    :goto_16c
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    const-string v2, "getProfiles fail."

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_173
    move-object v3, v0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v0, p0

    goto/16 :goto_4e

    :goto_17c
    return-object v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 421
    iget-object v1, v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getUsers"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 422
    iget-object v0, v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4a

    .line 426
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 427
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 430
    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_50
    move-object v1, v2

    goto/16 :goto_19e

    .line 433
    :cond_53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v3, :cond_50

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    .line 435
    :try_start_60
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v6, "id"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 438
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v7, "flags"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 439
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 441
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v8, "name"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 442
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 444
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v9, "iconPath"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 445
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 447
    sget-object v9, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v10, "userType"

    invoke-static {v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 448
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 450
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v11, "serialNumber"

    invoke-static {v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 451
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 453
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v12, "creationTime"

    invoke-static {v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 454
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v11

    .line 456
    sget-object v13, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v14, "partial"

    invoke-static {v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 457
    invoke-virtual {v13, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    .line 459
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v15, "preCreated"

    invoke-static {v14, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 460
    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    .line 462
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_d4} :catch_17b

    move-object/from16 p0, v1

    :try_start_d6
    const-string v1, "lastLoggedInFingerprint"

    invoke-static {v15, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 463
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e4} :catch_176

    move/from16 p1, v3

    :try_start_e6
    const-string v3, "profileBadge"

    invoke-static {v15, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 466
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 468
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f2} :catch_171

    move/from16 v16, v5

    :try_start_f4
    const-string v5, "restrictedProfileParentId"

    invoke-static {v15, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 469
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 471
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_100} :catch_16e

    move-object/from16 v17, v2

    :try_start_102
    const-string v2, "profileGroupId"

    invoke-static {v15, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 472
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 474
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    move/from16 v18, v2

    const-string v2, "lastLoggedInTime"

    invoke-static {v15, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move v15, v3

    .line 475
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    move/from16 v19, v15

    .line 477
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    move-wide/from16 v20, v2

    const-string v2, "convertedFromPreCreated"

    invoke-static {v15, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 478
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 480
    sget-object v3, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->sUserInfoClassName:Ljava/lang/Class;

    const-string v15, "guestToRemove"

    invoke-static {v3, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 483
    new-instance v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;

    invoke-direct {v4}, Lcom/transsion/hubsdk/api/os/TranUserInfo;-><init>()V

    .line 484
    iput v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 485
    iput v6, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 486
    iput-object v7, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 487
    iput-object v8, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 488
    iput-object v9, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 489
    iput v10, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 490
    iput-wide v11, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 491
    iput-boolean v13, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 492
    iput-boolean v14, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 493
    iput-object v1, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    move/from16 v15, v19

    .line 494
    iput v15, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 495
    iput v5, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    move/from16 v0, v18

    .line 496
    iput v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    move-wide/from16 v0, v20

    .line 497
    iput-wide v0, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInTime:J

    .line 498
    iput-boolean v2, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mConvertedFromPreCreated:Z

    .line 499
    iput-boolean v3, v4, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mGuestToRemove:Z
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_162} :catch_16a

    move-object/from16 v1, v17

    .line 500
    :try_start_164
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_168

    goto :goto_195

    :catch_168
    move-exception v0

    goto :goto_17f

    :catch_16a
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_17f

    :catch_16e
    move-exception v0

    move-object v1, v2

    goto :goto_17f

    :catch_171
    move-exception v0

    move-object v1, v2

    :goto_173
    move/from16 v16, v5

    goto :goto_17f

    :catch_176
    move-exception v0

    :goto_177
    move-object v1, v2

    move/from16 p1, v3

    goto :goto_173

    :catch_17b
    move-exception v0

    move-object/from16 p0, v1

    goto :goto_177

    .line 502
    :goto_17f
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsers fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_195
    move/from16 v3, p1

    move-object v2, v1

    move/from16 v0, v16

    move-object/from16 v1, p0

    goto/16 :goto_58

    :goto_19e
    return-object v1
.end method

.method public isAdminUser()Z
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isAdminUser"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 511
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isManagedProfile(I)Z
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isManagedProfile"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 411
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 413
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2b

    .line 414
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public isUserAdmin(I)Z
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isUserAdmin"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 265
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 267
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2b

    .line 268
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeUserEvenWhenDisallowed"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 156
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2b

    .line 157
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mInstanceObject:Ljava/lang/Object;

    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 8

    .line 397
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/os/UserHandle;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUserRestriction"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 398
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
