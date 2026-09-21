.class Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 249
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 243
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->setEnable(Z)V

    return-void
.end method
