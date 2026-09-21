.class Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 357
    const-string v0, "continuous_shot_light_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->-$$Nest$fgetmIsContinuousShot(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_24

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->-$$Nest$fputmIsContinuousShot(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Z)V

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSelf()V

    :cond_24
    return-void
.end method
