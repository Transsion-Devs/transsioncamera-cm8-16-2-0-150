.class Lcom/transsion/camera/app/ui/ModePickerUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->enterMoreModeGuideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 788
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 800
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 801
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideLeftRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmMoreModeGuideRootTranX(Lcom/transsion/camera/app/ui/ModePickerUI;F)V

    .line 802
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p1

    if-eqz p1, :cond_30

    const/4 p1, 0x2

    .line 803
    new-array p1, p1, [I

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 805
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmMoreTabOriginalLocation(Lcom/transsion/camera/app/ui/ModePickerUI;I)V

    :cond_30
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 791
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 792
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideLeftRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 793
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideLeftRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void
.end method
