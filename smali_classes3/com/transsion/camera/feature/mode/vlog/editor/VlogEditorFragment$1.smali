.class Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    # getter for: Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->access$000(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2d
    return-void
.end method
