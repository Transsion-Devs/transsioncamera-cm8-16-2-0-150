.class Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 452
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 455
    const-string p2, "key_zoom_limit_monitor"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->-$$Nest$fgetmVisibility(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)I

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_26

    .line 459
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->-$$Nest$fputmIsZooming(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;Z)V

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->-$$Nest$fgetmTouchCallback(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    :cond_26
    :goto_26
    return-void
.end method
