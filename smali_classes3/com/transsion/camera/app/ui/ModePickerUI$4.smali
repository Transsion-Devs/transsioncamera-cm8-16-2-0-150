.class Lcom/transsion/camera/app/ui/ModePickerUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->exitMoreModeGuideAnimation()V
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

    .line 741
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 753
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 754
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_15
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 744
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 745
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$misShowMoreModeGuideView(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 746
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$4;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 747
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "more guide visibility: exitMoreModeGuideAnimation: onAnimationStart set visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_26
    return-void
.end method
