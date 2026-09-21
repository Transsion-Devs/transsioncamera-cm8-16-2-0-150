.class Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V
    .registers 2

    .line 1095
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1095
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1098
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1099
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
