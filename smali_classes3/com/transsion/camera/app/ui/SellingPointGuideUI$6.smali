.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showFloatingWindowWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V
    .registers 2

    .line 953
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$6;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 956
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 957
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$6;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmFloatingWindowRoot(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
