.class Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoActivityListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 2176
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onGotoActivity(Landroid/content/Intent;I)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_23

    :cond_3
    const/16 v0, 0x1000

    if-ne v0, p2, :cond_e

    .line 2182
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v1, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-eqz v1, :cond_e

    goto :goto_23

    :cond_e
    const/16 v1, 0x1001

    if-ne v1, p2, :cond_19

    .line 2185
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v2, v2, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-eqz v2, :cond_19

    goto :goto_23

    :cond_19
    const/16 v2, 0x1002

    if-ne v2, p2, :cond_24

    .line 2186
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v3, v3, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGoPro:Z

    if-eqz v3, :cond_24

    :goto_23
    return-void

    .line 2189
    :cond_24
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v3}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_32

    const v4, 0x10008000

    .line 2191
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2193
    :cond_32
    const-string v4, "isSecureCamera"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p2, v3, :cond_5f

    if-ne v0, p2, :cond_4d

    .line 2196
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2197
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v4, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 2198
    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateRingScreenLightState()V

    :cond_4d
    if-ne v1, p2, :cond_53

    .line 2201
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v4, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    :cond_53
    if-ne v2, p2, :cond_59

    .line 2204
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v4, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGoPro:Z

    .line 2206
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_64

    .line 2208
    :cond_5f
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2210
    :goto_64
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    const/4 p1, 0x0

    .line 2211
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onGotoActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 2219
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
