.class Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/FloatingShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V
    .registers 3

    .line 248
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Lcom/transsion/camera/app/ui/view/FloatingShutterView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    if-nez p0, :cond_25

    .line 256
    invoke-static {}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage float ui is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2e

    goto :goto_9b

    .line 269
    :cond_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 270
    invoke-static {}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ,currentAlpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_9b

    .line 272
    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_alpha"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fputmCurrentAlpha(Lcom/transsion/camera/app/ui/view/FloatingShutterView;F)V

    .line 274
    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9b
    :goto_9b
    return-void

    .line 261
    :cond_9c
    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fputmIsEditMode(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Z)V

    .line 262
    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmIsResume(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 263
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    .line 265
    :cond_a8
    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmFloatingShutterEditLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->startOriginalScaleAnimator()V

    return-void
.end method
