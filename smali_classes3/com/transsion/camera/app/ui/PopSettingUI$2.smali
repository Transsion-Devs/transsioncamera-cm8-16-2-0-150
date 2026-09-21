.class Lcom/transsion/camera/app/ui/PopSettingUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->showPopItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/view/View;)V
    .registers 3

    .line 448
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 451
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$2;->val$itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
