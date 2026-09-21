.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# static fields
.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_VIDEO_RECORDING_STARTED:I


# instance fields
.field private final mTimeLapseVideoMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .registers 3

    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;->mTimeLapseVideoMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;->mTimeLapseVideoMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    if-nez p0, :cond_14

    .line 127
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage mode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_14
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    return-void

    .line 134
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onBackPressed()Z

    return-void
.end method
