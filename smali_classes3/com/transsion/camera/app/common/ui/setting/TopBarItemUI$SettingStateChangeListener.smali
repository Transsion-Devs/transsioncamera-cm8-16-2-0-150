.class Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .registers 2

    .line 1464
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1464
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;->onStatusChanged(Ljava/lang/String;[I)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;[I)V
    .registers 4

    .line 1467
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1468
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
