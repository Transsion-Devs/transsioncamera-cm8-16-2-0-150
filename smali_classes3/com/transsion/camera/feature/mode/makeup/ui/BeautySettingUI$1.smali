.class Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$misFloatEqual(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;FF)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->-$$Nest$mcomputeFilterRootVisibility(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    :cond_29
    return-void
.end method
