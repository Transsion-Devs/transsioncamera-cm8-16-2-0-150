.class Lcom/transsion/camera/app/CameraApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraApplication;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/transsion/camera/app/CameraApplication$2;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 523
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v1, :cond_2a

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$2;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$smgetUid(Landroid/content/Context;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 526
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string v0, "CameraApplication package data cleared, exit camera process!"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 527
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/FeatureSupport;->updateDeveloperMode(Landroid/content/Context;Z)V

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$2;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mclearDataStore(Lcom/transsion/camera/app/CameraApplication;Landroid/content/Context;)V

    .line 529
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Runtime;->exit(I)V

    :cond_2a
    return-void
.end method
