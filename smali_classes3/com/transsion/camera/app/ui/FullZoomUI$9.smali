.class Lcom/transsion/camera/app/ui/FullZoomUI$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->runFullZoomUIRotateAnimator()V
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

    .line 2293
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 2296
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/FullZoomUI;)I

    move-result p1

    .line 2298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 2299
    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmVideoRecording(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmRecordingOrientation(Lcom/transsion/camera/app/ui/FullZoomUI;)I

    move-result p1

    goto :goto_23

    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/FullZoomUI;)I

    move-result p1

    .line 2301
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-static {v0, v2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$mupdateFullZoomUILayout(Lcom/transsion/camera/app/ui/FullZoomUI;ZI)V

    .line 2302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$9;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmFullZoomIn(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
