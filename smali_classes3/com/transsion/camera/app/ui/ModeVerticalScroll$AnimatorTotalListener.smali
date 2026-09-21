.class Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;
.super Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorTotalListener"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 3

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll-IA;)V

    .line 436
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;->mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;->mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method
