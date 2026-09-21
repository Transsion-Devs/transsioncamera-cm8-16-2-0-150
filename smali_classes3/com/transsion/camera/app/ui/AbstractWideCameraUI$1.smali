.class Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V
    .registers 3

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;->val$action:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;->val$action:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->onRecordingStateChange(I)V

    return-void
.end method
