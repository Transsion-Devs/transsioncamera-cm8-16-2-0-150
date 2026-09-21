.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 157
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_d

    const/4 p1, 0x4

    .line 160
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 166
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_d

    const/4 p1, 0x4

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
