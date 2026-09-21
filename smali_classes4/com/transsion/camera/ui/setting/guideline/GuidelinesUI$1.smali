.class Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;->this$0:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 213
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 216
    const-string v0, "key_guidelines"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;->this$0:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;

    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->-$$Nest$mshowOrHideGuideLinesInThread(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;ZZ)V

    :cond_14
    return-void
.end method
