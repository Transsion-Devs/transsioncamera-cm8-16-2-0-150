.class Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/SlowMotionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mSlowMotionModeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/video/SlowMotionMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 118
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MyHandler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->mSlowMotionModeRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/feature/mode/video/SlowMotionMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V

    return-void
.end method

.method private stopRecording()V
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->mSlowMotionModeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;

    if-nez p0, :cond_12

    .line 143
    sget-object p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "slowMotionMode has been gc"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->stopSlowMotionRecording()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_20

    .line 134
    sget-object p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->stopRecording()V

    return-void
.end method
