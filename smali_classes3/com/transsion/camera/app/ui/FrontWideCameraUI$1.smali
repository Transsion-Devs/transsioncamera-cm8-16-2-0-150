.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 2

    .line 739
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    return-void
.end method
