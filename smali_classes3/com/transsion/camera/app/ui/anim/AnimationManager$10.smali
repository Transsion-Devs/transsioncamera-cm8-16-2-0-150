.class Lcom/transsion/camera/app/ui/anim/AnimationManager$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFadeSwitchAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .registers 3

    .line 1082
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1085
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[startFadeSwitchAnim] onAnimationEnd: show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->val$show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPreviewRendered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmIsPreviewRendered(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1087
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_54

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->val$show:Z

    if-eqz p1, :cond_46

    .line 1088
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4FadeOutAnimator:Z

    if-nez p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmIsPreviewRendered(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1089
    :cond_46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$10;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mhidePreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    .line 1090
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[startFadeSwitchAnim] onAnimationEnd: fade blur animator finish."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_54
    return-void
.end method
