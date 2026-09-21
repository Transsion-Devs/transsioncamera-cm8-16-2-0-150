.class Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;


# direct methods
.method public static synthetic $r8$lambda$00rbFl7WRYn4oihS_daXLUVxmUE(Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->lambda$onStatusChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;->updateHighLightShow()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 219
    const-string v0, "key_low_light_to_rear_cam"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    iget-boolean p1, p1, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;->mRearCamLowLight:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_28

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;->mRearCamLowLight:Z

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;->access$000(Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 216
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
