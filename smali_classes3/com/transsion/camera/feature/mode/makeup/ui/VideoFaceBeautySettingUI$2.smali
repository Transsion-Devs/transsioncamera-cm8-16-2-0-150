.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v1, :cond_7

    goto :goto_33

    .line 114
    :cond_7
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->-$$Nest$misExpandedOrLRHoverState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 118
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)I

    move-result v0

    if-eqz v0, :cond_6b

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_34

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6b

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_34

    :goto_33
    return-void

    .line 126
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    .line 127
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_47

    goto :goto_59

    .line 130
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 128
    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 122
    :cond_6b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
