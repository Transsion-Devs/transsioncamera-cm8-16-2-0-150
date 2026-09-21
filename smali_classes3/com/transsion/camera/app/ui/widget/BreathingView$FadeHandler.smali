.class Lcom/transsion/camera/app/ui/widget/BreathingView$FadeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/BreathingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeHandler"
.end annotation


# instance fields
.field private final mBreathingView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/BreathingView;)V
    .registers 3

    .line 176
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView$FadeHandler;->mBreathingView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView$FadeHandler;->mBreathingView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/BreathingView;

    .line 183
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    goto :goto_24

    :cond_11
    if-eqz p0, :cond_24

    .line 191
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->-$$Nest$fgetmFadeOut(Lcom/transsion/camera/app/ui/widget/BreathingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1b
    if-eqz p0, :cond_24

    .line 186
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->-$$Nest$fgetmFadeIn(Lcom/transsion/camera/app/ui/widget/BreathingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_24
    :goto_24
    return-void
.end method
