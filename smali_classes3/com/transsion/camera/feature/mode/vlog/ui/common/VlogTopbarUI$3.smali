.class Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$3;
.super Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V
    .registers 2

    .line 867
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 870
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->-$$Nest$fgetmTopItemClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;->onDraftBoxEntryClick()V

    :cond_f
    return-void
.end method
