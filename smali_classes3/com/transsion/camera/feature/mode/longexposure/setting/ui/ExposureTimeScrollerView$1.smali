.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->-$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 20
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->-$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getPointXByValue(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->access$000(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3b

    .line 22
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    # getter for: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->access$100(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v0

    neg-int v2, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x3e8

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V
    invoke-static {v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->access$200(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;II)V

    .line 23
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    # getter for: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->access$300(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItemBySelected(IZ)V

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3b
    return-void
.end method
