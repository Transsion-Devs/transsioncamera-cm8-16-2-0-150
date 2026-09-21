.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAppOpsService"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sIAppOpsServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sPackageOps:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mMethodName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "android.app.AppOpsManager$PackageOps"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sPackageOps:Ljava/lang/Class;

    .line 38
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sClassName:Ljava/lang/Class;

    .line 39
    const-string v0, "com.android.internal.app.IAppOpsService$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sIAppOpsServiceClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mMethodName:Ljava/lang/reflect/Method;

    .line 43
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_18

    .line 44
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_18
    return-void
.end method

.method private getIntegerObj(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_7

    .line 136
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_7

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private getListObj(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_7

    .line 120
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_7

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStringObj(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_7

    .line 128
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_7

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkOp(IILjava/lang/String;)I
    .registers 7

    .line 58
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkOp"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOps(Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;->getOps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 66
    const-string v1, "TranAospAppOpsService"

    iget-object v2, v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, [I

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOpsForPackage"

    invoke-static {v2, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mMethodName:Ljava/lang/reflect/Method;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :try_start_21
    iget-object v3, v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 72
    iget-object v3, v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mMethodName:Ljava/lang/reflect/Method;

    iget-object v5, v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    invoke-direct {v0, v3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->getListObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 74
    sget-object v5, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sPackageOps:Ljava/lang/Class;

    const-string v6, "mPackageName"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 75
    sget-object v6, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sPackageOps:Ljava/lang/Class;

    const-string v7, "mUid"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 76
    sget-object v7, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sPackageOps:Ljava/lang/Class;

    const-string v8, "getOps"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-static {v7, v8, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    move-object v10, v8

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 78
    sget-object v11, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sPackageOps:Ljava/lang/Class;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tranPackageOps object :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :catchall_89
    move-exception v0

    goto :goto_f9

    .line 81
    :cond_8b
    :goto_8b
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 83
    invoke-direct {v0, v11}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->getStringObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 84
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 86
    invoke-direct {v0, v12}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->getIntegerObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 87
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {v7, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 89
    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 90
    check-cast v10, Ljava/util/List;

    .line 91
    const-string v14, "android.app.AppOpsManager$OpEntry"

    invoke-static {v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 92
    const-string v15, "getMode"

    new-array v8, v9, [Ljava/lang/Class;

    invoke-static {v14, v15, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 93
    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 94
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_cc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_eb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    .line 95
    invoke-virtual {v8, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 96
    new-instance v4, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v4, v14}, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;-><init>(I)V

    .line 97
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_cc

    :cond_eb
    const/4 v15, 0x0

    .line 99
    new-instance v10, Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;

    invoke-direct {v10, v11, v12, v13}, Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    move-object v8, v15

    const/4 v4, 0x1

    goto/16 :goto_62

    .line 101
    :cond_f5
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f8
    .catchall {:try_start_21 .. :try_end_f8} :catchall_89

    return-object v2

    .line 103
    :goto_f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpsForPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getOpsMode(Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getPackageMode(IILjava/lang/String;)I
    .registers 4

    .line 171
    sget-object p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->TAG:Ljava/lang/String;

    const-string p1, "getPackageMode is not supported in aosp version."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 8

    .line 51
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v1, v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPackageMode(IILjava/lang/String;I)V
    .registers 5

    .line 167
    sget-object p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->TAG:Ljava/lang/String;

    const-string p1, "setPackageMode is not supported in aosp version."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startWatchingActive([ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V
    .registers 7

    .line 147
    sget-object p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sClassName:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getServiceOrThrow"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 148
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 149
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sClassName:Ljava/lang/Class;

    const-string v2, "appops"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 150
    instance-of v1, p0, Landroid/os/IBinder;

    if-eqz v1, :cond_26

    .line 151
    move-object v0, p0

    check-cast v0, Landroid/os/IBinder;

    .line 153
    :cond_26
    sget-object p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWatchingActive iBinder :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sIAppOpsServiceClass:Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsService;->sIAppOpsServiceClass:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWatchingActive object :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8c

    .line 158
    const-string p0, "com.android.internal.app.IAppOpsActiveCallback"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [I

    filled-new-array {v2, p0}, [Ljava/lang/Class;

    move-result-object p0

    const-string v2, "startWatchingActive"

    invoke-static {v1, v2, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 160
    new-instance v1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$TranAospAppOpsActiveCallback;

    invoke-direct {v1, p2}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$TranAospAppOpsActiveCallback;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    return-void
.end method
