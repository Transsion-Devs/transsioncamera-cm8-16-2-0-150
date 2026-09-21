.class Lcom/transsion/camera/app/ui/mode/video/VideoUI$3;
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

    .line 550
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
