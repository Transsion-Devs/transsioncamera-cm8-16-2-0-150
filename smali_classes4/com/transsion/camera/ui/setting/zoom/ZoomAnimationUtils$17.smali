.class Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

.field final synthetic val$isRecordBegin:Z

.field final synthetic val$manager:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;ZLcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;)V
    .registers 5

    .line 622
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$info:Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$isRecordBegin:Z

    iput-object p4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$manager:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$view:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$info:Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->getTranslationEnd()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 630
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$isRecordBegin:Z

    if-nez p1, :cond_a

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 633
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$manager:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$isRecordBegin:Z

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$manager:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$isRecordBegin:Z

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;->val$view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
