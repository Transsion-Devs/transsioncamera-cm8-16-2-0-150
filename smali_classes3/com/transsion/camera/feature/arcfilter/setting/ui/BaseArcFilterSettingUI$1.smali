.class Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;Landroid/os/Looper;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$1;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    return-void

    .line 62
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$1;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateFilterValueToUI(Ljava/lang/String;)V

    return-void
.end method
