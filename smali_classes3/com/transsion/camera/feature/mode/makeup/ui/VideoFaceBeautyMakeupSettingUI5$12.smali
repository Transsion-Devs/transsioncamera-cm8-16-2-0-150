.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->doExpandToCollapseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 2

    .line 817
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 827
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 828
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->-$$Nest$fgetmTabMenuContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->-$$Nest$fgetmTabMenuContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->-$$Nest$fgetmTabMenuContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 822
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
