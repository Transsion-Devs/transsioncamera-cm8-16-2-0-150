.class Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType$1;->this$1:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType$1;->this$1:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
