.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 2

    .line 1382
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1382
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1385
    const-string v0, "key_instant_zoom_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1386
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "value_instant_zoom_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2b

    const-string/jumbo p1, "value_instant_zoom_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_45

    .line 1388
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hide(Z)V

    .line 1389
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fputmInstantZoomShow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V

    return-void

    .line 1393
    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fputmInstantZoomShow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V

    .line 1394
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmZoomScaling(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmIsPopSettingShow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 1395
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mshow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    :cond_45
    :goto_45
    return-void
.end method
