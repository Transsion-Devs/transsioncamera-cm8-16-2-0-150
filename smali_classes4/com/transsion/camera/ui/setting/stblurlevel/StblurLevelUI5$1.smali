.class Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->showOrHideSTblurLevel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;Z)V
    .registers 3

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 261
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->val$show:Z

    if-nez p1, :cond_d

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3

    .line 254
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->val$show:Z

    if-nez p1, :cond_d

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->val$show:Z

    if-eqz p1, :cond_12

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->-$$Nest$mshowPop3sSettingTitle(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V

    return-void

    .line 248
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$1;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->-$$Nest$mhidePop3SettingTitle(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V

    return-void
.end method
