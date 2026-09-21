.class Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->startDrawProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->-$$Nest$fgetmProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->-$$Nest$fgetmProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;->onProgressEnd()V

    :cond_18
    return-void
.end method
