.class Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

.field final synthetic val$srcAlpha:F


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;F)V
    .registers 3

    .line 480
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->val$srcAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 483
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 484
    iget p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->val$srcAlpha:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverRoot(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 485
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverRoot(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    return-void
.end method
