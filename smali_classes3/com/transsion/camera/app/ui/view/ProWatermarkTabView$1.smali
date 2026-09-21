.class Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->addOnPreDrawListener(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$selected:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;Landroid/view/View;Z)V
    .registers 4

    .line 122
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;->val$selected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;->val$selected:Z

    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    return p0
.end method
