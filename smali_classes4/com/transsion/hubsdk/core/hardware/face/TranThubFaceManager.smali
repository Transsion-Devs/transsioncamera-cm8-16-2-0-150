.class public Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubFaceManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "face_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/face/ITranFaceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManager;->mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    return-void
.end method


# virtual methods
.method public isHardwareDetected()Z
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManager;->mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    if-eqz p0, :cond_d

    .line 34
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;->isHardwareDetected()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public setConfig(III)V
    .registers 4

    .line 44
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManager;->mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    if-eqz p0, :cond_c

    .line 46
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;->setConfig(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManager;->mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    return-void
.end method
