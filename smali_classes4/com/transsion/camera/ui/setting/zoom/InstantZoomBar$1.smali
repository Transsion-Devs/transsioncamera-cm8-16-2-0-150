.class Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmZoomRatio(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 253
    :goto_b
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 254
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    .line 255
    iget-object v3, v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    if-eqz v3, :cond_32

    .line 257
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {v2, v1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$fputmSelectedIndex(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;I)V

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 260
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->-$$Nest$mdoInvalidate(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V

    return-void
.end method
