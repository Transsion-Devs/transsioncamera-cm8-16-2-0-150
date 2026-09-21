.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method public static synthetic $r8$lambda$c5vz8iRlLIu6k6xpp2gF7mk69Kg(Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->lambda$onStatusChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 2

    .line 1653
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .registers 7

    .line 1683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mdoUpdatePreviewLayout(Lcom/transsion/camera/app/ui/AbstractPreviewUI;IZZD)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1653
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_d8

    goto :goto_2d

    :sswitch_d
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    packed-switch v2, :pswitch_data_e6

    .line 1692
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, " ignore the unneeded Key directly"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1689
    :pswitch_3a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fputmTimerStatus(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Ljava/lang/String;)V

    return-void

    .line 1677
    :pswitch_40
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_FOLD_SWITCH_PREVIEW, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenFormType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1678
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fputmSwitchPreviewValue(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Ljava/lang/String;)V

    .line 1679
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_86

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_86

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_d6

    .line 1682
    :cond_86
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1659
    :pswitch_93
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxSurfaceModeSupport(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_c1

    .line 1660
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxSurfaceShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 1661
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p1, :cond_b6

    .line 1662
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    sget-object p2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p1, p2, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    .line 1664
    :cond_b6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fputmAuxSurfaceShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V

    .line 1665
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    .line 1669
    :cond_c1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateShowZoomValue(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    if-eqz p2, :cond_d6

    .line 1671
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fputmZoomValue(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V

    .line 1672
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateAuxPreviewByZoom(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_d6
    return-void

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x43305133 -> :sswitch_23
        -0x341f2c25 -> :sswitch_18
        0x31f2225f -> :sswitch_d
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_93
        :pswitch_40
        :pswitch_3a
    .end packed-switch
.end method
