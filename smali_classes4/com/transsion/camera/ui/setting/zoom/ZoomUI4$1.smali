.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->removeZoomItemView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$zoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V
    .registers 3

    .line 818
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$1;->val$zoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 821
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 822
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$1;->val$zoomItemView:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
