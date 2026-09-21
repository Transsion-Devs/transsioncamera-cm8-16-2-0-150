.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->doNoEffectToExpandAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

.field final synthetic val$targetTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/TextView;)V
    .registers 3

    .line 1047
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->val$targetTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1058
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1059
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    .line 1060
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->val$targetTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->-$$Nest$fgetmCollapsedTabTextView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->val$targetTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->-$$Nest$fgetmCollapsedTabTextView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->-$$Nest$fgetmHoverTabContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
