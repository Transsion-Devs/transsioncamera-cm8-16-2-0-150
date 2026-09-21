.class Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$msetTwinkleGuideRootGone(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void
.end method
