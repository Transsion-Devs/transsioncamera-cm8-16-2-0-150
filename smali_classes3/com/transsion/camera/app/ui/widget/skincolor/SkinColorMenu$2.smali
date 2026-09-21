.class Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->startVisibilityAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;Z)V
    .registers 3

    .line 280
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 295
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->val$show:Z

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    goto :goto_d

    :cond_b
    const/16 p0, 0x8

    :goto_d
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 289
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->val$show:Z

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    goto :goto_d

    :cond_b
    const/16 p0, 0x8

    :goto_d
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 283
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;->this$0:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
