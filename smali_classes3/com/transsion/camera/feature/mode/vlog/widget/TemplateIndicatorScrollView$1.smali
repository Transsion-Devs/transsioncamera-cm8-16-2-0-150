.class Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->-$$Nest$fgetmTabSelector(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->-$$Nest$fgetmTabSelector(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 109
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->-$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getIndicatorIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setCurrentItem(IZ)V

    return-void
.end method
