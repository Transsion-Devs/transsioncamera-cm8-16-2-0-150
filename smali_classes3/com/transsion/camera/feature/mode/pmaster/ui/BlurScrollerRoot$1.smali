.class Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurIcon(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_19

    .line 180
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result p1

    if-eqz p1, :cond_1a

    :goto_19
    return-void

    :cond_1a
    const-wide/16 v0, 0xfa

    .line 184
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 185
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "fast click, return !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmIsBlurOn(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetClosedReasonKey(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_44

    const/4 p1, 0x0

    goto :goto_46

    .line 190
    :cond_44
    const-string p1, "closed_reason_user"

    :goto_46
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    .line 191
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetCameraFacingScope(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->onBlurButtonSwitch(Z)V

    return-void
.end method
