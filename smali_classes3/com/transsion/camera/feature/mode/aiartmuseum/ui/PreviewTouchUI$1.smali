.class Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;


# direct methods
.method public static synthetic $r8$lambda$0TRlLFw2YBt9SHY_JvyFAJ4Y1gQ(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->lambda$onRelativePreviewRectChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$N-tldIlkXFDGl4ZopSIzx6yRtZc(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->lambda$onAbsolutePreviewRectChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAbsolutePreviewRectChanged$0()V
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$mupdateLayout(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V

    return-void
.end method

.method private synthetic lambda$onRelativePreviewRectChanged$1()V
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$mupdateLayout(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 82
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbsolutePreviewRectChanged absoluteRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_49

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_49

    .line 88
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 84
    :cond_49
    :goto_49
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAbsolutePreviewRectChanged mTouchRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 95
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged relativeRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_49

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_49

    .line 101
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 97
    :cond_49
    :goto_49
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRelativePreviewRectChanged mTouchRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
