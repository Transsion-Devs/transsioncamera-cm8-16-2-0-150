.class Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/asd/AsdUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 596
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 599
    const-string v0, "key_fake_asd_camera_status"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fputmWarningType(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)V

    return-void

    .line 601
    :cond_16
    const-string v0, "key_macro_status"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 602
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_55

    .line 609
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fputmIsMacroEnable(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V

    return-void

    .line 604
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fputmIsMacroEnable(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAsdUI:Z

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->-$$Nest$mhideAsdResult(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V

    :cond_55
    :goto_55
    return-void
.end method
