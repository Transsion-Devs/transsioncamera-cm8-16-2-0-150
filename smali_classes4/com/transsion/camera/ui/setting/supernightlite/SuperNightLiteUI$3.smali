.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 2

    .line 850
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyNextCapture()V
    .registers 2

    .line 853
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$3;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
