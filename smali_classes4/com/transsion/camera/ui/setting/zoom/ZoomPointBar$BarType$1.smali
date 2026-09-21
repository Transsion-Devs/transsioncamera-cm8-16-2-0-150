.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;)V
    .registers 2

    .line 1067
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectedIndex(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    const/4 v1, 0x0

    .line 1071
    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    .line 1072
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
