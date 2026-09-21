.class public Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospColorDisplayManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mInstanceObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "android.hardware.display.ColorDisplayManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->getInstanceObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    return-void
.end method

.method private getInstanceObject()Ljava/lang/Object;
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    if-nez v0, :cond_2c

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    :try_start_e
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_2c

    :catch_15
    move-exception v0

    .line 135
    sget-object v1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newInstance fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getMaximumColorTemperature(Landroid/content/Context;)I
    .registers 5

    .line 78
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMaximumColorTemperature"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_23

    .line 82
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumColorTemperature(Landroid/content/Context;)I
    .registers 5

    .line 67
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMinimumColorTemperature"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 70
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_23

    .line 71
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public getNightDisplayColorTemperature()I
    .registers 5

    .line 89
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getNightDisplayColorTemperature"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 92
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 93
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isNightDisplayActivated()Z
    .registers 5

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isNightDisplayActivated"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 37
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isNightDisplayAvailable(Landroid/content/Context;)Z
    .registers 5

    .line 56
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isNightDisplayAvailable"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_23

    .line 60
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    return-void
.end method

.method public setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    .registers 14

    .line 113
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v4, v2

    move-object v5, v2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setEyeCareEnabled"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    .line 115
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 5

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setNightDisplayActivated"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 48
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 49
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 5

    .line 100
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setNightDisplayColorTemperature"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 103
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 104
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method
