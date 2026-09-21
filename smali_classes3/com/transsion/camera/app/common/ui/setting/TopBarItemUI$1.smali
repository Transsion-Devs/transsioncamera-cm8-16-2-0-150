.class Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupLottieAnimation(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 596
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 598
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_live_photo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationEnd()V

    :cond_24
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 605
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 606
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 607
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_live_photo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationEnd()V

    :cond_24
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 614
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 615
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    .line 616
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 617
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_live_photo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationStart()V

    :cond_27
    return-void
.end method
