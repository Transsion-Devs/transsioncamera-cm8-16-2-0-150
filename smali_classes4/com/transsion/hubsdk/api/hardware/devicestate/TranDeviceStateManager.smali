.class public Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ARGUMENT_EXCEPTION:Ljava/lang/String; = "callback cannot be empty."

.field public static final EXECUTOR_ARGUMENT_EXCEPTION:Ljava/lang/String; = "Executor cannot be empty"

.field private static final TAG:Ljava/lang/String; = "TranDeviceStateManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

.field private mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;

.field private final mTranDeviceStateCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;-><init>(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mTranDeviceStateCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    return-object p0
.end method


# virtual methods
.method public getCurrentState()I
    .registers 2

    .line 161
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;->getCurrentState()I

    move-result p0

    return p0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

    :cond_b
    return-object v0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;
    .registers 2

    .line 148
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 149
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;

    :cond_11
    return-object p1

    .line 151
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManager;

    :cond_1d
    return-object p1
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_18

    if-eqz p2, :cond_10

    .line 59
    iput-object p2, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    .line 60
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->getService()Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mTranDeviceStateCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    invoke-interface {p2, p1, p0}, Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;->registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V

    return-void

    .line 57
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Executor cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterCallback(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_c

    .line 134
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->getService()Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mTranDeviceStateCallback:Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;

    invoke-interface {p1, p0}, Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;->unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V

    return-void

    .line 132
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
