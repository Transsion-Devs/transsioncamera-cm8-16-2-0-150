.class final Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimatorUpdateListener"
.end annotation


# instance fields
.field private final weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_d

    # invokes: Lcom/opensource/svgaplayer/SVGAImageView;->onAnimatorUpdate(Landroid/animation/ValueAnimator;)V
    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$onAnimatorUpdate(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/ValueAnimator;)V

    :cond_d
    return-void
.end method
