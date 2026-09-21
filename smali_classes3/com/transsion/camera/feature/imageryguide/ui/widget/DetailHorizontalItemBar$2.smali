.class Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 269
    const-string p1, "Guide_ItemView"

    const-string v0, "onLongPressed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmType(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;->onLongPressed()Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$2;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->handleSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
