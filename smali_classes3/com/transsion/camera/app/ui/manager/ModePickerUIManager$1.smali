.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->notifyCameraOperateActionToUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 827
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 830
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    return-void
.end method
