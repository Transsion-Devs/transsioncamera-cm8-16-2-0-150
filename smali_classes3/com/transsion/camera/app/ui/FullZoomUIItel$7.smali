.class Lcom/transsion/camera/app/ui/FullZoomUIItel$7;
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


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 2

    .line 952
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$7;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$7;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    return-void
.end method
