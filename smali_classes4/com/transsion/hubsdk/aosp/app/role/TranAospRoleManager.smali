.class public Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;,
        Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospRoleManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRemoteCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRoleManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMethodGetService:Ljava/lang/reflect/Method;

.field private mRoleManager:Landroid/app/role/RoleManager;

.field private mTranAospRemoteCallbackExt:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;


# direct methods
.method public static synthetic $r8$lambda$mx4W0MF7wM_PsJ5U5pWynKQY-bY(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 60
    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    .line 33
    const-string v0, "android.app.role.IRoleManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRoleManagerClass:Ljava/lang/Class;

    .line 34
    const-string v0, "android.os.RemoteCallback$OnResultListener"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRemoteCallbackClass:Ljava/lang/Class;

    .line 35
    const-string v0, "android.app.role.RoleManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sManagerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 42
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mContext:Landroid/content/Context;

    .line 43
    const-string v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mRoleManager:Landroid/app/role/RoleManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getTranAospRemoteCallbackExt()Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mTranAospRemoteCallbackExt:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;

    if-nez v0, :cond_b

    .line 137
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mTranAospRemoteCallbackExt:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;

    .line 139
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mTranAospRemoteCallbackExt:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;

    return-object p0
.end method


# virtual methods
.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    .line 49
    const-class v0, Ljava/lang/Integer;

    :try_start_2
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_97

    const-class v2, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 50
    :try_start_8
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getService"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 53
    :cond_16
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mMethodGetService:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    const-string v3, "role"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "queryLocalInterface"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    const-string v3, "android.app.role.IRoleManager"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_40

    :cond_3f
    const/4 p0, 0x0

    .line 59
    :goto_40
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 60
    new-instance v3, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 61
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRemoteCallbackClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v4, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRemoteCallbackClass:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;

    invoke-direct {v5, v3}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;-><init>(Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;)V

    invoke-static {v1, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    sget-object v3, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRoleHolderAsUser callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_96

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "addRoleHolderAsUser"

    const-class v5, Ljava/lang/Object;

    filled-new-array {v2, v2, v0, v0, v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_96} :catch_97

    :cond_96
    return-void

    :catch_97
    move-exception p0

    .line 70
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addRoleHolderAsUser fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addRoleHolderAsUserExt(Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V
    .registers 17

    .line 114
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getServiceOrThrow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 116
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sClassName:Ljava/lang/Class;

    const-string v3, "role"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    instance-of v2, v0, Landroid/os/IBinder;

    if-eqz v2, :cond_26

    .line 118
    move-object v1, v0

    check-cast v1, Landroid/os/IBinder;

    .line 120
    :cond_26
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRoleHolderAsUserExt iBinder :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRoleManagerClass:Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    invoke-static {v2, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 122
    sget-object v3, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sRoleManagerClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRoleHolderAsUserExt object :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_77

    .line 125
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->getTranAospRemoteCallbackExt()Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;

    move-result-object v4

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt;->addRoleHolderAsUserExt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V

    :cond_77
    return-void
.end method

.method public addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sManagerClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addRoleHolderFromController"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 80
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2b

    .line 81
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public getRoleHolders(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sManagerClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRoleHolders"

    invoke-static {v1, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mRoleManager:Landroid/app/role/RoleManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 103
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_3b

    .line 104
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3b
    return-object v0
.end method

.method public isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mRoleManager:Landroid/app/role/RoleManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/Executor;

    const-class v2, Ljava/util/function/Consumer;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isApplicationVisibleForRole"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mRoleManager:Landroid/app/role/RoleManager;

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 89
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->sManagerClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeRoleHolderFromController"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 92
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2b

    .line 93
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method
