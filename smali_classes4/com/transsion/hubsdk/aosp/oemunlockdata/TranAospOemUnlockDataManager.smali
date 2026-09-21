.class public Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/oemunlockdata/ITranOemUnlockDataManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospOemUnlockDataManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "com.transsion.oemunlockdata.OemUnlockDataManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpuId()Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    .line 37
    :try_start_1
    sget-object v0, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->sClassName:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getCpuId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_19

    .line 40
    const-string p0, ""

    return-object p0

    :catchall_17
    move-exception v0

    goto :goto_29

    :cond_19
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 44
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 46
    check-cast v0, Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_17

    return-object v0

    :cond_28
    return-object p0

    .line 50
    :goto_29
    sget-object v1, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCpuId fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public writeOemUnlockData(I[B)I
    .registers 8

    const/4 p0, -0x1

    .line 16
    :try_start_1
    sget-object v0, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->sClassName:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->sClassName:Ljava/lang/Class;

    const-string v2, "writeOemUnlockData"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, [B

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1a

    return p0

    :cond_1a
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_37

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    return p0

    :catchall_35
    move-exception p1

    goto :goto_38

    :cond_37
    return p0

    .line 29
    :goto_38
    sget-object p2, Lcom/transsion/hubsdk/aosp/oemunlockdata/TranAospOemUnlockDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeOemUnlockData fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
