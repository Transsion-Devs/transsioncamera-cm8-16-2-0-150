.class Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 746
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 749
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 751
    const-string p2, "key_zoom_limit_monitor"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->-$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_3d

    .line 755
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->-$$Nest$fputmIsScaleZooming(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Z)V

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    :cond_3d
    :goto_3d
    return-void
.end method
