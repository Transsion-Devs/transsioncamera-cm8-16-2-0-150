.class Lcom/transsion/camera/app/ui/HintUIHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/HintUIHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/HintUIHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/HintUIHolder;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder$1;->this$0:Lcom/transsion/camera/app/ui/HintUIHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 61
    invoke-static {}, Lcom/transsion/camera/app/ui/HintUIHolder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged: absoluteRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder$1;->this$0:Lcom/transsion/camera/app/ui/HintUIHolder;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/HintUIHolder;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/app/ui/HintUIHolder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder$1;->this$0:Lcom/transsion/camera/app/ui/HintUIHolder;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/HintUIHolder;->-$$Nest$fgetmHintUI(Lcom/transsion/camera/app/ui/HintUIHolder;)Lcom/transsion/camera/app/ui/AbstractHintUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder$1;->this$0:Lcom/transsion/camera/app/ui/HintUIHolder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/HintUIHolder;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/app/ui/HintUIHolder;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method
