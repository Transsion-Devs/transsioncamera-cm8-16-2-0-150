.class Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V
    .registers 3

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    if-nez p0, :cond_25

    .line 237
    invoke-static {}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage faceDetectionUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_32

    .line 241
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$mdoUpdateHumanView(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;[I)V

    :cond_32
    return-void
.end method
