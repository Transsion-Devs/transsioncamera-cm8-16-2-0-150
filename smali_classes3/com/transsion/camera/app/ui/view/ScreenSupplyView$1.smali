.class Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->fadeIn(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apertureView:Landroid/view/View;

.field final synthetic val$previewScreenSupplyView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 358
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;->val$previewScreenSupplyView:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;->val$apertureView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;->val$previewScreenSupplyView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;->val$apertureView:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;->val$apertureView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method
