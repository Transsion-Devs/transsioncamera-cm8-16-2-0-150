.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmBackgroundService(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IBackgroundController;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmBackgroundService(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IBackgroundController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundController;->setScreenState(I)V

    return-void

    .line 184
    :cond_37
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmBackgroundService(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IBackgroundController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/taps/IBackgroundController;->setScreenState(I)V

    :cond_49
    return-void
.end method
