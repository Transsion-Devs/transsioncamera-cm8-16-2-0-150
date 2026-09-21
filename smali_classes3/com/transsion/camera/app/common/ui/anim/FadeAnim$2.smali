.class Lcom/transsion/camera/app/common/ui/anim/FadeAnim$2;
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
.field final synthetic val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim;Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V
    .registers 3

    .line 74
    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$2;->val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 77
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFadeInEnd listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$2;->val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$2;->val$listener:Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;

    if-eqz p0, :cond_24

    .line 80
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;->onFadeInEnd()V

    :cond_24
    return-void
.end method
