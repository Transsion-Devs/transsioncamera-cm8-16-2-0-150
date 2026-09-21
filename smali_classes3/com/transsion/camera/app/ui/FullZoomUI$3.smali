.class Lcom/transsion/camera/app/ui/FullZoomUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 2

    .line 1126
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_12

    .line 1130
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    .line 1132
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    return-void
.end method
