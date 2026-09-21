.class Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
