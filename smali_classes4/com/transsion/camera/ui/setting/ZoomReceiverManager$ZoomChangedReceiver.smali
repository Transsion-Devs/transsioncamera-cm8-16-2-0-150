.class Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/ZoomReceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangedReceiver"
.end annotation


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;


# direct methods
.method public static synthetic $r8$lambda$AB-_CbHN5qWaFWWm__3pT4stGaU(IILcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;)V
    .registers 3

    .line 75
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;->onValueChanged(II)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;->this$0:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 61
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ZoomChangedReceiver"

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;Lcom/transsion/camera/ui/setting/ZoomReceiverManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 66
    const-string v0, "com.transsion.camera.action.zoomchanged"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 67
    const-string p1, "zoom_value"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 68
    const-string v1, "zoom_time"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, v0, :cond_33

    if-gtz p2, :cond_20

    goto :goto_33

    .line 75
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;->this$0:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->-$$Nest$fgetmListener(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;)Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 71
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive receivedExpectedValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_51
    return-void
.end method
