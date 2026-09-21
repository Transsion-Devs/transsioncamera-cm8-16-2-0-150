.class Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSwitchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 4285
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onCameraSwitch(ZLjava/lang/String;)V
    .registers 5

    .line 4288
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmCameraSwitchListener(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object p2

    if-eqz p2, :cond_2a

    .line 4289
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fputmSkipInteractiveUpdate(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    .line 4290
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fputmCameraSwitchFlag(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    .line 4291
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->shrinkTopBar()V

    .line 4292
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmCameraSwitchListener(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(ZLjava/lang/String;)V

    .line 4293
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fputmCameraSwitchFlag(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    :cond_2a
    return-void
.end method
