.class public Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;,
        Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;
    }
.end annotation


# instance fields
.field private mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;


# direct methods
.method private constructor <init>(Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;

    return-void
.end method

.method public static getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;
    .registers 3

    .line 76
    :try_start_0
    new-instance p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;

    const-string p1, "internal/0"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;-><init>(Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public linkToDeath(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;I)V
    .registers 5

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;

    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$1;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;)V

    int-to-long p0, p2

    invoke-interface {v0, v1, p0, p1}, Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

.method public setEventCallback(ILcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;)V
    .registers 5

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;

    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;)V

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/camera/bgservice/V1_1/IBGService;->setEventCallback_1_1(ILvendor/mediatek/hardware/camera/bgservice/V1_1/IEventCallback;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
