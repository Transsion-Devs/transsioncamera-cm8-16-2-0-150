.class public Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;,
        Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;
    }
.end annotation


# static fields
.field private static BG_SERVICE_NAME:Ljava/lang/String; = "vendor.mediatek.hardware.camera.bgservice.IBGService/default"

.field private static mBgServiceBinder:Landroid/os/IBinder;


# instance fields
.field private mBGService:Lvendor/mediatek/hardware/camera/bgservice/IBGService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lvendor/mediatek/hardware/camera/bgservice/IBGService;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/IBGService;

    return-void
.end method

.method public static getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;
    .registers 2

    .line 43
    sget-object p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->BG_SERVICE_NAME:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->mBgServiceBinder:Landroid/os/IBinder;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_c
    new-instance p1, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;

    invoke-static {p0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/camera/bgservice/IBGService;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;-><init>(Lvendor/mediatek/hardware/camera/bgservice/IBGService;)V

    return-object p1
.end method


# virtual methods
.method public linkToDeath(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;I)V
    .registers 5

    .line 57
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->mBgServiceBinder:Landroid/os/IBinder;

    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$1;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;)V

    invoke-interface {v0, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setEventCallback(ILcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;)V
    .registers 5

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/IBGService;

    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$2;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$2;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;)V

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/camera/bgservice/IBGService;->setEventCallback(ILvendor/mediatek/hardware/camera/bgservice/IEventCallback;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
