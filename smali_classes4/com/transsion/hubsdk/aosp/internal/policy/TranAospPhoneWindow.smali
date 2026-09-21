.class public Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospPhoneWindow"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mPhoneWindow:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "com.android.internal.policy.PhoneWindow"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_3
    sget-object v0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception p0

    .line 36
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranAospPhoneWindow fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDecorView()Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 93
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->sClassName:Ljava/lang/Class;

    const-string v2, "getDecorView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 94
    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 98
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_25

    .line 99
    check-cast p0, Landroid/view/View;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_26

    :cond_25
    return-object v0

    .line 104
    :goto_26
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDecorView fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-object v0
.end method

.method public requestFeature(I)Z
    .registers 6

    const/4 v0, 0x0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    if-eqz v1, :cond_4b

    .line 58
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->sClassName:Ljava/lang/Class;

    const-string v2, "requestFeature"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 59
    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 61
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 63
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_34

    .line 64
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    return p0

    :catchall_32
    move-exception p0

    goto :goto_35

    :cond_34
    return v0

    .line 69
    :goto_35
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFeature fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return v0
.end method

.method public setBackgroundDrawableResource(I)V
    .registers 5

    .line 76
    const-string v0, "android.view.Window"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    :try_start_6
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    if-eqz v1, :cond_27

    .line 79
    const-string v1, "setBackgroundDrawableResource"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    .line 85
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundDrawableResource fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    if-eqz v0, :cond_23

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->sClassName:Ljava/lang/Class;

    const-string v1, "setWindowManager"

    const-class v2, Landroid/view/WindowManager;

    const-class v3, Landroid/os/IBinder;

    const-class v4, Ljava/lang/String;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->mPhoneWindow:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    .line 50
    sget-object p1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setWindowManager fail"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
