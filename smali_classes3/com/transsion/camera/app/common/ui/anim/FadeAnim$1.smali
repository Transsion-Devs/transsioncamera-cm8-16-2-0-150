.class Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->runFadeAnim(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

.field final synthetic val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim;Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;->this$0:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;->val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 57
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 58
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFadeOutEnd listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;->val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;->val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    if-eqz p1, :cond_24

    .line 60
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;->onFadeOutEnd()V

    .line 62
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;->this$0:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->-$$Nest$fgetmFadeIn(Lcom/transsion/camera/app/common/ui/anim/FadeAnim;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
