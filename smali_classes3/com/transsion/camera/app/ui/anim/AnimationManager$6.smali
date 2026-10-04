.class Lcom/transsion/camera/app/ui/anim/AnimationManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateTargetRect(Landroid/graphics/Rect;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field final synthetic val$generation:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;I)V
    .registers 3

    .line 334
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iput p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$generation:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$generation:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$monRectAnimFinish(Lcom/transsion/camera/app/ui/anim/AnimationManager;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$generation:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$monRectAnimFinish(Lcom/transsion/camera/app/ui/anim/AnimationManager;I)V

    return-void
.end method
