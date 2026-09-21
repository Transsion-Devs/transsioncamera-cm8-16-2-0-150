.class Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$2;
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

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 126
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_d

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
