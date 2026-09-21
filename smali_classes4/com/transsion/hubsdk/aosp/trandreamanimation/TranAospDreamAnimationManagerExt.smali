.class public Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;,
        Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospDreamAnimationManagerExt"


# instance fields
.field private final mAospAODCallBackList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;",
            "Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

.field private mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

.field private final mTranCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    .line 89
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->getDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    .line 30
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mContext:Landroid/content/Context;

    .line 31
    const-string p1, "dream_animation"

    .line 32
    invoke-static {p1}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/lang/Object;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/util/ArrayList;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getDreamAnimationManager()Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    .line 95
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    return-object p0
.end method

.method private static synthetic lambda$registerAODCallback$0(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V
    .registers 2

    .line 103
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;->onUpdateAODState(I)V

    return-void
.end method


# virtual methods
.method public onUpdateAODState(I)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    if-eqz p0, :cond_1f

    .line 133
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->onUpdateAODState(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateAODState fail:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospDreamAnimationManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public registerAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V
    .registers 6

    .line 99
    const-string v0, "TranAospDreamAnimationManagerExt"

    if-nez p1, :cond_a

    .line 100
    const-string p0, "CallBack is not available while register."

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_a
    new-instance v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;)V

    .line 105
    :try_start_f
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz p0, :cond_1e

    .line 107
    invoke-virtual {p0, v1, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    goto :goto_1f

    :cond_1e
    return-void

    .line 110
    :goto_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerAODCallback fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V
    .registers 5

    if-nez p1, :cond_a

    .line 52
    const-string p0, "TranAospDreamAnimationManagerExt"

    const-string p1, "CallBack is not available while register."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_d
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3c

    .line 59
    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

    invoke-interface {p1, p0, p2}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_25
    .catchall {:try_start_d .. :try_end_22} :catchall_23

    goto :goto_3c

    :catchall_23
    move-exception p0

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 62
    :try_start_26
    const-string p1, "TranAospDreamAnimationManagerExt"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3c
    :goto_3c
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_23

    throw p0
.end method

.method public unRegisterAODCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;I)V
    .registers 6

    .line 116
    const-string v0, "TranAospDreamAnimationManagerExt"

    if-nez p1, :cond_a

    .line 117
    const-string p0, "CallBack is not available while register."

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    if-eqz v1, :cond_21

    .line 122
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;

    invoke-virtual {v1, v2, p2}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterAODCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;I)V

    .line 123
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mAospAODCallBackList:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    goto :goto_22

    :cond_21
    return-void

    .line 126
    :goto_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerAODCallback fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;I)V
    .registers 5

    if-nez p1, :cond_a

    .line 69
    const-string p0, "TranAospDreamAnimationManagerExt"

    const-string p1, "CallBack is not available while unRegister."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_a
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_d
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3b

    .line 76
    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mService:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mServiceCallback:Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;

    invoke-interface {p1, p0, p2}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_24
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_3b

    :catchall_22
    move-exception p0

    goto :goto_3d

    :catch_24
    move-exception p0

    .line 79
    :try_start_25
    const-string p1, "TranAospDreamAnimationManagerExt"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCallback fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_22

    throw p0
.end method
