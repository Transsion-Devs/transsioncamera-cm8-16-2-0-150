.class public Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# static fields
.field private static final FAIL_MSG:Ljava/lang/String; = "Version below 3.1.1 does not have this interface, please implement it yourself"

.field private static final TAG:Ljava/lang/String; = "TranAospDreamAnimationManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAODCallBacksListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;",
            "Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

.field private final mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "android.app.DreamAnimationManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    .line 37
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)Ljava/util/ArrayList;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    if-nez v0, :cond_d

    .line 42
    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    .line 44
    :cond_d
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranAospDreamAnimationManagerExt:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    return-object p0
.end method

.method private getUserId()I
    .registers 4

    .line 161
    const-string p0, "android.os.UserHandle"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 162
    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "myUserId"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    .line 163
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public isFeatureEnabled()Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mContext:Landroid/content/Context;

    const-string v1, "dream_animation"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 86
    sget-object v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->sClassName:Ljava/lang/Class;

    const-string v2, "isFeatureEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 89
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    .line 90
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    return p0

    :catchall_23
    move-exception p0

    goto :goto_26

    :cond_25
    return v0

    .line 94
    :goto_26
    sget-object v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFeatureEnabled fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onUpdateAODState(I)V
    .registers 3

    .line 154
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 157
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->onUpdateAODState(I)V

    return-void

    .line 155
    :cond_e
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .registers 3

    .line 129
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 132
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V

    return-void

    .line 130
    :cond_e
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .registers 5

    .line 114
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 117
    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    .line 123
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->registerAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V

    return-void

    .line 115
    :cond_18
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .registers 3

    .line 49
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_e

    .line 52
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void

    .line 50
    :cond_e
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method registerCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .registers 4

    .line 57
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_15

    .line 60
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    invoke-virtual {p1, p0, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->registerCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V

    return-void

    .line 58
    :cond_15
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method registerCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .registers 3

    .line 146
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 149
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V

    return-void

    .line 147
    :cond_e
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .registers 5

    .line 137
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 140
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->unRegisterAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V

    .line 141
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mAODCallBacksListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 138
    :cond_1b
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "Version below 3.1.1 does not have this interface, please implement it yourself"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .registers 3

    .line 75
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_e

    .line 78
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void

    .line 76
    :cond_e
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method unRegisterCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .registers 4

    .line 66
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidS()Z

    move-result v0

    if-nez v0, :cond_15

    .line 69
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->getTranAospDreamAnimationManagerExt()Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mTranCallBack:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    invoke-virtual {p1, p0, p2}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->unRegisterCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V

    return-void

    .line 67
    :cond_15
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method unRegisterCallback"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
