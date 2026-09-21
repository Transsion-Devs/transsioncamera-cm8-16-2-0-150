.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->performTypeSwitchAnimation(Z)V
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

    .line 399
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 402
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 408
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 409
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "performTypeSwitchAnimation, onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fputmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchingItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmPreType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmPreType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->exit()V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fputmPreType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;)V

    :cond_32
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 420
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fputmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V

    .line 422
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "performTypeSwitchAnimation, onAnimationStart"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
