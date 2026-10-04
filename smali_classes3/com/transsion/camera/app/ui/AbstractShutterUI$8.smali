.class Lcom/transsion/camera/app/ui/AbstractShutterUI$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method public static synthetic $r8$lambda$M9NJIlUffFutoj-KDCtJppeeQVw(Lcom/transsion/camera/app/ui/AbstractShutterUI$8;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->lambda$onStatusChanged$0(Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 1589
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Z)V
    .registers 2

    .line 1598
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1589
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1592
    const-string v0, "key_smooth_zoom_ui5"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    .line 1593
    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1594
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1595
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmLastInSmoothZoom(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result p2

    if-eq p2, p1, :cond_73

    .line 1596
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmLastInSmoothZoom(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    .line 1597
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusChanged, mLastInSmoothZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmLastInSmoothZoom(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentModeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1598
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI$8$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI$8;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1600
    :cond_62
    const-string v0, "key_focal_length_zoom_state"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 1601
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmFocalLengthZoomSate(Lcom/transsion/camera/app/ui/AbstractShutterUI;I)V

    :cond_73
    return-void
.end method
