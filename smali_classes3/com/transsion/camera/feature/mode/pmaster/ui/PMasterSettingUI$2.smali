.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_39

    .line 138
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$misExpandedOrLRHoverState(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 142
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)I

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3a

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_3a

    :goto_39
    return-void

    .line 151
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 146
    :cond_4e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
