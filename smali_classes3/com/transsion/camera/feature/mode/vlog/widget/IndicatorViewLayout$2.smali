.class Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmEnable(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    .line 208
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setCurrentItem(IZ)V

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmPreSelectedTabIndex(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)I

    move-result p0

    invoke-interface {v1, p1, v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_37
    :goto_37
    return-void
.end method
