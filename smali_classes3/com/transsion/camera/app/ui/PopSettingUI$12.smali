.class Lcom/transsion/camera/app/ui/PopSettingUI$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 2

    .line 2160
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$12;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 2163
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$12;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_d

    const/4 p1, 0x1

    .line 2165
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 2171
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$12;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_d

    const/4 p1, 0x1

    .line 2173
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 2179
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$12;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mPopBackView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_d

    const/4 p1, 0x0

    .line 2181
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    return-void
.end method
