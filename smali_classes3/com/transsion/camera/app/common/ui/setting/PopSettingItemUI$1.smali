.class Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->animateTreasureBoxItemBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

.field final synthetic val$newDrawableRes:I

.field final synthetic val$targetAlpha:F


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;IF)V
    .registers 4

    .line 370
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$newDrawableRes:I

    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$targetAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmTreasureBoxItemBackground(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$newDrawableRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmTreasureBoxItemBackground(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$newDrawableRes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmTreasureBoxItemBackground(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$targetAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$newDrawableRes:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fputmCurrentTreasureBoxItemRes(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmTargetTreasureBoxItemRes(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fputmCurrentTreasureBoxItemRes(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmTreasureBoxItemBackground(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/widget/ImageView;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$newDrawableRes:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmTreasureBoxItemBackground(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/widget/ImageView;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;->val$newDrawableRes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
