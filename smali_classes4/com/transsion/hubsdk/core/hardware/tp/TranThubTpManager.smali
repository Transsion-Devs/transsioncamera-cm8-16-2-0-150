.class public Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/tp/ITranTpManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubTpManager"


# instance fields
.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;",
            "Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mCallbackMap:Landroid/util/ArrayMap;

    .line 22
    const-string v0, "trantp"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/tp/ITranTpManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mService:Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;

    return-void
.end method


# virtual methods
.method public getValue(I)Ljava/lang/String;
    .registers 3

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mService:Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;

    if-eqz p0, :cond_20

    .line 30
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;->getValue(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getValue exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranThubTpManager"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerCallback(ILcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;)V
    .registers 6

    .line 52
    const-string v0, "TranThubTpManager"

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;

    invoke-direct {v1, p0, p2}, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;)V

    .line 53
    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_c
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mService:Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;

    if-eqz p0, :cond_16

    .line 56
    invoke-interface {p0, p1, v1}, Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;->registerCallback(ILcom/transsion/hubsdk/hardware/tp/ITranTpCallback;)V

    goto :goto_16

    :catch_14
    move-exception p0

    goto :goto_1c

    .line 58
    :cond_16
    :goto_16
    const-string p0, "registerCallback success"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_14

    return-void

    .line 60
    :goto_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerCallback exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 3

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mService:Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;

    if-eqz p0, :cond_20

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;->setValue(ILjava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setValue exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranThubTpManager"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterCallback(Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;)V
    .registers 6

    .line 66
    const-string v0, "TranThubTpManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;

    .line 68
    :try_start_a
    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mService:Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;

    if-eqz v2, :cond_18

    if-eqz v1, :cond_18

    .line 69
    invoke-interface {v2, v1}, Lcom/transsion/hubsdk/hardware/tp/ITranTpManager;->unregisterCallback(Lcom/transsion/hubsdk/hardware/tp/ITranTpCallback;)V

    goto :goto_18

    :catchall_14
    move-exception v0

    goto :goto_38

    :catch_16
    move-exception v1

    goto :goto_23

    .line 71
    :cond_18
    :goto_18
    const-string v1, "unregisterCallback success"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_16
    .catchall {:try_start_a .. :try_end_1d} :catchall_14

    .line 75
    :goto_1d
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 73
    :goto_23
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_14

    goto :goto_1d

    .line 75
    :goto_38
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    throw v0
.end method
