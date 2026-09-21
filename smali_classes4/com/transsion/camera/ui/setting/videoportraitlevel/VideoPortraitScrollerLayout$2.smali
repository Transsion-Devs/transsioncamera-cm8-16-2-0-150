.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    const-wide/16 v0, 0xfa

    .line 89
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 90
    invoke-static {}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "fast click, return !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fgetmIsPortraitOn(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$monPortraitButtonSwitch(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;Z)V

    return-void
.end method
