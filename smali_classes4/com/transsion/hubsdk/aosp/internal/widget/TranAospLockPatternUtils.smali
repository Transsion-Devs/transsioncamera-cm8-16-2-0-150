.class public Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospLockPatternUtils"

.field private static sClassName:Ljava/lang/Class;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .registers 7

    const/4 v0, 0x0

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 49
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 51
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_55

    .line 53
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getActivePasswordQuality"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 57
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_54

    .line 58
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_22

    return p0

    :cond_54
    return v0

    .line 62
    :goto_55
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivePasswordQuality fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 6

    const/4 v0, 0x0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 174
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 176
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    goto :goto_24

    :catch_22
    move-exception p0

    goto :goto_46

    .line 178
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getDevicePolicyManager"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 180
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 181
    instance-of v1, p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_45

    .line 182
    check-cast p0, Landroid/app/admin/DevicePolicyManager;
    :try_end_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_44} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_44} :catch_22
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_44} :catch_22

    return-object p0

    :cond_45
    return-object v0

    .line 185
    :goto_46
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevicePolicyManager fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .registers 8

    const-wide/16 v0, 0x0

    .line 128
    :try_start_2
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 129
    sget-object v2, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 131
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    goto :goto_25

    :catch_23
    move-exception p0

    goto :goto_56

    .line 133
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getLockoutAttemptDeadline"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 136
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 137
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_55

    .line 138
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_54} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_54} :catch_23
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_54} :catch_23

    return-wide p0

    :cond_55
    return-wide v0

    .line 142
    :goto_56
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockoutAttemptDeadline fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getPasswordLength(JI)J
    .registers 8

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    if-nez v0, :cond_20

    .line 194
    sget-object v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 196
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 198
    :cond_20
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPasswordLength"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 200
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4e} :catch_4f

    return-wide p0

    :catch_4f
    move-exception p0

    .line 203
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPasswordLength fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .registers 7

    const/4 v0, 0x0

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 151
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 153
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    goto :goto_24

    :catch_22
    move-exception p0

    goto :goto_55

    .line 155
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getPowerButtonInstantlyLocks"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 158
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 159
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_54

    .line 160
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_53} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_53} :catch_22
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_53} :catch_22

    return p0

    :cond_54
    return v0

    .line 164
    :goto_55
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPowerButtonInstantlyLocks fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 93
    sget-object v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 95
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 97
    :cond_20
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getString"

    const-class v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 99
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 100
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_65

    .line 101
    check-cast p0, Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-object p0

    :catchall_4e
    move-exception p0

    .line 104
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getString fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSecure(I)Z
    .registers 7

    const/4 v0, 0x0

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 71
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 73
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_55

    .line 75
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isSecure"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 78
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 79
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_54

    .line 80
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_22

    return p0

    :cond_54
    return v0

    .line 84
    :goto_55
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSecure fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setAutoPinConfirm(ZI)V
    .registers 7

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    if-nez v0, :cond_20

    .line 212
    sget-object v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 214
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 216
    :cond_20
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAutoPinConfirm"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 218
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_47} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_47} :catch_48
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_47} :catch_48

    :cond_47
    return-void

    :catch_48
    move-exception p0

    .line 221
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAutoPinConfirm fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 112
    const-class v0, Ljava/lang/String;

    :try_start_2
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 113
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 115
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 117
    :cond_22
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setString"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0, v4}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 119
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception p0

    .line 121
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setString fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
