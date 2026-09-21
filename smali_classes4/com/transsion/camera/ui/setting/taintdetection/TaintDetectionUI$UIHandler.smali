.class Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)V
    .registers 3

    .line 351
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 352
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    if-nez p0, :cond_b

    goto :goto_3e

    .line 361
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_12

    goto :goto_3e

    .line 363
    :cond_12
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmTaintInfoTextView(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 364
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmTaintInfoTextView(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaintScore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmTaintInfoTextView(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3e
    :goto_3e
    return-void
.end method
