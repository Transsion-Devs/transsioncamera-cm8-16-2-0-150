.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 490
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "hide cancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$3;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "hide end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
