.class public Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDreamAnimationManager"


# instance fields
.field private mAODCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;",
            "Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;",
            "Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

.field private mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    return-void
.end method


# virtual methods
.method public getTranDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    if-nez v0, :cond_10

    .line 150
    const-string v0, "dream_animation"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    .line 153
    :cond_10
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    return-object p0
.end method

.method public isFeatureEnabled()Z
    .registers 4

    .line 79
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz p0, :cond_20

    .line 81
    :try_start_4
    invoke-virtual {p0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->isFeatureEnabled()Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 83
    sget-object v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureEnabled e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public onUpdateAODState(I)V
    .registers 4

    .line 129
    invoke-virtual {p0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->getTranDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 132
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->onUpdateAODState(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 134
    sget-object p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateAODState fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .registers 4

    .line 102
    new-instance v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    .line 103
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v1, :cond_13

    .line 104
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;)V

    :cond_13
    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .registers 5

    .line 93
    new-instance v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V

    .line 94
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v1, :cond_13

    .line 95
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V

    :cond_13
    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .registers 3

    .line 42
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .registers 4

    if-nez p1, :cond_a

    .line 48
    sget-object p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string p1, "CallBack is not available while register."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_a
    new-instance p2, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    return-void
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    .line 121
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    .line 122
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;

    .line 112
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V

    .line 114
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mAODCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .registers 3

    .line 74
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V

    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
    .registers 4

    if-nez p1, :cond_a

    .line 65
    sget-object p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string p1, "CallBack is not available while unregister."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_a
    iget-object p2, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;

    invoke-virtual {p2, v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
