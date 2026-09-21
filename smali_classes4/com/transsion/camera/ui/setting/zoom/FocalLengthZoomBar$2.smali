.class Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 632
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "show, onAnimationCancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 638
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 639
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "show, onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->-$$Nest$fputmIsFadeAnimating(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Z)V

    return-void
.end method
