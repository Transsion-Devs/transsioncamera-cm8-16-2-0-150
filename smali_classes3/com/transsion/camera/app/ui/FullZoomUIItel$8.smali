.class Lcom/transsion/camera/app/ui/FullZoomUIItel$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUIItel;->notifyCameraOperateActionToUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;I)V
    .registers 3

    .line 968
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$8;->val$action:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 971
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$8;->val$action:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->onRecordingStateChange(I)V

    return-void
.end method
