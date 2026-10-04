.class Lcom/transsion/camera/app/ui/ModePickerUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->showModePickerFromTBox()V
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

    .line 1207
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1228
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1229
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 1230
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1e
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1219
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1220
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1221
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 1211
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$7;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
