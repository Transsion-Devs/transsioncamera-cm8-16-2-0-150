.class public Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/location/LocationReceiveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainThreadHandler"
.end annotation


# instance fields
.field mLocationManager:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;Landroid/os/Looper;Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)V
    .registers 4

    .line 220
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;->mLocationManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;->mLocationManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    if-nez p0, :cond_14

    .line 228
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage: locationManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_14
    :try_start_14
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_23

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1f

    return-void

    .line 237
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->handleStopRecivingLocation()V

    return-void

    .line 234
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->handleStartReceivingLocation()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p0

    .line 243
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
