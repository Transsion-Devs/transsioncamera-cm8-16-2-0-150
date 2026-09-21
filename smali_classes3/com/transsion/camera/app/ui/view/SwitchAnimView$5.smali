.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startFadeSwitchAnim(Z[Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$foreground:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/view/View;)V
    .registers 3

    .line 492
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$5;->val$foreground:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$5;->val$foreground:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
