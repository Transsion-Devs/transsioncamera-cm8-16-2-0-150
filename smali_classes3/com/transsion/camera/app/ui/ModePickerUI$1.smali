.class Lcom/transsion/camera/app/ui/ModePickerUI$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Ljava/lang/String;)V
    .registers 3

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmUpdateArrowStateLock(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 344
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmSVGAParser(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/opensource/svgaplayer/SVGAParser;)V

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmUpdateArrowState(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    const/4 v1, 0x0

    .line 346
    :goto_24
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmUpdateArrowState(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 347
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmUpdateArrowState(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;

    .line 348
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/ui/ModePickerUI$1$1;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/app/ui/ModePickerUI$1$1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI$1;Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :catchall_4d
    move-exception p0

    goto :goto_5a

    .line 355
    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmUpdateArrowState(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 357
    :cond_58
    monitor-exit v0

    return-void

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_4d

    throw p0
.end method
