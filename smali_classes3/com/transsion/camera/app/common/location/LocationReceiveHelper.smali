.class public Lcom/transsion/camera/app/common/location/LocationReceiveHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;,
        Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;,
        Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInterval:I

.field private mIsReceiving:Z

.field private mKey:Ljava/lang/String;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mMainThreadHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

.field private mRetry:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleReRequestLocation(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->handleReRequestLocation(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misReceiving(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->isReceiving()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LocReceiver"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/location/LocationManager;Ljava/lang/String;Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 43
    iput-object p3, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mKey:Ljava/lang/String;

    const/4 p1, 0x5

    .line 44
    iput p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mRetry:I

    const/16 p1, 0x3e8

    .line 45
    iput p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mInterval:I

    .line 46
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->init()V

    return-void
.end method

.method private handleReRequestLocation(Ljava/lang/String;II)V
    .registers 7

    .line 123
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReRequestLocation: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isReceiving: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->isReceiving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->isReceiving()Z

    move-result v1

    if-nez v1, :cond_31

    return-void

    .line 129
    :cond_31
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 131
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->notifyLocationReceived(Landroid/location/Location;)V

    return-void

    .line 133
    :cond_3d
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_6e

    if-lez p2, :cond_64

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reRequestCurrentLocation]: last known location is null, retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->reStartReceivingLocation()V

    add-int/lit8 p2, p2, -0x1

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->reRequestCurrentLocation(Ljava/lang/String;II)V

    return-void

    .line 140
    :cond_64
    const-string p1, "[reRequestCurrentLocation]: last known location is null, retry: 0"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->notifyLocationReceived(Landroid/location/Location;)V

    return-void

    .line 144
    :cond_6e
    const-string p1, "[reRequestCurrentLocation] update city info by last known location"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->notifyLocationReceived(Landroid/location/Location;)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;-><init>(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;Landroid/os/Looper;Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    .line 70
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;-><init>(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;Landroid/os/Looper;Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mMainThreadHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

    return-void
.end method

.method private isReceiving()Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mIsReceiving:Z

    return p0
.end method

.method private notifyLocationReceived(Landroid/location/Location;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->isReceiving()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_14

    .line 116
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

    if-eqz p0, :cond_14

    .line 118
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;->onLocationReceived(Landroid/location/Location;)V

    :cond_14
    :goto_14
    return-void
.end method

.method private reRequestCurrentLocation(Ljava/lang/String;II)V
    .registers 7

    .line 101
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reRequestCurrentLocation: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iput v2, v0, Landroid/os/Message;->what:I

    .line 105
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 106
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 107
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public getInterval()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mInterval:I

    return p0
.end method

.method public getRetry()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mRetry:I

    return p0
.end method

.method public handleStartReceivingLocation()V
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationManager;->startReceivingLocation()V

    return-void
.end method

.method public handleStopRecivingLocation()V
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationManager;->stopReceivingLocation()V

    return-void
.end method

.method public quit()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public reStartReceivingLocation()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->stopReceivingLocation()V

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->startReceivingLocation()V

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setRetry(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mRetry:I

    return-void
.end method

.method public startReceivingLocation()V
    .registers 3

    .line 191
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startReceivingLocation"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mMainThreadHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 194
    iput v1, v0, Landroid/os/Message;->what:I

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mMainThreadHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startRequestLocation()V
    .registers 4

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mIsReceiving:Z

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->getRetry()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->getInterval()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->reRequestCurrentLocation(Ljava/lang/String;II)V

    return-void
.end method

.method public stopReceivingLocation()V
    .registers 3

    .line 199
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopReceivingLocation"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mMainThreadHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mMainThreadHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$MainThreadHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopRequestLocation()V
    .registers 4

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRequestCurrentLocation: stop request current location, mRequestLastLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->isReceiving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mIsReceiving:Z

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->mHandler:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
