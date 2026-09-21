.class Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 102
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_1d

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 113
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_1d

    const/16 v0, 0x8

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1d
    return-void
.end method
