.class Lcom/transsion/camera/app/ui/FullZoomUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->notifyCameraOperateActionToUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;I)V
    .registers 3

    .line 1664
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$7;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI$7;->val$action:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1667
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$7;->val$action:I

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_d

    .line 1668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$7;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    return-void

    .line 1670
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$7;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->onRecordingStateChange(I)V

    return-void
.end method
