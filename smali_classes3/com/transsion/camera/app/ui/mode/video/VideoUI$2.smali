.class Lcom/transsion/camera/app/ui/mode/video/VideoUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->-$$Nest$fgetmPauseResumeButton(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
