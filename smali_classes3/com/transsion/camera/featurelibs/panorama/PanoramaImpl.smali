.class Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/panorama/IPanorama;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "jnipanorama"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

.field private mNativeContext:J

.field private mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPanoramaCallback(Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;)Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 47
    const-string v0, "jnipanorama"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeSetup(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mNativeContext:J

    return-void
.end method

.method private initEventHandler()V
    .registers 4

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 73
    new-instance v2, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    return-void

    .line 74
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 75
    new-instance v2, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    return-void

    .line 77
    :cond_1d
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    return-void
.end method

.method private native nativeConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
.end method

.method private native nativeInit(Z)Z
.end method

.method private native nativeProcess(I[B)I
.end method

.method private native nativeReset()Z
.end method

.method private native nativeSetup(Ljava/lang/Object;)J
.end method

.method private native nativeUnInit()Z
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;

    if-nez p0, :cond_10

    .line 140
    sget-object p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "postEventFromNative panorama is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
    .registers 5

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z

    move-result p0

    .line 65
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config panorama parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public init(Z)Z
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeInit(Z)Z

    move-result p0

    .line 57
    sget-object p1, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init panorama "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public process(ILandroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [B

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeProcess(I[B)I

    move-result p2

    .line 99
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_45

    .line 101
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_44

    if-eqz p2, :cond_44

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    if-eqz p1, :cond_44

    .line 105
    new-instance p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;-><init>()V

    .line 106
    iput v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mCommand:I

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_44
    return-void

    :catchall_45
    move-exception p0

    .line 99
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public reset()Z
    .registers 4

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeReset()Z

    move-result p0

    .line 117
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset panorama "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    return-void

    .line 88
    :cond_6
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->initEventHandler()V

    return-void
.end method

.method public unInit()Z
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl$EventHandler;

    .line 129
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->nativeUnInit()Z

    move-result p0

    .line 130
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit panorama "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method
