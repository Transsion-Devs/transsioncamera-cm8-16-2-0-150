.class final Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimatorListener"
.end annotation


# instance fields
.field private final weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 313
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 309
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_d

    # invokes: Lcom/opensource/svgaplayer/SVGAImageView;->onAnimationEnd(Landroid/animation/Animator;)V
    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$onAnimationEnd(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/Animator;)V

    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 305
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getCallback()Lcom/opensource/svgaplayer/SVGACallback;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGACallback;->onRepeat()V

    :cond_13
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    return-void
.end method
