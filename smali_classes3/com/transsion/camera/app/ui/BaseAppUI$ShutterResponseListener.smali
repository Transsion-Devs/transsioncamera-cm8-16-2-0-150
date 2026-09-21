.class Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutterResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 1226
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .registers 1

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 1230
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    return p2

    .line 1233
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return p2
.end method

.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 3

    .line 1239
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    return p2

    .line 1242
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return p2
.end method

.method public onShutterUp(I)V
    .registers 2

    return-void
.end method
